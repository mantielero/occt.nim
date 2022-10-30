# PROVIDES: ValueType TColStdMapIteratorOfPackedMapOfInteger
# DEPENDS:  NCollectionArray1[TCollectionAsciiString]  NCollectionArray1[bool]  NCollectionArray1[StandardByte]    NCollectionArray1[cchar]    NCollectionArray1[TCollectionExtendedString]  NCollectionArray1[cint]  NCollectionList[cint]    NCollectionArray1[TColStdListOfInteger]       StandardTransient  Handle[TColStdHPackedMapOfInteger]  NCollectionArray1[Handle[StandardTransient]]  NCollectionArray2[bool]  NCollectionArray2[cchar]  NCollectionArray2[cint]  NCollectionArray2[cfloat]      NCollectionArray2[Handle[StandardTransient]]  NCollectionDataMap[TCollectionAsciiString,  NCollectionDataMapIterator[  NCollectionDefaultHasher[cint]  NCollectionDataMap[cint, cint,  NCollectionDataMapIterator[cint, cint,  NCollectionDataMap[cint,  NCollectionDataMapIterator[cint,  NCollectionDataMap[cint, cfloat,  NCollectionDataMapIterator[cint, cfloat,  NCollectionDataMap[cint,  NCollectionDataMapIterator[cint,  NCollectionDataMap[TCollectionExtendedString,  NCollectionDataMapIterator[  NCollectionDefaultHasher[Handle[StandardTransient]]  NCollectionDataMap[  NCollectionDataMapIterator[  NCollectionIndexedDataMap[  NCollectionIndexedDataMap[  NCollectionIndexedMap[cint, TColStdMapIntegerHasher]  NCollectionDefaultHasher[cfloat]  NCollectionIndexedMap[cfloat, TColStdMapRealHasher]  NCollectionIndexedMap[Handle[StandardTransient],  NCollectionList[TCollectionAsciiString]  NCollectionTListIterator[TCollectionAsciiString]  NCollectionTListIterator[cint]  NCollectionList[cfloat]  NCollectionTListIterator[cfloat]  NCollectionList[Handle[StandardTransient]]  NCollectionTListIterator[Handle[StandardTransient]]  NCollectionMap[TCollectionAsciiString,  NCollectionMap[TCollectionAsciiString,  NCollectionMap[cint, TColStdMapIntegerHasher]  NCollectionMap[cint, TColStdMapIntegerHasher]  NCollectionMap[cfloat, TColStdMapRealHasher]  NCollectionMap[cfloat, TColStdMapRealHasher]  NCollectionMap[Handle[StandardTransient],  NCollectionMap[Handle[StandardTransient],  NCollectionSequence[pointer]  NCollectionSequence[TCollectionAsciiString]  NCollectionSequence[bool]  NCollectionSequence[TCollectionExtendedString]  NCollectionSequence[  NCollectionSequence[  NCollectionSequence[cint]  NCollectionSequence[cfloat]  NCollectionSequence[Handle[StandardTransient]]  NCollectionArray1[cfloat] TColStdArray1OfAsciiString TColStdArray1OfBoolean TColStdArray1OfByte TColStdArray1OfCharacter TColStdArray1OfExtendedString TColStdArray1OfInteger TColStdArray1OfListOfInteger TColStdArray1OfReal TColStdArray1OfTransient TColStdArray2OfBoolean TColStdArray2OfCharacter TColStdArray2OfInteger TColStdArray2OfReal TColStdArray2OfTransient TColStdSequenceOfAsciiString TColStdSequenceOfExtendedString TColStdSequenceOfHAsciiString TColStdSequenceOfHExtendedString TColStdSequenceOfInteger TColStdSequenceOfReal TColStdSequenceOfTransient TCollectionBasicMap TCollectionBasicMapIterator

