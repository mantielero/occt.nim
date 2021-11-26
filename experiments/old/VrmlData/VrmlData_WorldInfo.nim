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

## *
##  Data type for WorldInfo node
##

type
  VrmlDataWorldInfo* {.importcpp: "VrmlData_WorldInfo",
                      header: "VrmlData_WorldInfo.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
                                                                                   ## *
                                                                                   ##  Empty Constructor.
                                                                                   ##
                                                                                   ##  ---------- PRIVATE FIELDS ----------
                                                                                   ##  Declaration of CASCADE RTTI


proc constructVrmlDataWorldInfo*(): VrmlDataWorldInfo {.constructor,
    importcpp: "VrmlData_WorldInfo(@)", header: "VrmlData_WorldInfo.hxx".}
proc constructVrmlDataWorldInfo*(theScene: VrmlDataScene;
                                theName: cstring = 0'i64;
                                theTitle: cstring = 0'i64): VrmlDataWorldInfo {.
    constructor, importcpp: "VrmlData_WorldInfo(@)",
    header: "VrmlData_WorldInfo.hxx".}
proc setTitle*(this: var VrmlDataWorldInfo; theString: cstring) {.
    importcpp: "SetTitle", header: "VrmlData_WorldInfo.hxx".}
proc addInfo*(this: var VrmlDataWorldInfo; theString: cstring) {.importcpp: "AddInfo",
    header: "VrmlData_WorldInfo.hxx".}
proc title*(this: VrmlDataWorldInfo): cstring {.noSideEffect, importcpp: "Title",
    header: "VrmlData_WorldInfo.hxx".}
proc infoIterator*(this: VrmlDataWorldInfo): Iterator[cstring] {.noSideEffect,
    importcpp: "InfoIterator", header: "VrmlData_WorldInfo.hxx".}
proc clone*(this: VrmlDataWorldInfo; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone",
                   header: "VrmlData_WorldInfo.hxx".}
proc read*(this: var VrmlDataWorldInfo; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_WorldInfo.hxx".}
proc write*(this: VrmlDataWorldInfo; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_WorldInfo.hxx".}
proc isDefault*(this: VrmlDataWorldInfo): bool {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_WorldInfo.hxx".}
type
  VrmlDataWorldInfobaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_WorldInfo::get_type_name(@)",
                            header: "VrmlData_WorldInfo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_WorldInfo::get_type_descriptor(@)",
    header: "VrmlData_WorldInfo.hxx".}
proc dynamicType*(this: VrmlDataWorldInfo): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_WorldInfo.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_WorldInfo"
type
  HandleC1C1* = Handle[VrmlDataWorldInfo]


























