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

## !!!Ignored construct:  # _StdLPersistent_HArray1_HeaderFile [NewLine] # _StdLPersistent_HArray1_HeaderFile [NewLine] # < Standard_NotImplemented . hxx > [NewLine] # < Standard_NullValue . hxx > [NewLine] # < StdObjMgt_Persistent . hxx > [NewLine] # < StdObjMgt_ReadData . hxx > [NewLine] # < StdObjMgt_WriteData . hxx > [NewLine] # < NCollection_DefineHArray1 . hxx > [NewLine] # < TColStd_HArray1OfInteger . hxx > [NewLine] # < TColStd_HArray1OfReal . hxx > [NewLine] # < TColStd_HArray1OfByte . hxx > [NewLine] class TCollection_HExtendedString ;
## Error: token expected: ( but got: <!!!

discard "forward decl of TDF_Label"
discard "forward decl of TDF_Data"
type
  StdLPersistentHArray1StdLPersistentHArray1OfPersistent* {.
      importcpp: "StdLPersistent_HArray1OfPersistent",
      header: "StdLPersistent_HArray1.hxx", bycopy.} = object of NCollectionArray1[
      Handle[StdObjMgtPersistent]]


proc constructStdLPersistentHArray1StdLPersistentHArray1OfPersistent*(
    theLower: int; theUpper: int): StdLPersistentHArray1StdLPersistentHArray1OfPersistent {.
    constructor, importcpp: "StdLPersistent_HArray1OfPersistent(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc constructStdLPersistentHArray1StdLPersistentHArray1OfPersistent*(
    theLower: int; theUpper: int; theValue: ValueType[Handle[StdObjMgtPersistent]]): StdLPersistentHArray1StdLPersistentHArray1OfPersistent {.
    constructor, importcpp: "StdLPersistent_HArray1OfPersistent(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc constructStdLPersistentHArray1StdLPersistentHArray1OfPersistent*(
    theOther: NCollectionArray1[Handle[StdObjMgtPersistent]]): StdLPersistentHArray1StdLPersistentHArray1OfPersistent {.
    constructor, importcpp: "StdLPersistent_HArray1OfPersistent(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc array1*(this: StdLPersistentHArray1StdLPersistentHArray1OfPersistent): NCollectionArray1[
    Handle[StdObjMgtPersistent]] {.noSideEffect, importcpp: "Array1",
                                  header: "StdLPersistent_HArray1.hxx".}
proc changeArray1*(this: var StdLPersistentHArray1StdLPersistentHArray1OfPersistent): var NCollectionArray1[
    Handle[StdObjMgtPersistent]] {.importcpp: "ChangeArray1",
                                  header: "StdLPersistent_HArray1.hxx".}
type
  StdLPersistentHArray1StdLPersistentHArray1OfPersistentbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StdLPersistent_HArray1OfPersistent::get_type_name(@)",
                            header: "StdLPersistent_HArray1.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdLPersistent_HArray1OfPersistent::get_type_descriptor(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc dynamicType*(this: StdLPersistentHArray1StdLPersistentHArray1OfPersistent): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StdLPersistent_HArray1.hxx".}
type
  StdLPersistentHArray1StdLPersistentHArray1* {.
      importcpp: "StdLPersistent_HArray1", header: "StdLPersistent_HArray1.hxx",
      bycopy.} = object

  StdLPersistentHArray1StdLPersistentHArray1Integer* = StdLPersistentHArray1StdLPersistentHArray1instance[
      TColStdHArray1OfInteger]
  StdLPersistentHArray1StdLPersistentHArray1Real* = StdLPersistentHArray1StdLPersistentHArray1instance[
      TColStdHArray1OfReal]
  StdLPersistentHArray1StdLPersistentHArray1Byte* = StdLPersistentHArray1StdLPersistentHArray1instance[
      TColStdHArray1OfByte]
  StdLPersistentHArray1StdLPersistentHArray1Persistent* = StdLPersistentHArray1StdLPersistentHArray1instance[
      StdLPersistentHArray1StdLPersistentHArray1OfPersistent]

proc translate*[ArrayClass](theArray: ArrayClass): Handle[
    StdLPersistentHArray1StdLPersistentHArray1instance[ArrayClass]] {.
    importcpp: "StdLPersistent_HArray1::Translate(@)",
    header: "StdLPersistent_HArray1.hxx".}
proc translate*[ArrayClass](thePName: StandardCString; theArray: ArrayClass): Handle[
    StdLPersistentHArray1StdLPersistentHArray1instance[ArrayClass]] {.
    importcpp: "StdLPersistent_HArray1::Translate(@)",
    header: "StdLPersistent_HArray1.hxx".}
## !!!Ignored construct:  template < > [end of template] inline Standard_CString StdLPersistent_HArray1 :: instance < TColStd_HArray1OfInteger > :: PNameT ( ) const { return PColStd_HArray1OfInteger ; } template < > inline Standard_CString StdLPersistent_HArray1 :: instance < TColStd_HArray1OfReal > :: PNameT ( ) const { return PColStd_HArray1OfReal ; } template < > inline Standard_CString StdLPersistent_HArray1 :: instance < TColStd_HArray1OfByte > :: PNameT ( ) const { return PColStd_HArray1OfByte ; } inline StdObjMgt_ReadData & operator >> ( StdObjMgt_ReadData & theReadData , Standard_Byte & theByte ) { return theReadData >> reinterpret_cast < Standard_Character & > ( theByte ) ; } inline StdObjMgt_WriteData & operator >> ( StdObjMgt_WriteData & theWriteData , const Standard_Byte & theByte ) { return theWriteData << reinterpret_cast < const Standard_Character & > ( theByte ) ; } template < > inline void StdLPersistent_HArray1 :: instance < StdLPersistent_HArray1OfPersistent > :: PChildrenT ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const { for ( Standard_Integer i = myArray -> Lower ( ) ; i <= myArray -> Upper ( ) ; ++ i ) theChildren . Append ( myArray -> Value ( i ) ) ; } # [NewLine]
## Error: token expected: ( but got: <!!!