import ../tcollection/tcollection_types
import ../ncollection/ncollection_types
import ../standard/standard_types
type
  ValueType* = object 

  TColStdMapIteratorOfPackedMapOfInteger* {.importcpp:"TColStd_PackedMapOfInteger::Iterator".} = object

  TColStdArray1OfAsciiString* = NCollectionArray1[TCollectionAsciiString]

  TColStdArray1OfBoolean* = NCollectionArray1[bool]

  TColStdArray1OfByte* = NCollectionArray1[StandardByte]  

  TColStdArray1OfCharacter* = NCollectionArray1[cchar]  

  TColStdArray1OfExtendedString* = NCollectionArray1[TCollectionExtendedString]

  TColStdArray1OfInteger* = NCollectionArray1[cint]

  TColStdListOfInteger* = NCollectionList[cint]  

  TColStdArray1OfListOfInteger* = NCollectionArray1[TColStdListOfInteger]      

  TColStdHPackedMapOfInteger* {.importcpp: "TColStd_HPackedMapOfInteger",
                               header: "TColStd_HPackedMapOfInteger.hxx", bycopy.} = object of StandardTransient

  HandleTColStdHPackedMapOfInteger* = Handle[TColStdHPackedMapOfInteger]

  TColStdArray1OfTransient* = NCollectionArray1[Handle[StandardTransient]]

  TColStdArray2OfBoolean* = NCollectionArray2[bool]

  TColStdArray2OfCharacter* = NCollectionArray2[cchar]

  TColStdArray2OfInteger* = NCollectionArray2[cint]

  TColStdArray2OfReal* = NCollectionArray2[cfloat]    

  TColStdArray2OfTransient* = NCollectionArray2[Handle[StandardTransient]]

  TColStdDataMapOfAsciiStringInteger* = NCollectionDataMap[TCollectionAsciiString,
      cint, TCollectionAsciiString]

  TColStdDataMapIteratorOfDataMapOfAsciiStringInteger* = NCollectionDataMapIterator[
      TCollectionAsciiString, cint, TCollectionAsciiString]

  TColStdMapIntegerHasher* = NCollectionDefaultHasher[cint]

  TColStdDataMapOfIntegerInteger* = NCollectionDataMap[cint, cint,
      TColStdMapIntegerHasher]

  TColStdDataMapIteratorOfDataMapOfIntegerInteger* = NCollectionDataMapIterator[cint, cint,
      TColStdMapIntegerHasher]

  TColStdDataMapOfIntegerListOfInteger* = NCollectionDataMap[cint,
      TColStdListOfInteger, TColStdMapIntegerHasher]

  TColStdDataMapIteratorOfDataMapOfIntegerListOfInteger* = NCollectionDataMapIterator[cint,
      TColStdListOfInteger, TColStdMapIntegerHasher]

  TColStdDataMapOfIntegerReal* = NCollectionDataMap[cint, cfloat,
      TColStdMapIntegerHasher]

  TColStdDataMapIteratorOfDataMapOfIntegerReal* = NCollectionDataMapIterator[cint, cfloat,
      TColStdMapIntegerHasher]

  TColStdDataMapOfIntegerTransient* = NCollectionDataMap[cint,
      Handle[StandardTransient], TColStdMapIntegerHasher]

  TColStdDataMapIteratorOfDataMapOfIntegerTransient* = NCollectionDataMapIterator[cint,
      Handle[StandardTransient], TColStdMapIntegerHasher]

  TColStdDataMapOfStringInteger* = NCollectionDataMap[TCollectionExtendedString,
      cint, TCollectionExtendedString]

  TColStdDataMapIteratorOfDataMapOfStringInteger* = NCollectionDataMapIterator[
      TCollectionExtendedString, cint, TCollectionExtendedString]

  TColStdMapTransientHasher* = NCollectionDefaultHasher[Handle[StandardTransient]]

  TColStdDataMapOfTransientTransient* = NCollectionDataMap[
      Handle[StandardTransient], Handle[StandardTransient],
      TColStdMapTransientHasher]

  TColStdDataMapIteratorOfDataMapOfTransientTransient* = NCollectionDataMapIterator[
      Handle[StandardTransient], Handle[StandardTransient],
      TColStdMapTransientHasher]

  TColStdIndexedDataMapOfStringString* = NCollectionIndexedDataMap[
      TCollectionAsciiString, TCollectionAsciiString, TCollectionAsciiString]

  TColStdIndexedDataMapOfTransientTransient* = NCollectionIndexedDataMap[
      Handle[StandardTransient], Handle[StandardTransient],
      TColStdMapTransientHasher]

  TColStdIndexedMapOfInteger* = NCollectionIndexedMap[cint, TColStdMapIntegerHasher]

  TColStdMapRealHasher* = NCollectionDefaultHasher[cfloat]

  TColStdIndexedMapOfReal* = NCollectionIndexedMap[cfloat, TColStdMapRealHasher]

  TColStdIndexedMapOfTransient* = NCollectionIndexedMap[Handle[StandardTransient],
      TColStdMapTransientHasher]

  TColStdListOfAsciiString* = NCollectionList[TCollectionAsciiString]

  TColStdListIteratorOfListOfAsciiString* = NCollectionTListIterator[TCollectionAsciiString]

  TColStdListIteratorOfListOfInteger* = NCollectionTListIterator[cint]

  TColStdListOfReal* = NCollectionList[cfloat]

  TColStdListIteratorOfListOfReal* = NCollectionTListIterator[cfloat]

  TColStdListOfTransient* = NCollectionList[Handle[StandardTransient]]

  TColStdListIteratorOfListOfTransient* = NCollectionTListIterator[Handle[StandardTransient]]

  TColStdMapOfAsciiString* = NCollectionMap[TCollectionAsciiString,
      TCollectionAsciiString]

  TColStdMapIteratorOfMapOfAsciiString* = NCollectionMap[TCollectionAsciiString,
      TCollectionAsciiString]

  TColStdMapOfInteger* = NCollectionMap[cint, TColStdMapIntegerHasher]

  TColStdMapIteratorOfMapOfInteger* = NCollectionMap[cint, TColStdMapIntegerHasher]

  TColStdMapOfReal* = NCollectionMap[cfloat, TColStdMapRealHasher]

  TColStdMapIteratorOfMapOfReal* = NCollectionMap[cfloat, TColStdMapRealHasher]

  TColStdMapOfTransient* = NCollectionMap[Handle[StandardTransient],
                                        TColStdMapTransientHasher]

  TColStdMapIteratorOfMapOfTransient* = NCollectionMap[Handle[StandardTransient],
      TColStdMapTransientHasher]

  TColStdSequenceOfAddress* = NCollectionSequence[pointer]

  TColStdSequenceOfAsciiString* = NCollectionSequence[TCollectionAsciiString]

  TColStdSequenceOfBoolean* = NCollectionSequence[bool]

  TColStdSequenceOfExtendedString* = NCollectionSequence[TCollectionExtendedString]

  TColStdSequenceOfHAsciiString* = NCollectionSequence[
      Handle[TCollectionHAsciiString]]

  TColStdSequenceOfHExtendedString* = NCollectionSequence[
      Handle[TCollectionHExtendedString]]

  TColStdSequenceOfInteger* = NCollectionSequence[cint]

  TColStdSequenceOfReal* = NCollectionSequence[cfloat]

  TColStdSequenceOfTransient* = NCollectionSequence[Handle[StandardTransient]]

  TColStdArray1OfReal* = NCollectionArray1[cfloat]

  TColStdHArray1OfAsciiString* {.importcpp: "TColStd_HArray1OfAsciiString",
                                header: "TColStd_HArray1OfAsciiString.hxx", bycopy.} = object of TColStdArray1OfAsciiString

  TColStdHArray1OfBoolean* {.importcpp: "TColStd_HArray1OfBoolean",
                            header: "TColStd_HArray1OfBoolean.hxx", bycopy.} = object of TColStdArray1OfBoolean

  TColStdHArray1OfByte* {.importcpp: "TColStd_HArray1OfByte",
                         header: "TColStd_HArray1OfByte.hxx", bycopy.} = object of TColStdArray1OfByte

  TColStdHArray1OfCharacter* {.importcpp: "TColStd_HArray1OfCharacter",
                              header: "TColStd_HArray1OfCharacter.hxx", bycopy.} = object of TColStdArray1OfCharacter

  TColStdHArray1OfExtendedString* {.importcpp: "TColStd_HArray1OfExtendedString", header: "TColStd_HArray1OfExtendedString.hxx",
                                   bycopy.} = object of TColStdArray1OfExtendedString

  TColStdHArray1OfInteger* {.importcpp: "TColStd_HArray1OfInteger",
                            header: "TColStd_HArray1OfInteger.hxx", bycopy.} = object of TColStdArray1OfInteger

  TColStdHArray1OfListOfInteger* {.importcpp: "TColStd_HArray1OfListOfInteger",
                                  header: "TColStd_HArray1OfListOfInteger.hxx",
                                  bycopy.} = object of TColStdArray1OfListOfInteger

  TColStdHArray1OfReal* {.importcpp: "TColStd_HArray1OfReal",
                         header: "TColStd_HArray1OfReal.hxx", bycopy.} = object of TColStdArray1OfReal

  TColStdHArray1OfTransient* {.importcpp: "TColStd_HArray1OfTransient",
                              header: "TColStd_HArray1OfTransient.hxx", bycopy.} = object of TColStdArray1OfTransient

  TColStdHArray2OfBoolean* {.importcpp: "TColStd_HArray2OfBoolean",
                            header: "TColStd_HArray2OfBoolean.hxx", bycopy.} = object of TColStdArray2OfBoolean

  TColStdHArray2OfCharacter* {.importcpp: "TColStd_HArray2OfCharacter",
                              header: "TColStd_HArray2OfCharacter.hxx", bycopy.} = object of TColStdArray2OfCharacter

  TColStdHArray2OfInteger* {.importcpp: "TColStd_HArray2OfInteger",
                            header: "TColStd_HArray2OfInteger.hxx", bycopy.} = object of TColStdArray2OfInteger

  TColStdHArray2OfReal* {.importcpp: "TColStd_HArray2OfReal",
                         header: "TColStd_HArray2OfReal.hxx", bycopy.} = object of TColStdArray2OfReal

  TColStdHArray2OfTransient* {.importcpp: "TColStd_HArray2OfTransient",
                              header: "TColStd_HArray2OfTransient.hxx", bycopy.} = object of TColStdArray2OfTransient

  TColStdHSequenceOfAsciiString* {.importcpp: "TColStd_HSequenceOfAsciiString",
                                  header: "TColStd_HSequenceOfAsciiString.hxx",
                                  bycopy.} = object of TColStdSequenceOfAsciiString

  TColStdHSequenceOfExtendedString* {.importcpp: "TColStd_HSequenceOfExtendedString", header: "TColStd_HSequenceOfExtendedString.hxx",
                                     bycopy.} = object of TColStdSequenceOfExtendedString

  TColStdHSequenceOfHAsciiString* {.importcpp: "TColStd_HSequenceOfHAsciiString", header: "TColStd_HSequenceOfHAsciiString.hxx",
                                   bycopy.} = object of TColStdSequenceOfHAsciiString

  TColStdHSequenceOfHExtendedString* {.importcpp: "TColStd_HSequenceOfHExtendedString", header: "TColStd_HSequenceOfHExtendedString.hxx",
                                      bycopy.} = object of TColStdSequenceOfHExtendedString

  TColStdHSequenceOfInteger* {.importcpp: "TColStd_HSequenceOfInteger",
                              header: "TColStd_HSequenceOfInteger.hxx", bycopy.} = object of TColStdSequenceOfInteger

  TColStdHSequenceOfReal* {.importcpp: "TColStd_HSequenceOfReal",
                           header: "TColStd_HSequenceOfReal.hxx", bycopy.} = object of TColStdSequenceOfReal

  TColStdHSequenceOfTransient* {.importcpp: "TColStd_HSequenceOfTransient",
                                header: "TColStd_HSequenceOfTransient.hxx", bycopy.} = object of TColStdSequenceOfTransient
                                

  TColStdPackedMapOfInteger* {.importcpp: "TColStd_PackedMapOfInteger",
                              header: "TColStd_PackedMapOfInteger.hxx", bycopy.} = object of TCollectionBasicMap 

                              #header: "TColStd_PackedMapOfInteger.hxx", bycopy.} = object of TCollectionBasicMap 
  TColStdPackedMapOfIntegerIterator* {.importcpp: "TColStd_PackedMapOfInteger::Iterator",
                                      header: "TColStd_PackedMapOfInteger.hxx",
                                      bycopy.} = object of TCollectionBasicMapIterator 


