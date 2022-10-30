# PROVIDES:
# DEPENDS:  Handle[TColStdHPackedMapOfInteger] TColStdArray1OfAsciiString TColStdArray1OfBoolean TColStdArray1OfByte TColStdArray1OfCharacter TColStdArray1OfExtendedString TColStdArray1OfInteger TColStdArray1OfListOfInteger TColStdArray1OfReal TColStdArray1OfTransient TColStdArray2OfBoolean TColStdArray2OfCharacter TColStdArray2OfInteger TColStdArray2OfReal TColStdArray2OfTransient StandardTransient TColStdSequenceOfAsciiString TColStdSequenceOfExtendedString TColStdSequenceOfHAsciiString TColStdSequenceOfHExtendedString TColStdSequenceOfInteger TColStdSequenceOfReal TColStdSequenceOfTransient TCollectionBasicMap TCollectionBasicMapIterator
import ../ncollection/ncollection_types
import ../tcollection/tcollection_types
import ../standard/standard_types


type
  ValueType* = object # FIXME: tkernel/tcolstd/tcolstd_harray1ofasciistring.nim(23, 47) Error: undeclared identifier: 'ValueType'
type
  TColStdArray1OfAsciiString* = NCollectionArray1[TCollectionAsciiString]
type
  TColStdArray1OfBoolean* = NCollectionArray1[bool]
type
  TColStdArray1OfByte* = NCollectionArray1[StandardByte]  
type
  TColStdArray1OfCharacter* = NCollectionArray1[cchar]  
type
  TColStdArray1OfExtendedString* = NCollectionArray1[TCollectionExtendedString]
type
  TColStdArray1OfInteger* = NCollectionArray1[cint]
type
  TColStdListOfInteger* = NCollectionList[cint]  
  TColStdArray1OfListOfInteger* = NCollectionArray1[TColStdListOfInteger]      
type
  TColStdHPackedMapOfInteger* {.importcpp: "TColStd_HPackedMapOfInteger",
                               header: "TColStd_HPackedMapOfInteger.hxx", bycopy.} = object of StandardTransient

  HandleTColStdHPackedMapOfInteger* = Handle[TColStdHPackedMapOfInteger]
type
  TColStdArray1OfTransient* = NCollectionArray1[Handle[StandardTransient]]

type
  TColStdArray2OfBoolean* = NCollectionArray2[bool]
type
  TColStdArray2OfCharacter* = NCollectionArray2[cchar]
type
  TColStdArray2OfInteger* = NCollectionArray2[cint]
type
  TColStdArray2OfReal* = NCollectionArray2[cfloat]    
type
  TColStdArray2OfTransient* = NCollectionArray2[Handle[StandardTransient]]

type
  TColStdDataMapOfAsciiStringInteger* = NCollectionDataMap[TCollectionAsciiString,
      cint, TCollectionAsciiString]
  TColStdDataMapIteratorOfDataMapOfAsciiStringInteger* = NCollectionDataMapIterator[
      TCollectionAsciiString, cint, TCollectionAsciiString]
type
  TColStdMapIntegerHasher* = NCollectionDefaultHasher[cint]

type
  TColStdDataMapOfIntegerInteger* = NCollectionDataMap[cint, cint,
      TColStdMapIntegerHasher]
  TColStdDataMapIteratorOfDataMapOfIntegerInteger* = NCollectionDataMapIterator[cint, cint,
      TColStdMapIntegerHasher]
type
  TColStdDataMapOfIntegerListOfInteger* = NCollectionDataMap[cint,
      TColStdListOfInteger, TColStdMapIntegerHasher]
  TColStdDataMapIteratorOfDataMapOfIntegerListOfInteger* = NCollectionDataMapIterator[cint,
      TColStdListOfInteger, TColStdMapIntegerHasher]
type
  TColStdDataMapOfIntegerReal* = NCollectionDataMap[cint, cfloat,
      TColStdMapIntegerHasher]
  TColStdDataMapIteratorOfDataMapOfIntegerReal* = NCollectionDataMapIterator[cint, cfloat,
      TColStdMapIntegerHasher]
type
  TColStdDataMapOfIntegerTransient* = NCollectionDataMap[cint,
      Handle[StandardTransient], TColStdMapIntegerHasher]
  TColStdDataMapIteratorOfDataMapOfIntegerTransient* = NCollectionDataMapIterator[cint,
      Handle[StandardTransient], TColStdMapIntegerHasher]
type
  TColStdDataMapOfStringInteger* = NCollectionDataMap[TCollectionExtendedString,
      cint, TCollectionExtendedString]
  TColStdDataMapIteratorOfDataMapOfStringInteger* = NCollectionDataMapIterator[
      TCollectionExtendedString, cint, TCollectionExtendedString]
