##  Created on: 1997-02-06
##  Created by: Kernel
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, Storage_MapOfPers,
  Storage_Error, ../TCollection/TCollection_AsciiString,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer,
  Storage_HSeqOfRoot, ../Standard/Standard_Boolean

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of Storage_Root"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Persistent"
discard "forward decl of Storage_RootData"
discard "forward decl of Storage_RootData"
type
  Handle_Storage_RootData* = handle[Storage_RootData]
  Storage_RootData* {.importcpp: "Storage_RootData",
                     header: "Storage_RootData.hxx", bycopy.} = object of Standard_Transient


proc constructStorage_RootData*(): Storage_RootData {.constructor,
    importcpp: "Storage_RootData(@)", header: "Storage_RootData.hxx".}
proc Read*(this: var Storage_RootData; theDriver: handle[Storage_BaseDriver]): Standard_Boolean {.
    importcpp: "Read", header: "Storage_RootData.hxx".}
proc NumberOfRoots*(this: Storage_RootData): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfRoots", header: "Storage_RootData.hxx".}
proc AddRoot*(this: var Storage_RootData; aRoot: handle[Storage_Root]) {.
    importcpp: "AddRoot", header: "Storage_RootData.hxx".}
proc Roots*(this: Storage_RootData): handle[Storage_HSeqOfRoot] {.noSideEffect,
    importcpp: "Roots", header: "Storage_RootData.hxx".}
proc Find*(this: Storage_RootData; aName: TCollection_AsciiString): handle[
    Storage_Root] {.noSideEffect, importcpp: "Find", header: "Storage_RootData.hxx".}
proc IsRoot*(this: Storage_RootData; aName: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsRoot", header: "Storage_RootData.hxx".}
proc RemoveRoot*(this: var Storage_RootData; aName: TCollection_AsciiString) {.
    importcpp: "RemoveRoot", header: "Storage_RootData.hxx".}
proc ErrorStatus*(this: Storage_RootData): Storage_Error {.noSideEffect,
    importcpp: "ErrorStatus", header: "Storage_RootData.hxx".}
proc ErrorStatusExtension*(this: Storage_RootData): TCollection_AsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension", header: "Storage_RootData.hxx".}
proc ClearErrorStatus*(this: var Storage_RootData) {.importcpp: "ClearErrorStatus",
    header: "Storage_RootData.hxx".}
proc UpdateRoot*(this: var Storage_RootData; aName: TCollection_AsciiString;
                aPers: handle[Standard_Persistent]) {.importcpp: "UpdateRoot",
    header: "Storage_RootData.hxx".}
type
  Storage_RootDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Storage_RootData::get_type_name(@)",
                              header: "Storage_RootData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Storage_RootData::get_type_descriptor(@)",
    header: "Storage_RootData.hxx".}
proc DynamicType*(this: Storage_RootData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Storage_RootData.hxx".}