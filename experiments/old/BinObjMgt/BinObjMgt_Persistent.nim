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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Data"
type
  BinObjMgtPersistent* {.importcpp: "BinObjMgt_Persistent",
                        header: "BinObjMgt_Persistent.hxx", bycopy.} = object ## ! Empty
                                                                         ## constructor
                                                                         ## ! Aligns
                                                                         ## myOffset to the given size;
                                                                         ## ! enters the next piece if the end of the current one is
                                                                         ## reached;
                                                                         ## !
                                                                         ## toClear==true means to fill unused space by 0


proc constructBinObjMgtPersistent*(): BinObjMgtPersistent {.constructor,
    importcpp: "BinObjMgt_Persistent(@)", header: "BinObjMgt_Persistent.hxx".}
proc putCharacter*(this: var BinObjMgtPersistent; theValue: StandardCharacter): var BinObjMgtPersistent {.
    importcpp: "PutCharacter", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: StandardCharacter): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putByte*(this: var BinObjMgtPersistent; theValue: StandardByte): var BinObjMgtPersistent {.
    importcpp: "PutByte", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: StandardByte): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putExtCharacter*(this: var BinObjMgtPersistent; theValue: StandardExtCharacter): var BinObjMgtPersistent {.
    importcpp: "PutExtCharacter", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: StandardExtCharacter): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putInteger*(this: var BinObjMgtPersistent; theValue: cint): var BinObjMgtPersistent {.
    importcpp: "PutInteger", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: cint): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putBoolean*(this: var BinObjMgtPersistent; theValue: bool): var BinObjMgtPersistent {.
    importcpp: "PutBoolean", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: bool): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putReal*(this: var BinObjMgtPersistent; theValue: cfloat): var BinObjMgtPersistent {.
    importcpp: "PutReal", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: cfloat): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putShortReal*(this: var BinObjMgtPersistent; theValue: StandardShortReal): var BinObjMgtPersistent {.
    importcpp: "PutShortReal", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: StandardShortReal): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putCString*(this: var BinObjMgtPersistent; theValue: StandardCString): var BinObjMgtPersistent {.
    importcpp: "PutCString", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: StandardCString): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putAsciiString*(this: var BinObjMgtPersistent; theValue: TCollectionAsciiString): var BinObjMgtPersistent {.
    importcpp: "PutAsciiString", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: TCollectionAsciiString): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putExtendedString*(this: var BinObjMgtPersistent;
                       theValue: TCollectionExtendedString): var BinObjMgtPersistent {.
    importcpp: "PutExtendedString", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: TCollectionExtendedString): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putLabel*(this: var BinObjMgtPersistent; theValue: TDF_Label): var BinObjMgtPersistent {.
    importcpp: "PutLabel", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: TDF_Label): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putGUID*(this: var BinObjMgtPersistent; theValue: StandardGUID): var BinObjMgtPersistent {.
    importcpp: "PutGUID", header: "BinObjMgt_Persistent.hxx".}
proc `<<`*(this: var BinObjMgtPersistent; theValue: StandardGUID): var BinObjMgtPersistent {.
    importcpp: "(# << #)", header: "BinObjMgt_Persistent.hxx".}
proc putCharArray*(this: var BinObjMgtPersistent; theArray: BinObjMgtPChar;
                  theLength: cint): var BinObjMgtPersistent {.
    importcpp: "PutCharArray", header: "BinObjMgt_Persistent.hxx".}
proc putByteArray*(this: var BinObjMgtPersistent; theArray: BinObjMgtPByte;
                  theLength: cint): var BinObjMgtPersistent {.
    importcpp: "PutByteArray", header: "BinObjMgt_Persistent.hxx".}
proc putExtCharArray*(this: var BinObjMgtPersistent; theArray: BinObjMgtPExtChar;
                     theLength: cint): var BinObjMgtPersistent {.
    importcpp: "PutExtCharArray", header: "BinObjMgt_Persistent.hxx".}
proc putIntArray*(this: var BinObjMgtPersistent; theArray: BinObjMgtPInteger;
                 theLength: cint): var BinObjMgtPersistent {.
    importcpp: "PutIntArray", header: "BinObjMgt_Persistent.hxx".}
proc putRealArray*(this: var BinObjMgtPersistent; theArray: BinObjMgtPReal;
                  theLength: cint): var BinObjMgtPersistent {.
    importcpp: "PutRealArray", header: "BinObjMgt_Persistent.hxx".}
proc putShortRealArray*(this: var BinObjMgtPersistent;
                       theArray: BinObjMgtPShortReal; theLength: cint): var BinObjMgtPersistent {.
    importcpp: "PutShortRealArray", header: "BinObjMgt_Persistent.hxx".}
proc getCharacter*(this: BinObjMgtPersistent; theValue: var StandardCharacter): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetCharacter", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var StandardCharacter): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getByte*(this: BinObjMgtPersistent; theValue: var StandardByte): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetByte", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var StandardByte): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getExtCharacter*(this: BinObjMgtPersistent; theValue: var StandardExtCharacter): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetExtCharacter", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var StandardExtCharacter): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getInteger*(this: BinObjMgtPersistent; theValue: var cint): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetInteger", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var cint): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getBoolean*(this: BinObjMgtPersistent; theValue: var bool): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetBoolean", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var bool): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getReal*(this: BinObjMgtPersistent; theValue: var cfloat): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetReal", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var cfloat): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getShortReal*(this: BinObjMgtPersistent; theValue: var StandardShortReal): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetShortReal", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var StandardShortReal): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getAsciiString*(this: BinObjMgtPersistent;
                    theValue: var TCollectionAsciiString): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetAsciiString", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var TCollectionAsciiString): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getExtendedString*(this: BinObjMgtPersistent;
                       theValue: var TCollectionExtendedString): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetExtendedString",
    header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var TCollectionExtendedString): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getLabel*(this: BinObjMgtPersistent; theDS: Handle[TDF_Data];
              theValue: var TDF_Label): BinObjMgtPersistent {.noSideEffect,
    importcpp: "GetLabel", header: "BinObjMgt_Persistent.hxx".}