type
  TColStdMapTransientHasher* = NCollectionDefaultHasher[Handle[StandardTransient]]

type
  TColStdDataMapOfTransientTransient* = NCollectionDataMap[
      Handle[StandardTransient], Handle[StandardTransient],
      TColStdMapTransientHasher]
  TColStdDataMapIteratorOfDataMapOfTransientTransient* = NCollectionDataMapIterator[
      Handle[StandardTransient], Handle[StandardTransient],
      TColStdMapTransientHasher]
type
  TColStdIndexedDataMapOfStringString* = NCollectionIndexedDataMap[
      TCollectionAsciiString, TCollectionAsciiString, TCollectionAsciiString]
type
  TColStdIndexedDataMapOfTransientTransient* = NCollectionIndexedDataMap[
      Handle[StandardTransient], Handle[StandardTransient],
      TColStdMapTransientHasher]

type
  TColStdIndexedMapOfInteger* = NCollectionIndexedMap[cint, TColStdMapIntegerHasher]
type
  TColStdMapRealHasher* = NCollectionDefaultHasher[cfloat]

type
  TColStdIndexedMapOfReal* = NCollectionIndexedMap[cfloat, TColStdMapRealHasher]

type
  TColStdIndexedMapOfTransient* = NCollectionIndexedMap[Handle[StandardTransient],
      TColStdMapTransientHasher]

type
  TColStdListOfAsciiString* = NCollectionList[TCollectionAsciiString]
  TColStdListIteratorOfListOfAsciiString* = NCollectionTListIterator[TCollectionAsciiString]

type
  TColStdListIteratorOfListOfInteger* = NCollectionTListIterator[cint]

type
  TColStdListOfReal* = NCollectionList[cfloat]
  TColStdListIteratorOfListOfReal* = NCollectionTListIterator[cfloat]

type
  TColStdListOfTransient* = NCollectionList[Handle[StandardTransient]]
  TColStdListIteratorOfListOfTransient* = NCollectionTListIterator[Handle[StandardTransient]]


type
  TColStdMapIteratorOfPackedMapOfInteger* {.importcpp:"TColStd_PackedMapOfInteger::Iterator".} = object
type
  TColStdMapOfAsciiString* = NCollectionMap[TCollectionAsciiString,
      TCollectionAsciiString]
  TColStdMapIteratorOfMapOfAsciiString* = NCollectionMap[TCollectionAsciiString,
      TCollectionAsciiString]
type
  TColStdMapOfInteger* = NCollectionMap[cint, TColStdMapIntegerHasher]
  TColStdMapIteratorOfMapOfInteger* = NCollectionMap[cint, TColStdMapIntegerHasher]

type
  TColStdMapOfReal* = NCollectionMap[cfloat, TColStdMapRealHasher]
  TColStdMapIteratorOfMapOfReal* = NCollectionMap[cfloat, TColStdMapRealHasher]
type
  TColStdMapOfTransient* = NCollectionMap[Handle[StandardTransient],
                                        TColStdMapTransientHasher]
  TColStdMapIteratorOfMapOfTransient* = NCollectionMap[Handle[StandardTransient],
      TColStdMapTransientHasher]



type
  TColStdSequenceOfAddress* = NCollectionSequence[pointer]

type
  TColStdSequenceOfAsciiString* = NCollectionSequence[TCollectionAsciiString]
type
  TColStdSequenceOfBoolean* = NCollectionSequence[bool]
type
  TColStdSequenceOfExtendedString* = NCollectionSequence[TCollectionExtendedString]

type
  TColStdSequenceOfHAsciiString* = NCollectionSequence[
      Handle[TCollectionHAsciiString]]

type
  TColStdSequenceOfHExtendedString* = NCollectionSequence[
      Handle[TCollectionHExtendedString]]

type
  TColStdSequenceOfInteger* = NCollectionSequence[cint]

type
  TColStdSequenceOfReal* = NCollectionSequence[cfloat]

type
  TColStdSequenceOfTransient* = NCollectionSequence[Handle[StandardTransient]]

type
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

                                #header: "TColStd_HSequenceOfTransient.hxx", bycopy.} = object of TColStdSequenceOfTransient


  TColStdPackedMapOfInteger* {.importcpp: "TColStd_PackedMapOfInteger",
                              header: "TColStd_PackedMapOfInteger.hxx", bycopy.} = object of TCollectionBasicMap 
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          

                                                                                                          

                                                                                                          
  TColStdPackedMapOfIntegerIterator* {.importcpp: "TColStd_PackedMapOfInteger::Iterator",
                                      header: "TColStd_PackedMapOfInteger.hxx",
                                      bycopy.} = object of TCollectionBasicMapIterator 
                                                                                  
                                                                                  
                                                                                  
    
    






