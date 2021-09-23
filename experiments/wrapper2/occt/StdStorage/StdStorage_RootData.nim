##  Copyright (c) 2017 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Storage/Storage_Error,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  StdStorage_MapOfRoots, StdStorage_HSequenceOfRoots

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of StdStorage_Root"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of StdObjMgt_Persistent"
discard "forward decl of StdStorage_RootData"
discard "forward decl of StdStorage_RootData"
type
  Handle_StdStorage_RootData* = handle[StdStorage_RootData]

## ! Storage root data section contains root persistent objects

type
  StdStorage_RootData* {.importcpp: "StdStorage_RootData",
                        header: "StdStorage_RootData.hxx", bycopy.} = object of Standard_Transient

  StdStorage_RootDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StdStorage_RootData::get_type_name(@)",
                              header: "StdStorage_RootData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdStorage_RootData::get_type_descriptor(@)",
    header: "StdStorage_RootData.hxx".}
proc DynamicType*(this: StdStorage_RootData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdStorage_RootData.hxx".}
proc Read*(this: var StdStorage_RootData; theDriver: handle[Storage_BaseDriver]): Standard_Boolean {.
    importcpp: "Read", header: "StdStorage_RootData.hxx".}
proc Write*(this: var StdStorage_RootData; theDriver: handle[Storage_BaseDriver]): Standard_Boolean {.
    importcpp: "Write", header: "StdStorage_RootData.hxx".}
proc NumberOfRoots*(this: StdStorage_RootData): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfRoots", header: "StdStorage_RootData.hxx".}
proc AddRoot*(this: var StdStorage_RootData; aRoot: handle[StdStorage_Root]) {.
    importcpp: "AddRoot", header: "StdStorage_RootData.hxx".}
proc Roots*(this: StdStorage_RootData): handle[StdStorage_HSequenceOfRoots] {.
    noSideEffect, importcpp: "Roots", header: "StdStorage_RootData.hxx".}
proc Find*(this: StdStorage_RootData; aName: TCollection_AsciiString): handle[
    StdStorage_Root] {.noSideEffect, importcpp: "Find",
                      header: "StdStorage_RootData.hxx".}
proc IsRoot*(this: StdStorage_RootData; aName: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsRoot", header: "StdStorage_RootData.hxx".}
proc RemoveRoot*(this: var StdStorage_RootData; aName: TCollection_AsciiString) {.
    importcpp: "RemoveRoot", header: "StdStorage_RootData.hxx".}
proc ErrorStatus*(this: StdStorage_RootData): Storage_Error {.noSideEffect,
    importcpp: "ErrorStatus", header: "StdStorage_RootData.hxx".}
proc ErrorStatusExtension*(this: StdStorage_RootData): TCollection_AsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension",
    header: "StdStorage_RootData.hxx".}
proc ClearErrorStatus*(this: var StdStorage_RootData) {.
    importcpp: "ClearErrorStatus", header: "StdStorage_RootData.hxx".}
proc Clear*(this: var StdStorage_RootData) {.importcpp: "Clear",
    header: "StdStorage_RootData.hxx".}