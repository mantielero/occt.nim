##  Created on: 2007-07-31
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

discard "forward decl of TDataStd_DeltaOnModificationOfIntPackedMap"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDataStd_IntPackedMap"
type
  HandleTDataStdIntPackedMap* = Handle[TDataStdIntPackedMap]

## ! Attribute for storing TColStd_PackedMapOfInteger

type
  TDataStdIntPackedMap* {.importcpp: "TDataStd_IntPackedMap",
                         header: "TDataStd_IntPackedMap.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                          ## !
                                                                                          ## class
                                                                                          ## methods
                                                                                          ##
                                                                                          ## !
                                                                                          ## =============
                                                                                          ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## the
                                                                                          ## GUID
                                                                                          ## of
                                                                                          ## the
                                                                                          ## attribute.


proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_IntPackedMap::GetID(@)",
                           header: "TDataStd_IntPackedMap.hxx".}
proc set*(label: TDF_Label; isDelta: bool = false): Handle[TDataStdIntPackedMap] {.
    cdecl, importcpp: "TDataStd_IntPackedMap::Set(@)",
    header: "TDataStd_IntPackedMap.hxx".}
proc newTDataStdIntPackedMap*(): TDataStdIntPackedMap {.cdecl, constructor,
    importcpp: "TDataStd_IntPackedMap(@)", header: "TDataStd_IntPackedMap.hxx".}
proc changeMap*(this: var TDataStdIntPackedMap;
               theMap: Handle[TColStdHPackedMapOfInteger]): bool {.cdecl,
    importcpp: "ChangeMap", header: "TDataStd_IntPackedMap.hxx".}
proc changeMap*(this: var TDataStdIntPackedMap; theMap: TColStdPackedMapOfInteger): bool {.
    cdecl, importcpp: "ChangeMap", header: "TDataStd_IntPackedMap.hxx".}
proc getMap*(this: TDataStdIntPackedMap): TColStdPackedMapOfInteger {.noSideEffect,
    cdecl, importcpp: "GetMap", header: "TDataStd_IntPackedMap.hxx".}
proc getHMap*(this: TDataStdIntPackedMap): Handle[TColStdHPackedMapOfInteger] {.
    noSideEffect, cdecl, importcpp: "GetHMap", header: "TDataStd_IntPackedMap.hxx".}
proc clear*(this: var TDataStdIntPackedMap): bool {.cdecl, importcpp: "Clear",
    header: "TDataStd_IntPackedMap.hxx".}
proc add*(this: var TDataStdIntPackedMap; theKey: cint): bool {.cdecl, importcpp: "Add",
    header: "TDataStd_IntPackedMap.hxx".}
proc remove*(this: var TDataStdIntPackedMap; theKey: cint): bool {.cdecl,
    importcpp: "Remove", header: "TDataStd_IntPackedMap.hxx".}
proc contains*(this: TDataStdIntPackedMap; theKey: cint): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "TDataStd_IntPackedMap.hxx".}
proc extent*(this: TDataStdIntPackedMap): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "TDataStd_IntPackedMap.hxx".}
proc isEmpty*(this: TDataStdIntPackedMap): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TDataStd_IntPackedMap.hxx".}
proc getDelta*(this: TDataStdIntPackedMap): bool {.noSideEffect, cdecl,
    importcpp: "GetDelta", header: "TDataStd_IntPackedMap.hxx".}
proc setDelta*(this: var TDataStdIntPackedMap; isDelta: bool) {.cdecl,
    importcpp: "SetDelta", header: "TDataStd_IntPackedMap.hxx".}
proc id*(this: TDataStdIntPackedMap): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_IntPackedMap.hxx".}
proc restore*(this: var TDataStdIntPackedMap; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_IntPackedMap.hxx".}
proc newEmpty*(this: TDataStdIntPackedMap): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "TDataStd_IntPackedMap.hxx".}
proc paste*(this: TDataStdIntPackedMap; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_IntPackedMap.hxx".}
proc dump*(this: TDataStdIntPackedMap; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_IntPackedMap.hxx".}
proc deltaOnModification*(this: TDataStdIntPackedMap;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, cdecl,
                              importcpp: "DeltaOnModification",
                              header: "TDataStd_IntPackedMap.hxx".}
proc dumpJson*(this: TDataStdIntPackedMap; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_IntPackedMap.hxx".}