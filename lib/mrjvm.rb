require 'mrjvm/version'
require 'mrjvm/class_file/java_class'
require 'mrjvm/heap/class_heap'
require 'mrjvm/heap/object_heap'
require 'mrjvm/heap/frame'
require 'mrjvm/execution_core'
require_relative 'mrjvm/garbage_collector/garbage_collector'
require_relative 'mrjvm/synchronization/synchronized_array'
require_relative 'mrjvm/heap/stack_variable'

# MRjvm is main module of our JVM.
module MRjvm
  DEBUG_STRING = '[DEBUG] '

  ##
  # Debug function if DEBUG is true.
  def self::debug(string)
    puts DEBUG_STRING + string + "\n" if DEBUG
  end

  ##
  # Entry point class.
  class MRjvm
    attr_accessor :op_size, :frame_size, :native_lib_path

    @@mutex = Mutex.new

    def self::mutex
      @@mutex
    end

    def initialize
      @op_size = 100
      @frame_size = 20
    end

    ##
    # Print class file to output.
    def print_file(file)
      reader = ClassFileReader.new(file)
      reader.parse_content
      puts reader.class_file
    end

    ##
    # Run file with class Main and function main.
    def run(file)
      class_heap = Heap::ClassHeap.new
      class_heap.native_lib_path = native_lib_path unless native_lib_path.nil?
      object_heap = Heap::ObjectHeap.new

      # Load entry point class.
      java_class = class_heap.load_class_from_file(file)
      # Load std classes in java/lang/.
      load_std_classes(class_heap)

      frame_stack = SynchronizedArray.new
      @frame_size.times do
        frame_stack.push(Heap::Frame.new)
      end
      Heap::Frame.op_stack = SynchronizedArray.new(@op_size, nil)

      method_index = java_class.get_method_index('main', '()V', true)
      fail StandardError, 'Class not contains static method main!' if method_index == -1

      frame_stack[0] = Heap::Frame.initialize_with_class_method(java_class, java_class.methods[method_index], 0) # No parameters
      start_frame = frame_stack[0]
      start_frame.locals[0] = Heap::StackVariable.new(Heap::VARIABLE_OBJECT, object_id)

      executing_core = ExecutionCore.new
      executing_core.class_heap = class_heap
      executing_core.object_heap = object_heap
      executing_core.fp = 0

      gc = GarbageCollector.new
      # Start garbage collector
      gc_thread = gc.run(object_heap, frame_stack, executing_core.fp, @@mutex)
      # Execute java code
      executing_core.execute(frame_stack)
      # Set stop attribute as true and wait for gc thread
      sleep 2
      gc.stop_gc = true
      #gc_thread.join
      puts object_heap
    end

    def load_std_classes(class_heap)
      class_heap.load_class('java/lang/Object')
      class_heap.load_class('java/lang/String')
      class_heap.load_class('java/lang/StringBuilder')
      class_heap.load_class('java/lang/System')
    end
  end
end
