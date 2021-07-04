##  Created on: 2007-08-01
##  Created by: Alexander GRIGORIEV
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
  VrmlData_Node

## *
##  Data type for WorldInfo node
##

type
  VrmlData_WorldInfo* {.importcpp: "VrmlData_WorldInfo",
                       header: "VrmlData_WorldInfo.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                     ## *
                                                                                     ##  Empty Constructor.
                                                                                     ##
                                                                                     ##  ---------- PRIVATE FIELDS ----------
                                                                                     ##  Declaration of CASCADE RTTI


proc constructVrmlData_WorldInfo*(): VrmlData_WorldInfo {.constructor,
    importcpp: "VrmlData_WorldInfo(@)", header: "VrmlData_WorldInfo.hxx".}
proc constructVrmlData_WorldInfo*(theScene: VrmlData_Scene;
                                 theName: cstring = 0L'i64;
                                 theTitle: cstring = 0L'i64): VrmlData_WorldInfo {.
    constructor, importcpp: "VrmlData_WorldInfo(@)",
    header: "VrmlData_WorldInfo.hxx".}
proc SetTitle*(this: var VrmlData_WorldInfo; theString: cstring) {.
    importcpp: "SetTitle", header: "VrmlData_WorldInfo.hxx".}
proc AddInfo*(this: var VrmlData_WorldInfo; theString: cstring) {.
    importcpp: "AddInfo", header: "VrmlData_WorldInfo.hxx".}
proc Title*(this: VrmlData_WorldInfo): cstring {.noSideEffect, importcpp: "Title",
    header: "VrmlData_WorldInfo.hxx".}
proc InfoIterator*(this: VrmlData_WorldInfo): Iterator[cstring] {.noSideEffect,
    importcpp: "InfoIterator", header: "VrmlData_WorldInfo.hxx".}
proc Clone*(this: VrmlData_WorldInfo; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_WorldInfo.hxx".}
proc Read*(this: var VrmlData_WorldInfo; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_WorldInfo.hxx".}
proc Write*(this: VrmlData_WorldInfo; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_WorldInfo.hxx".}
proc IsDefault*(this: VrmlData_WorldInfo): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_WorldInfo.hxx".}
type
  VrmlData_WorldInfobase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_WorldInfo::get_type_name(@)",
                              header: "VrmlData_WorldInfo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_WorldInfo::get_type_descriptor(@)",
    header: "VrmlData_WorldInfo.hxx".}
proc DynamicType*(this: VrmlData_WorldInfo): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_WorldInfo.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_WorldInfo"
type
  Handle_VrmlData_WorldInfo* = handle[VrmlData_WorldInfo]
