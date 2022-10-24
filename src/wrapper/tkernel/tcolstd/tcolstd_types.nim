# PROVIDES: HandleTColStdHPackedMapOfInteger
# DEPENDS: TColStdArray1OfAsciiString TColStdArray1OfBoolean TColStdArray1OfByte TColStdArray1OfCharacter TColStdArray1OfExtendedString TColStdArray1OfInteger TColStdArray1OfListOfInteger TColStdArray1OfReal TColStdArray1OfTransient TColStdArray2OfBoolean TColStdArray2OfCharacter TColStdArray2OfInteger TColStdArray2OfReal TColStdArray2OfTransient StandardTransient TColStdSequenceOfAsciiString TColStdSequenceOfExtendedString TColStdSequenceOfHAsciiString TColStdSequenceOfHExtendedString TColStdSequenceOfInteger TColStdSequenceOfReal TColStdSequenceOfTransient TCollectionBasicMapIterator

type
  HandleTColStdHPackedMapOfInteger* = Handle[TColStdHPackedMapOfInteger]
## ! Extension of TColStd_PackedMapOfInteger class to be manipulated by handle.

type
  TColStdHArray1OfAsciiString* {.importcpp: "TColStd_HArray1OfAsciiString",
                                header: "TColStd_HArray1OfAsciiString.hxx", bycopy.} = object of TColStdArray1OfAsciiString

type
  TColStdHArray1OfBoolean* {.importcpp: "TColStd_HArray1OfBoolean",
                            header: "TColStd_HArray1OfBoolean.hxx", bycopy.} = object of TColStdArray1OfBoolean

type
  TColStdHArray1OfByte* {.importcpp: "TColStd_HArray1OfByte",
                         header: "TColStd_HArray1OfByte.hxx", bycopy.} = object of TColStdArray1OfByte

type
  TColStdHArray1OfCharacter* {.importcpp: "TColStd_HArray1OfCharacter",
                              header: "TColStd_HArray1OfCharacter.hxx", bycopy.} = object of TColStdArray1OfCharacter

type
  TColStdHArray1OfExtendedString* {.importcpp: "TColStd_HArray1OfExtendedString", header: "TColStd_HArray1OfExtendedString.hxx",
                                   bycopy.} = object of TColStdArray1OfExtendedString

type
  TColStdHArray1OfInteger* {.importcpp: "TColStd_HArray1OfInteger",
                            header: "TColStd_HArray1OfInteger.hxx", bycopy.} = object of TColStdArray1OfInteger

type
  TColStdHArray1OfListOfInteger* {.importcpp: "TColStd_HArray1OfListOfInteger",
                                  header: "TColStd_HArray1OfListOfInteger.hxx",
                                  bycopy.} = object of TColStdArray1OfListOfInteger

type
  TColStdHArray1OfReal* {.importcpp: "TColStd_HArray1OfReal",
                         header: "TColStd_HArray1OfReal.hxx", bycopy.} = object of TColStdArray1OfReal

type
  TColStdHArray1OfTransient* {.importcpp: "TColStd_HArray1OfTransient",
                              header: "TColStd_HArray1OfTransient.hxx", bycopy.} = object of TColStdArray1OfTransient

type
  TColStdHArray2OfBoolean* {.importcpp: "TColStd_HArray2OfBoolean",
                            header: "TColStd_HArray2OfBoolean.hxx", bycopy.} = object of TColStdArray2OfBoolean

type
  TColStdHArray2OfCharacter* {.importcpp: "TColStd_HArray2OfCharacter",
                              header: "TColStd_HArray2OfCharacter.hxx", bycopy.} = object of TColStdArray2OfCharacter

type
  TColStdHArray2OfInteger* {.importcpp: "TColStd_HArray2OfInteger",
                            header: "TColStd_HArray2OfInteger.hxx", bycopy.} = object of TColStdArray2OfInteger

type
  TColStdHArray2OfReal* {.importcpp: "TColStd_HArray2OfReal",
                         header: "TColStd_HArray2OfReal.hxx", bycopy.} = object of TColStdArray2OfReal

type
  TColStdHArray2OfTransient* {.importcpp: "TColStd_HArray2OfTransient",
                              header: "TColStd_HArray2OfTransient.hxx", bycopy.} = object of TColStdArray2OfTransient