proc getGUID*(this: BinObjMgtPersistent; theValue: var StandardGUID): BinObjMgtPersistent {.
    noSideEffect, importcpp: "GetGUID", header: "BinObjMgt_Persistent.hxx".}
proc `>>`*(this: BinObjMgtPersistent; theValue: var StandardGUID): BinObjMgtPersistent {.
    noSideEffect, importcpp: "(# >> #)", header: "BinObjMgt_Persistent.hxx".}
proc getCharArray*(this: BinObjMgtPersistent; theArray: BinObjMgtPChar;
                  theLength: cint): BinObjMgtPersistent {.noSideEffect,
    importcpp: "GetCharArray", header: "BinObjMgt_Persistent.hxx".}
proc getByteArray*(this: BinObjMgtPersistent; theArray: BinObjMgtPByte;
                  theLength: cint): BinObjMgtPersistent {.noSideEffect,
    importcpp: "GetByteArray", header: "BinObjMgt_Persistent.hxx".}
proc getExtCharArray*(this: BinObjMgtPersistent; theArray: BinObjMgtPExtChar;
                     theLength: cint): BinObjMgtPersistent {.noSideEffect,
    importcpp: "GetExtCharArray", header: "BinObjMgt_Persistent.hxx".}
proc getIntArray*(this: BinObjMgtPersistent; theArray: BinObjMgtPInteger;
                 theLength: cint): BinObjMgtPersistent {.noSideEffect,
    importcpp: "GetIntArray", header: "BinObjMgt_Persistent.hxx".}
proc getRealArray*(this: BinObjMgtPersistent; theArray: BinObjMgtPReal;
                  theLength: cint): BinObjMgtPersistent {.noSideEffect,
    importcpp: "GetRealArray", header: "BinObjMgt_Persistent.hxx".}
proc getShortRealArray*(this: BinObjMgtPersistent; theArray: BinObjMgtPShortReal;
                       theLength: cint): BinObjMgtPersistent {.noSideEffect,
    importcpp: "GetShortRealArray", header: "BinObjMgt_Persistent.hxx".}
proc position*(this: BinObjMgtPersistent): cint {.noSideEffect,
    importcpp: "Position", header: "BinObjMgt_Persistent.hxx".}
proc setPosition*(this: BinObjMgtPersistent; thePos: cint): bool {.noSideEffect,
    importcpp: "SetPosition", header: "BinObjMgt_Persistent.hxx".}
proc truncate*(this: var BinObjMgtPersistent) {.importcpp: "Truncate",
    header: "BinObjMgt_Persistent.hxx".}
proc isError*(this: BinObjMgtPersistent): bool {.noSideEffect, importcpp: "IsError",
    header: "BinObjMgt_Persistent.hxx".}
proc `!`*(this: BinObjMgtPersistent): bool {.noSideEffect, importcpp: "(! #)",
    header: "BinObjMgt_Persistent.hxx".}
proc isOK*(this: BinObjMgtPersistent): bool {.noSideEffect, importcpp: "IsOK",
    header: "BinObjMgt_Persistent.hxx".}
converter `bool`*(this: BinObjMgtPersistent): bool {.noSideEffect,
    importcpp: "BinObjMgt_Persistent::operator bool",
    header: "BinObjMgt_Persistent.hxx".}
proc init*(this: var BinObjMgtPersistent) {.importcpp: "Init",
                                        header: "BinObjMgt_Persistent.hxx".}
proc setId*(this: var BinObjMgtPersistent; theId: cint) {.importcpp: "SetId",
    header: "BinObjMgt_Persistent.hxx".}
proc setTypeId*(this: var BinObjMgtPersistent; theId: cint) {.importcpp: "SetTypeId",
    header: "BinObjMgt_Persistent.hxx".}
proc id*(this: BinObjMgtPersistent): cint {.noSideEffect, importcpp: "Id",
                                        header: "BinObjMgt_Persistent.hxx".}
proc typeId*(this: BinObjMgtPersistent): cint {.noSideEffect, importcpp: "TypeId",
    header: "BinObjMgt_Persistent.hxx".}
proc length*(this: BinObjMgtPersistent): cint {.noSideEffect, importcpp: "Length",
    header: "BinObjMgt_Persistent.hxx".}
proc write*(this: var BinObjMgtPersistent; theOS: var StandardOStream): var StandardOStream {.
    importcpp: "Write", header: "BinObjMgt_Persistent.hxx".}
proc read*(this: var BinObjMgtPersistent; theIS: var StandardIStream): var StandardIStream {.
    importcpp: "Read", header: "BinObjMgt_Persistent.hxx".}
proc destroy*(this: var BinObjMgtPersistent) {.importcpp: "Destroy",
    header: "BinObjMgt_Persistent.hxx".}
proc destroyBinObjMgtPersistent*(this: var BinObjMgtPersistent) {.
    importcpp: "#.~BinObjMgt_Persistent()", header: "BinObjMgt_Persistent.hxx".}

























