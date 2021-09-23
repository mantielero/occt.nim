##  Copyright (c) 2015 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _StdLPersistent_HArray1_HeaderFile [NewLine] # _StdLPersistent_HArray1_HeaderFile [NewLine] # ../Standard/Standard_NotImplemented.hxx [NewLine] # ../Standard/Standard_NullValue.hxx [NewLine] # ../StdObjMgt/StdObjMgt_Persistent.hxx [NewLine] # ../StdObjMgt/StdObjMgt_ReadData.hxx [NewLine] # ../StdObjMgt/StdObjMgt_WriteData.hxx [NewLine] # ../NCollection/NCollection_DefineHArray1.hxx [NewLine] # ../TColStd/TColStd_HArray1OfInteger.hxx [NewLine] # ../TColStd/TColStd_HArray1OfReal.hxx [NewLine] # ../TColStd/TColStd_HArray1OfByte.hxx [NewLine] class TCollection_HExtendedString ;
## Error: token expected: ( but got: <!!!

discard "forward decl of TDF_Label"
discard "forward decl of TDF_Data"
type
  StdLPersistent_HArray1StdLPersistent_HArray1OfPersistent* {.
      importcpp: "StdLPersistent_HArray1OfPersistent",
      header: "StdLPersistent_HArray1.hxx", bycopy.} = object of NCollection_Array1[
      handle[StdObjMgt_Persistent]]


proc constructStdLPersistent_HArray1StdLPersistent_HArray1OfPersistent*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StdLPersistent_HArray1StdLPersistent_HArray1OfPersistent {.
    constructor, importcpp: "StdLPersistent_HArray1OfPersistent(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc constructStdLPersistent_HArray1StdLPersistent_HArray1OfPersistent*(
    theLower: Standard_Integer; theUpper: Standard_Integer;
    theValue: value_type[handle[StdObjMgt_Persistent]]): StdLPersistent_HArray1StdLPersistent_HArray1OfPersistent {.
    constructor, importcpp: "StdLPersistent_HArray1OfPersistent(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc constructStdLPersistent_HArray1StdLPersistent_HArray1OfPersistent*(
    theOther: NCollection_Array1[handle[StdObjMgt_Persistent]]): StdLPersistent_HArray1StdLPersistent_HArray1OfPersistent {.
    constructor, importcpp: "StdLPersistent_HArray1OfPersistent(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc Array1*(this: StdLPersistent_HArray1StdLPersistent_HArray1OfPersistent): NCollection_Array1[
    handle[StdObjMgt_Persistent]] {.noSideEffect, importcpp: "Array1",
                                   header: "StdLPersistent_HArray1.hxx".}
proc ChangeArray1*(this: var StdLPersistent_HArray1StdLPersistent_HArray1OfPersistent): var NCollection_Array1[
    handle[StdObjMgt_Persistent]] {.importcpp: "ChangeArray1",
                                   header: "StdLPersistent_HArray1.hxx".}
type
  StdLPersistent_HArray1StdLPersistent_HArray1OfPersistentbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StdLPersistent_HArray1OfPersistent::get_type_name(@)",
                              header: "StdLPersistent_HArray1.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdLPersistent_HArray1OfPersistent::get_type_descriptor(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc DynamicType*(this: StdLPersistent_HArray1StdLPersistent_HArray1OfPersistent): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StdLPersistent_HArray1.hxx".}
type
  StdLPersistent_HArray1StdLPersistent_HArray1* {.
      importcpp: "StdLPersistent_HArray1", header: "StdLPersistent_HArray1.hxx",
      bycopy.} = object

  StdLPersistent_HArray1StdLPersistent_HArray1Integer* = StdLPersistent_HArray1StdLPersistent_HArray1instance[
      TColStd_HArray1OfInteger]
  StdLPersistent_HArray1StdLPersistent_HArray1Real* = StdLPersistent_HArray1StdLPersistent_HArray1instance[
      TColStd_HArray1OfReal]
  StdLPersistent_HArray1StdLPersistent_HArray1Byte* = StdLPersistent_HArray1StdLPersistent_HArray1instance[
      TColStd_HArray1OfByte]
  StdLPersistent_HArray1StdLPersistent_HArray1Persistent* = StdLPersistent_HArray1StdLPersistent_HArray1instance[
      StdLPersistent_HArray1StdLPersistent_HArray1OfPersistent]

proc Translate*[ArrayClass](theArray: ArrayClass): handle[
    StdLPersistent_HArray1StdLPersistent_HArray1instance[ArrayClass]] {.
    importcpp: "StdLPersistent_HArray1::Translate(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc Translate*[ArrayClass](thePName: Standard_CString; theArray: ArrayClass): handle[
    StdLPersistent_HArray1StdLPersistent_HArray1instance[ArrayClass]] {.
    importcpp: "StdLPersistent_HArray1::Translate(@)",
    header: "StdLPersistent_HArray1.hxx".}
## !!!Ignored construct:  template < > [end of template] inline Standard_CString StdLPersistent_HArray1 :: instance < TColStd_HArray1OfInteger > :: PNameT ( ) const { return PColStd_HArray1OfInteger ; } template < > inline Standard_CString StdLPersistent_HArray1 :: instance < TColStd_HArray1OfReal > :: PNameT ( ) const { return PColStd_HArray1OfReal ; } template < > inline Standard_CString StdLPersistent_HArray1 :: instance < TColStd_HArray1OfByte > :: PNameT ( ) const { return PColStd_HArray1OfByte ; } inline StdObjMgt_ReadData & operator >> ( StdObjMgt_ReadData & theReadData , Standard_Byte & theByte ) { return theReadData >> reinterpret_cast < Standard_Character & > ( theByte ) ; } inline StdObjMgt_WriteData & operator >> ( StdObjMgt_WriteData & theWriteData , const Standard_Byte & theByte ) { return theWriteData << reinterpret_cast < const Standard_Character & > ( theByte ) ; } template < > inline void StdLPersistent_HArray1 :: instance < StdLPersistent_HArray1OfPersistent > :: PChildrenT ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const { for ( Standard_Integer i = myArray -> Lower ( ) ; i <= myArray -> Upper ( ) ; ++ i ) theChildren . Append ( myArray -> Value ( i ) ) ; } # [NewLine]
## Error: token expected: ( but got: <!!!
