##  Created on: 2006-05-29
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Shape"
type
  VrmlDataGroup* {.importcpp: "VrmlData_Group", header: "VrmlData_Group.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PROTECTED METHODS ----------
                                                                                                      ## *
                                                                                                      ##  Try to open a file by the given filename, using the search directories
                                                                                                      ##  list myVrmlDir of the Scene.
                                                                                                      ##
                                                                                                      ##  ---------- PRIVATE FIELDS ----------
                                                                                                      ##  Declaration of CASCADE RTTI

  VrmlDataGroupIterator* = Iterator

proc constructVrmlDataGroup*(isTransform: bool = false): VrmlDataGroup {.constructor,
    importcpp: "VrmlData_Group(@)", header: "VrmlData_Group.hxx".}
proc constructVrmlDataGroup*(theScene: VrmlDataScene; theName: cstring;
                            isTransform: bool = false): VrmlDataGroup {.constructor,
    importcpp: "VrmlData_Group(@)", header: "VrmlData_Group.hxx".}
proc addNode*(this: var VrmlDataGroup; theNode: Handle[VrmlDataNode]): var Handle[
    VrmlDataNode] {.importcpp: "AddNode", header: "VrmlData_Group.hxx".}
proc removeNode*(this: var VrmlDataGroup; theNode: Handle[VrmlDataNode]): bool {.
    importcpp: "RemoveNode", header: "VrmlData_Group.hxx".}
proc nodeIterator*(this: VrmlDataGroup): VrmlDataGroupIterator {.noSideEffect,
    importcpp: "NodeIterator", header: "VrmlData_Group.hxx".}
proc box*(this: VrmlDataGroup): BndB3f {.noSideEffect, importcpp: "Box",
                                     header: "VrmlData_Group.hxx".}
proc setBox*(this: var VrmlDataGroup; theBox: BndB3f) {.importcpp: "SetBox",
    header: "VrmlData_Group.hxx".}
proc setTransform*(this: var VrmlDataGroup; theTrsf: Trsf): bool {.
    importcpp: "SetTransform", header: "VrmlData_Group.hxx".}
proc getTransform*(this: VrmlDataGroup): Trsf {.noSideEffect,
    importcpp: "GetTransform", header: "VrmlData_Group.hxx".}
proc isTransform*(this: VrmlDataGroup): bool {.noSideEffect,
    importcpp: "IsTransform", header: "VrmlData_Group.hxx".}
proc clone*(this: VrmlDataGroup; theOther: Handle[VrmlDataNode]): Handle[VrmlDataNode] {.
    noSideEffect, importcpp: "Clone", header: "VrmlData_Group.hxx".}
proc read*(this: var VrmlDataGroup; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Group.hxx".}
proc write*(this: VrmlDataGroup; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Group.hxx".}
proc findNode*(this: VrmlDataGroup; theName: cstring; theLocation: var Trsf): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "FindNode",
                   header: "VrmlData_Group.hxx".}
proc shape*(this: var VrmlDataGroup; theShape: var TopoDS_Shape;
           pMapApp: ptr VrmlDataDataMapOfShapeAppearance) {.importcpp: "Shape",
    header: "VrmlData_Group.hxx".}
type
  VrmlDataGroupbaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_Group::get_type_name(@)",
                            header: "VrmlData_Group.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Group::get_type_descriptor(@)",
    header: "VrmlData_Group.hxx".}
proc dynamicType*(this: VrmlDataGroup): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Group.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Group"
type
  HandleC1C1* = Handle[VrmlDataGroup]


