type
  TColStdHPackedMapOfInteger* {.importcpp: "TColStd_HPackedMapOfInteger",
                               header: "TColStd_HPackedMapOfInteger.hxx", bycopy.} = object of StandardTransient

type
  TColStdHSequenceOfAsciiString* {.importcpp: "TColStd_HSequenceOfAsciiString",
                                  header: "TColStd_HSequenceOfAsciiString.hxx",
                                  bycopy.} = object of TColStdSequenceOfAsciiString

type
  TColStdHSequenceOfExtendedString* {.importcpp: "TColStd_HSequenceOfExtendedString", header: "TColStd_HSequenceOfExtendedString.hxx",
                                     bycopy.} = object of TColStdSequenceOfExtendedString

type
  TColStdHSequenceOfHAsciiString* {.importcpp: "TColStd_HSequenceOfHAsciiString", header: "TColStd_HSequenceOfHAsciiString.hxx",
                                   bycopy.} = object of TColStdSequenceOfHAsciiString

type
  TColStdHSequenceOfHExtendedString* {.importcpp: "TColStd_HSequenceOfHExtendedString", header: "TColStd_HSequenceOfHExtendedString.hxx",
                                      bycopy.} = object of TColStdSequenceOfHExtendedString

type
  TColStdHSequenceOfInteger* {.importcpp: "TColStd_HSequenceOfInteger",
                              header: "TColStd_HSequenceOfInteger.hxx", bycopy.} = object of TColStdSequenceOfInteger

type
  TColStdHSequenceOfReal* {.importcpp: "TColStd_HSequenceOfReal",
                           header: "TColStd_HSequenceOfReal.hxx", bycopy.} = object of TColStdSequenceOfReal

type
  TColStdHSequenceOfTransient* {.importcpp: "TColStd_HSequenceOfTransient",
                                header: "TColStd_HSequenceOfTransient.hxx", bycopy.} = object of TColStdSequenceOfTransient

                                header: "TColStd_HSequenceOfTransient.hxx", bycopy.} = object of TColStdSequenceOfTransient
type
  TColStdPackedMapOfInteger* {.importcpp: "TColStd_PackedMapOfInteger",
                              header: "TColStd_PackedMapOfInteger.hxx", bycopy.} = object of TCollectionBasicMap ##  operators new and delete must be defined explicitly
                                                                                                          ##  since inherited ones are not accessible
                                                                                                          ## ! Iterator of class TColStd_PackedMapOfInteger.
                                                                                                          ## / Constructor
                                                                                                          ## !@name Boolean operations with maps as sets of integers
                                                                                                          ## !@{
                                                                                                          ## *
                                                                                                          ##  Sets this Map to be the result of union (aka addition, fuse, merge, boolean OR) operation between two given Maps.
                                                                                                          ##  The new Map contains the values that are contained either in the first map or in the second map or in both.
                                                                                                          ##  All previous contents of this Map is cleared. This map (result of the boolean operation) can also be passed as one of operands.
                                                                                                          ##
                                                                                                          ##  ---------- PROTECTED METHODS ----------
                                                                                                          ## ! Class implementing a block of 32 consecutive integer values as a node of a Map collection.
                                                                                                          ## ! The data are stored in 64 bits as:
                                                                                                          ## !  - bits  0 - 4 : (number of integers stored in the block) - 1;
                                                                                                          ## !  - bits  5 - 31: base address of the block of integers (low bits assumed 0)
                                                                                                          ## !  - bits 32 - 63: 32-bit field where each bit indicates the presence of the corresponding integer in the block.
                                                                                                          ## !                  Number of non-zero bits must be equal to the number expressed in bits 0-4.
  TColStdPackedMapOfIntegerIterator* {.importcpp: "TColStd_PackedMapOfInteger::Iterator",
                                      header: "TColStd_PackedMapOfInteger.hxx",
                                      bycopy.} = object of TCollectionBasicMapIterator ##
                                                                                  ## /
                                                                                  ## Empty
                                                                                  ## Constructor.
    ## !< all bits set above the iterated position
    ## !< Currently iterated key


