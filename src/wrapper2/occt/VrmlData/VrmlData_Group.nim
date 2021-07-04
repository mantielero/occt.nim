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

import
  VrmlData_ListOfNode, VrmlData_DataMapOfShapeAppearance, ../Bnd/Bnd_B3f,
  ../gp/gp_Trsf

discard "forward decl of TopoDS_Shape"
type
  VrmlData_Group* {.importcpp: "VrmlData_Group", header: "VrmlData_Group.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PROTECTED METHODS ----------
                                                                                                        ## *
                                                                                                        ##  Try to open a file by the given filename, using the search directories
                                                                                                        ##  list myVrmlDir of the Scene.
                                                                                                        ##
                                                                                                        ##  ---------- PRIVATE FIELDS ----------
                                                                                                        ##  Declaration of CASCADE RTTI

  VrmlData_GroupIterator* = Iterator

proc constructVrmlData_Group*(isTransform: Standard_Boolean = Standard_False): VrmlData_Group {.
    constructor, importcpp: "VrmlData_Group(@)", header: "VrmlData_Group.hxx".}
proc constructVrmlData_Group*(theScene: VrmlData_Scene; theName: cstring;
                             isTransform: Standard_Boolean = Standard_False): VrmlData_Group {.
    constructor, importcpp: "VrmlData_Group(@)", header: "VrmlData_Group.hxx".}
proc AddNode*(this: var VrmlData_Group; theNode: handle[VrmlData_Node]): var handle[
    VrmlData_Node] {.importcpp: "AddNode", header: "VrmlData_Group.hxx".}
proc RemoveNode*(this: var VrmlData_Group; theNode: handle[VrmlData_Node]): Standard_Boolean {.
    importcpp: "RemoveNode", header: "VrmlData_Group.hxx".}
proc NodeIterator*(this: VrmlData_Group): VrmlData_GroupIterator {.noSideEffect,
    importcpp: "NodeIterator", header: "VrmlData_Group.hxx".}
proc Box*(this: VrmlData_Group): Bnd_B3f {.noSideEffect, importcpp: "Box",
                                       header: "VrmlData_Group.hxx".}
proc SetBox*(this: var VrmlData_Group; theBox: Bnd_B3f) {.importcpp: "SetBox",
    header: "VrmlData_Group.hxx".}
proc SetTransform*(this: var VrmlData_Group; theTrsf: gp_Trsf): Standard_Boolean {.
    importcpp: "SetTransform", header: "VrmlData_Group.hxx".}
proc GetTransform*(this: VrmlData_Group): gp_Trsf {.noSideEffect,
    importcpp: "GetTransform", header: "VrmlData_Group.hxx".}
proc IsTransform*(this: VrmlData_Group): Standard_Boolean {.noSideEffect,
    importcpp: "IsTransform", header: "VrmlData_Group.hxx".}
proc Clone*(this: VrmlData_Group; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone", header: "VrmlData_Group.hxx".}
proc Read*(this: var VrmlData_Group; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Group.hxx".}
proc Write*(this: VrmlData_Group; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Group.hxx".}
proc FindNode*(this: VrmlData_Group; theName: cstring; theLocation: var gp_Trsf): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "FindNode",
                    header: "VrmlData_Group.hxx".}
proc Shape*(this: var VrmlData_Group; theShape: var TopoDS_Shape;
           pMapApp: ptr VrmlData_DataMapOfShapeAppearance) {.importcpp: "Shape",
    header: "VrmlData_Group.hxx".}
type
  VrmlData_Groupbase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_Group::get_type_name(@)",
                              header: "VrmlData_Group.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Group::get_type_descriptor(@)",
    header: "VrmlData_Group.hxx".}
proc DynamicType*(this: VrmlData_Group): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Group.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Group"
type
  Handle_VrmlData_Group* = handle[VrmlData_Group]
