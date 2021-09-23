##  Created on: 2002-10-30
##  Created by: Michael SAZONOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_SequenceOfAddress,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Character, ../Standard/Standard_Byte,
  ../Standard/Standard_ExtCharacter, ../Standard/Standard_Real,
  ../Standard/Standard_ShortReal, ../Standard/Standard_CString, BinObjMgt_PChar,
  BinObjMgt_PByte, BinObjMgt_PExtChar, BinObjMgt_PInteger, BinObjMgt_PReal,
  BinObjMgt_PShortReal, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream, ../Standard/Standard_Address

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Data"
type
  BinObjMgt_Persistent* {.importcpp: "BinObjMgt_Persistent",
                         header: "BinObjMgt_Persistent.hxx", bycopy.} = object ## ! Empty
                                                                          ## constructor
                                                                          ## ! Aligns
                                                                          ## myOffset to the given size;
                                                                          ## ! enters the next piece if the end of the
                                                                          ## current one is
                                                                          ## reached;
                                                                          ## !
                                                                          ## toClear==true means to fill unused space by 0


proc constructBinObjMgt_Persistent*(): BinObjMgt_Persistent {.constructor,
    importcpp: "BinObjMgt_Persistent(@)", header: "BinObjMgt_Persistent.hxx".}
proc PutCharacter*(this: var BinObjMgt_Persistent; theValue: Standard_Character): var BinObjMgt_Persistent {.
    importcpp: "PutCharacter", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: Standard_Character): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutByte*(this: var BinObjMgt_Persistent; theValue: Standard_Byte): var BinObjMgt_Persistent {.
    importcpp: "PutByte", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: Standard_Byte): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutExtCharacter*(this: var BinObjMgt_Persistent;
                     theValue: Standard_ExtCharacter): var BinObjMgt_Persistent {.
    importcpp: "PutExtCharacter", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: Standard_ExtCharacter): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutInteger*(this: var BinObjMgt_Persistent; theValue: Standard_Integer): var BinObjMgt_Persistent {.
    importcpp: "PutInteger", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: Standard_Integer): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutBoolean*(this: var BinObjMgt_Persistent; theValue: Standard_Boolean): var BinObjMgt_Persistent {.
    importcpp: "PutBoolean", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: Standard_Boolean): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutReal*(this: var BinObjMgt_Persistent; theValue: Standard_Real): var BinObjMgt_Persistent {.
    importcpp: "PutReal", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: Standard_Real): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutShortReal*(this: var BinObjMgt_Persistent; theValue: Standard_ShortReal): var BinObjMgt_Persistent {.
    importcpp: "PutShortReal", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: Standard_ShortReal): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutCString*(this: var BinObjMgt_Persistent; theValue: Standard_CString): var BinObjMgt_Persistent {.
    importcpp: "PutCString", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: Standard_CString): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutAsciiString*(this: var BinObjMgt_Persistent;
                    theValue: TCollection_AsciiString): var BinObjMgt_Persistent {.
    importcpp: "PutAsciiString", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: TCollection_AsciiString): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutExtendedString*(this: var BinObjMgt_Persistent;
                       theValue: TCollection_ExtendedString): var BinObjMgt_Persistent {.
    importcpp: "PutExtendedString", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: TCollection_ExtendedString): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutLabel*(this: var BinObjMgt_Persistent; theValue: TDF_Label): var BinObjMgt_Persistent {.
    importcpp: "PutLabel", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: TDF_Label): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutGUID*(this: var BinObjMgt_Persistent; theValue: Standard_GUID): var BinObjMgt_Persistent {.
    importcpp: "PutGUID", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgt_Persistent; theValue: Standard_GUID): var BinObjMgt_Persistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc PutCharArray*(this: var BinObjMgt_Persistent; theArray: BinObjMgt_PChar;
                  theLength: Standard_Integer): var BinObjMgt_Persistent {.
    importcpp: "PutCharArray", header: "BinObjMgt_Persistent.hxx".}
proc PutByteArray*(this: var BinObjMgt_Persistent; theArray: BinObjMgt_PByte;
                  theLength: Standard_Integer): var BinObjMgt_Persistent {.
    importcpp: "PutByteArray", header: "BinObjMgt_Persistent.hxx".}
proc PutExtCharArray*(this: var BinObjMgt_Persistent; theArray: BinObjMgt_PExtChar;
                     theLength: Standard_Integer): var BinObjMgt_Persistent {.
    importcpp: "PutExtCharArray", header: "BinObjMgt_Persistent.hxx".}
proc PutIntArray*(this: var BinObjMgt_Persistent; theArray: BinObjMgt_PInteger;
                 theLength: Standard_Integer): var BinObjMgt_Persistent {.
    importcpp: "PutIntArray", header: "BinObjMgt_Persistent.hxx".}
proc PutRealArray*(this: var BinObjMgt_Persistent; theArray: BinObjMgt_PReal;
                  theLength: Standard_Integer): var BinObjMgt_Persistent {.
    importcpp: "PutRealArray", header: "BinObjMgt_Persistent.hxx".}
proc PutShortRealArray*(this: var BinObjMgt_Persistent;
                       theArray: BinObjMgt_PShortReal; theLength: Standard_Integer): var BinObjMgt_Persistent {.
    importcpp: "PutShortRealArray", header: "BinObjMgt_Persistent.hxx".}
