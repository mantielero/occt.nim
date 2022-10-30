# PROVIDES:
# DEPENDS:  Handle[TColStdHPackedMapOfInteger] TColStdArray1OfAsciiString TColStdArray1OfBoolean TColStdArray1OfByte TColStdArray1OfCharacter TColStdArray1OfExtendedString TColStdArray1OfInteger TColStdArray1OfListOfInteger TColStdArray1OfReal TColStdArray1OfTransient TColStdArray2OfBoolean TColStdArray2OfCharacter TColStdArray2OfInteger TColStdArray2OfReal TColStdArray2OfTransient StandardTransient TColStdSequenceOfAsciiString TColStdSequenceOfExtendedString TColStdSequenceOfHAsciiString TColStdSequenceOfHExtendedString TColStdSequenceOfInteger TColStdSequenceOfReal TColStdSequenceOfTransient TCollectionBasicMap TCollectionBasicMapIterator

import tkernel/tcolstd/tcolstd_types
import tkernel/tcollection/tcollection_types
import tkernel/standard/standard_types
type
  HandleTColStdHPackedMapOfInteger* = Handle[TColStdHPackedMapOfInteger]




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



  TColStdHPackedMapOfInteger* {.importcpp: "TColStd_HPackedMapOfInteger",
                               header: "TColStd_HPackedMapOfInteger.hxx", bycopy.} = object of StandardTransient



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

                                header: "TColStd_HSequenceOfTransient.hxx", bycopy.} = object of TColStdSequenceOfTransient


  TColStdPackedMapOfInteger* {.importcpp: "TColStd_PackedMapOfInteger",
                              header: "TColStd_PackedMapOfInteger.hxx", bycopy.} = object of TCollectionBasicMap 
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          

                                                                                                          

                                                                                                          
  TColStdPackedMapOfIntegerIterator* {.importcpp: "TColStd_PackedMapOfInteger::Iterator",
                                      header: "TColStd_PackedMapOfInteger.hxx",
                                      bycopy.} = object of TCollectionBasicMapIterator 
                                                                                  
                                                                                  
                                                                                  
    
    






