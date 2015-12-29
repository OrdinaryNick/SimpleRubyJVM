module OpCodes

  BYTE_NOP = 0
  BYTE_ACONST_NULL = 1 # (0X1)
  BYTE_ICONST_M1 = 2 # (0X2)
  BYTE_ICONST_0 = 3 # (0X3)
  BYTE_ICONST_1 = 4 # (0X4)
  BYTE_ICONST_2 = 5 # (0X5)
  BYTE_ICONST_3 = 6 # (0X6)
  BYTE_ICONST_4 = 7 # (0X7)
  BYTE_ICONST_5 = 8 # (0X8)
  BYTE_BIPUSH = 16 # (0X10)
  BYTE_SIPUSH = 17 # (0X11)
  BYTE_LCONST_0 = 9 # (0X9)
  BYTE_LCONST_1 = 10 # (0XA)
  BYTE_LDC = 18 # (0X12)
  BYTE_LDC2_W = 20 # (0X14)
  BYTE_ILOAD = 21 # (0X15)
  BYTE_LLOAD = 22 # (0X16)
  BYTE_ALOAD = 25 # (0X19)
  BYTE_ILOAD_0 = 26 # (0X1A)
  BYTE_ILOAD_1 = 27 # (0X1B)
  BYTE_ILOAD_2 = 28 # (0X1C)
  BYTE_ILOAD_3 = 29 # (0X1D)
  BYTE_LLOAD_0 = 30 # (0X1E)
  BYTE_LLOAD_1 = 31 # (0X1F)
  BYTE_LLOAD_2 = 32 # (0X20)
  BYTE_LLOAD_3 = 33 # (0X21)
  BYTE_FLOAD_0 = 34 # (0X22)
  BYTE_FLOAD_1 = 35 # (0X23)
  BYTE_FLOAD_2 = 36 # (0X24)
  BYTE_FLOAD_3 = 37 # (0X25)
  BYTE_ALOAD_0 = 42 # (0X2A)
  BYTE_ALOAD_1 = 43 # (0X2B)
  BYTE_ALOAD_2 = 44 # (0X2C)
  BYTE_ALOAD_3 = 45 # (0X2D)
  BYTE_IALOAD = 46 # (0X2E)
  BYTE_AALOAD = 50
  BYTE_ISTORE = 54 # (0X36)
  BYTE_ASTORE = 58 # (0X3A)
  BYTE_ISTORE_0 = 59 # (0X3B)
  BYTE_ISTORE_1 = 60 # (0X3C)
  BYTE_ISTORE_2 = 61 # (0X3D)
  BYTE_ISTORE_3 = 62 # (0X3E)
  BYTE_LSTORE_0 = 63 # (0X3F)
  BYTE_LSTORE_1 = 64 # (0X40)
  BYTE_LSTORE_2 = 65 # (0X41)
  BYTE_LSTORE_3 = 66 # (0X42)
  BYTE_FSTORE_0 = 67 # (0X43)
  BYTE_FSTORE_1 = 68 # (0X44)
  BYTE_FSTORE_2 = 69 # (0X45)
  BYTE_FSTORE_3 = 70 # (0X46)
  BYTE_ASTORE_0 = 75 # (0X4B)
  BYTE_ASTORE_1 = 76 # (0X4C)
  BYTE_ASTORE_2 = 77 # (0X4D)
  BYTE_ASTORE_3 = 78 # (0X4E)
  BYTE_IASTORE = 79 # (0X4F)
  BYTE_AASTORE = 83 # (0X53)
  BYTE_DUP = 89 # (0X59)
  BYTE_DUP_X1 = 90 # (0X5A)
  BYTE_DUP_X2 = 91 # (0X5B)
  BYTE_IADD = 96 # (0X60)
  BYTE_LADD = 97 # (0X61)
  BYTE_ISUB = 100 # (0X64)
  BYTE_IMUL = 104 # (0X68)
  BYTE_IINC = 132 # (0X84)
  BYTE_IFEQ = 153 # (0X99)
  BYTE_IFNE = 154 # (0X9A)
  BYTE_IFLT = 155 # (0X9B)
  BYTE_IFGE = 156 # (0X9C)
  BYTE_IFGT = 157 # (0X9D)
  BYTE_IFLE = 158 # (0X9E)
  BYTE_IF_ICMPEQ = 159 # (0X9F)
  BYTE_IF_ICMPNE = 160 # (0XA0)
  BYTE_IF_ICMPLT = 161 # (0XA1)
  BYTE_IF_ICMPGE = 162 # (0XA2)
  BYTE_IF_ICMPGT = 163 # (0XA3)
  BYTE_IF_ICMPLE = 164 # (0XA4)
  BYTE__GOTO = 167 # (0XA7)
  BYTE_IRETURN = 172 # (0XAC)
  BYTE__RETURN = 177 # (0XB1)
  BYTE_GETFIELD = 180 # (0XB4)
  BYTE_PUTFIELD = 181 # (0XB5)
  BYTE_INVOKEVIRTUAL = 182 # (0XB6)
  BYTE_INVOKESPECIAL = 183 # (0XB7)
  BYTE_INVOKESTATIC = 184
  BYTE__NEW = 187 # (0XBB)
  BYTE_NEWARRAY = 188 # (0XBC)
  BYTE_ANEWARRAY = 189 # (0XBD)
  BYTE_ATHROW = 191 # (0XBF)
  BYTE_CHECKCAST = 192 # (0XC0)
  BYTE_INSTANCEOF = 193 # (0XC1)
  BYTE_MONITORENTER = 194 # (0XC2)
  BYTE_MONITOREXIT = 195 # (0XC3)

end