proc GetCharacter*(this: BinObjMgt_Persistent; theValue: var Standard_Character): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetCharacter", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var Standard_Character): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetByte*(this: BinObjMgt_Persistent; theValue: var Standard_Byte): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetByte", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var Standard_Byte): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetExtCharacter*(this: BinObjMgt_Persistent;
                     theValue: var Standard_ExtCharacter): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetExtCharacter", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var Standard_ExtCharacter): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetInteger*(this: BinObjMgt_Persistent; theValue: var Standard_Integer): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetInteger", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var Standard_Integer): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetBoolean*(this: BinObjMgt_Persistent; theValue: var Standard_Boolean): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetBoolean", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var Standard_Boolean): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetReal*(this: BinObjMgt_Persistent; theValue: var Standard_Real): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetReal", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var Standard_Real): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetShortReal*(this: BinObjMgt_Persistent; theValue: var Standard_ShortReal): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetShortReal", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var Standard_ShortReal): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetAsciiString*(this: BinObjMgt_Persistent;
                    theValue: var TCollection_AsciiString): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetAsciiString", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var TCollection_AsciiString): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetExtendedString*(this: BinObjMgt_Persistent;
                       theValue: var TCollection_ExtendedString): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetExtendedString",
    header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var TCollection_ExtendedString): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetLabel*(this: BinObjMgt_Persistent; theDS: handle[TDF_Data];
              theValue: var TDF_Label): BinObjMgt_Persistent {.noSideEffect,
    importcpp: "GetLabel", header: "BinObjMgt_Persistent.hxx".}
proc GetGUID*(this: BinObjMgt_Persistent; theValue: var Standard_GUID): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetGUID", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgt_Persistent; theValue: var Standard_GUID): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc GetCharArray*(this: BinObjMgt_Persistent; theArray: BinObjMgt_PChar;
                  theLength: Standard_Integer): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetCharArray", header: "BinObjMgt_Persistent.hxx".}
proc GetByteArray*(this: BinObjMgt_Persistent; theArray: BinObjMgt_PByte;
                  theLength: Standard_Integer): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetByteArray", header: "BinObjMgt_Persistent.hxx".}
proc GetExtCharArray*(this: BinObjMgt_Persistent; theArray: BinObjMgt_PExtChar;
                     theLength: Standard_Integer): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetExtCharArray", header: "BinObjMgt_Persistent.hxx".}
proc GetIntArray*(this: BinObjMgt_Persistent; theArray: BinObjMgt_PInteger;
                 theLength: Standard_Integer): BinObjMgt_Persistent {.noSideEffect,
    importcpp: "GetIntArray", header: "BinObjMgt_Persistent.hxx".}
proc GetRealArray*(this: BinObjMgt_Persistent; theArray: BinObjMgt_PReal;
                  theLength: Standard_Integer): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetRealArray", header: "BinObjMgt_Persistent.hxx".}
proc GetShortRealArray*(this: BinObjMgt_Persistent; theArray: BinObjMgt_PShortReal;
                       theLength: Standard_Integer): BinObjMgt_Persistent {.
    noSideEffect, importcpp: "GetShortRealArray",
    header: "BinObjMgt_Persistent.hxx".}
proc Position*(this: BinObjMgt_Persistent): Standard_Integer {.noSideEffect,
    importcpp: "Position", header: "BinObjMgt_Persistent.hxx".}
proc SetPosition*(this: BinObjMgt_Persistent; thePos: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "SetPosition", header: "BinObjMgt_Persistent.hxx".}
proc Truncate*(this: var BinObjMgt_Persistent) {.importcpp: "Truncate",
    header: "BinObjMgt_Persistent.hxx".}
proc IsError*(this: BinObjMgt_Persistent): Standard_Boolean {.noSideEffect,
    importcpp: "IsError", header: "BinObjMgt_Persistent.hxx".}
proc `!`*(this: BinObjMgt_Persistent): Standard_Boolean {.noSideEffect,
    importcpp: "(! #)", header: "BinObjMgt_Persistent.hxx".}
proc IsOK*(this: BinObjMgt_Persistent): Standard_Boolean {.noSideEffect,
    importcpp: "IsOK", header: "BinObjMgt_Persistent.hxx".}
converter `Standard_Boolean`*(this: BinObjMgt_Persistent): Standard_Boolean {.
    noSideEffect, importcpp: "BinObjMgt_Persistent::operator Standard_Boolean",
    header: "BinObjMgt_Persistent.hxx".}
proc Init*(this: var BinObjMgt_Persistent) {.importcpp: "Init",
    header: "BinObjMgt_Persistent.hxx".}
proc SetId*(this: var BinObjMgt_Persistent; theId: Standard_Integer) {.
    importcpp: "SetId", header: "BinObjMgt_Persistent.hxx".}
proc SetTypeId*(this: var BinObjMgt_Persistent; theId: Standard_Integer) {.
    importcpp: "SetTypeId", header: "BinObjMgt_Persistent.hxx".}
proc Id*(this: BinObjMgt_Persistent): Standard_Integer {.noSideEffect,
    importcpp: "Id", header: "BinObjMgt_Persistent.hxx".}
proc TypeId*(this: BinObjMgt_Persistent): Standard_Integer {.noSideEffect,
    importcpp: "TypeId", header: "BinObjMgt_Persistent.hxx".}
proc Length*(this: BinObjMgt_Persistent): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "BinObjMgt_Persistent.hxx".}
proc Write*(this: var BinObjMgt_Persistent; theOS: var Standard_OStream): var Standard_OStream {.
    importcpp: "Write", header: "BinObjMgt_Persistent.hxx".}
proc Read*(this: var BinObjMgt_Persistent; theIS: var Standard_IStream): var Standard_IStream {.
    importcpp: "Read", header: "BinObjMgt_Persistent.hxx".}
proc Destroy*(this: var BinObjMgt_Persistent) {.importcpp: "Destroy",
    header: "BinObjMgt_Persistent.hxx".}
proc destroyBinObjMgt_Persistent*(this: var BinObjMgt_Persistent) {.
    importcpp: "#.~BinObjMgt_Persistent()", header: "BinObjMgt_Persistent.hxx".}