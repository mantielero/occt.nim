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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TDF/TDF_Attribute, ../TColStd/TColStd_HPackedMapOfInteger,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream

discard "forward decl of TDataStd_DeltaOnModificationOfIntPackedMap"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDataStd_IntPackedMap"
discard "forward decl of TDataStd_IntPackedMap"
type
  Handle_TDataStd_IntPackedMap* = handle[TDataStd_IntPackedMap]

## ! Attribute for storing TColStd_PackedMapOfInteger

type
  TDataStd_IntPackedMap* {.importcpp: "TDataStd_IntPackedMap",
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

  TDataStd_IntPackedMapbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_IntPackedMap::get_type_name(@)",
                              header: "TDataStd_IntPackedMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_IntPackedMap::get_type_descriptor(@)",
    header: "TDataStd_IntPackedMap.hxx".}
proc DynamicType*(this: TDataStd_IntPackedMap): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_IntPackedMap.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataStd_IntPackedMap::GetID(@)",
                            header: "TDataStd_IntPackedMap.hxx".}
proc Set*(label: TDF_Label; isDelta: Standard_Boolean = Standard_False): handle[
    TDataStd_IntPackedMap] {.importcpp: "TDataStd_IntPackedMap::Set(@)",
                            header: "TDataStd_IntPackedMap.hxx".}
proc constructTDataStd_IntPackedMap*(): TDataStd_IntPackedMap {.constructor,
    importcpp: "TDataStd_IntPackedMap(@)", header: "TDataStd_IntPackedMap.hxx".}
proc ChangeMap*(this: var TDataStd_IntPackedMap;
               theMap: handle[TColStd_HPackedMapOfInteger]): Standard_Boolean {.
    importcpp: "ChangeMap", header: "TDataStd_IntPackedMap.hxx".}
proc ChangeMap*(this: var TDataStd_IntPackedMap; theMap: TColStd_PackedMapOfInteger): Standard_Boolean {.
    importcpp: "ChangeMap", header: "TDataStd_IntPackedMap.hxx".}
proc GetMap*(this: TDataStd_IntPackedMap): TColStd_PackedMapOfInteger {.
    noSideEffect, importcpp: "GetMap", header: "TDataStd_IntPackedMap.hxx".}
proc GetHMap*(this: TDataStd_IntPackedMap): handle[TColStd_HPackedMapOfInteger] {.
    noSideEffect, importcpp: "GetHMap", header: "TDataStd_IntPackedMap.hxx".}
proc Clear*(this: var TDataStd_IntPackedMap): Standard_Boolean {.importcpp: "Clear",
    header: "TDataStd_IntPackedMap.hxx".}
proc Add*(this: var TDataStd_IntPackedMap; theKey: Standard_Integer): Standard_Boolean {.
    importcpp: "Add", header: "TDataStd_IntPackedMap.hxx".}
proc Remove*(this: var TDataStd_IntPackedMap; theKey: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "TDataStd_IntPackedMap.hxx".}
proc Contains*(this: TDataStd_IntPackedMap; theKey: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "TDataStd_IntPackedMap.hxx".}
proc Extent*(this: TDataStd_IntPackedMap): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TDataStd_IntPackedMap.hxx".}
proc IsEmpty*(this: TDataStd_IntPackedMap): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TDataStd_IntPackedMap.hxx".}
proc GetDelta*(this: TDataStd_IntPackedMap): Standard_Boolean {.noSideEffect,
    importcpp: "GetDelta", header: "TDataStd_IntPackedMap.hxx".}
proc SetDelta*(this: var TDataStd_IntPackedMap; isDelta: Standard_Boolean) {.
    importcpp: "SetDelta", header: "TDataStd_IntPackedMap.hxx".}
proc ID*(this: TDataStd_IntPackedMap): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_IntPackedMap.hxx".}
proc Restore*(this: var TDataStd_IntPackedMap; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_IntPackedMap.hxx".}
proc NewEmpty*(this: TDataStd_IntPackedMap): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_IntPackedMap.hxx".}
proc Paste*(this: TDataStd_IntPackedMap; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_IntPackedMap.hxx".}
proc Dump*(this: TDataStd_IntPackedMap; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_IntPackedMap.hxx".}
proc DeltaOnModification*(this: TDataStd_IntPackedMap;
                         anOldAttribute: handle[TDF_Attribute]): handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDataStd_IntPackedMap.hxx".}
proc DumpJson*(this: TDataStd_IntPackedMap; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_IntPackedMap.hxx".}