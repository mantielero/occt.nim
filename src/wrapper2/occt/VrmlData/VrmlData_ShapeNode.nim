##  Created on: 2006-05-25
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
  VrmlData_Appearance, VrmlData_Geometry

## *
##   Implementation of the Shape node type
##

type
  VrmlData_ShapeNode* {.importcpp: "VrmlData_ShapeNode",
                       header: "VrmlData_ShapeNode.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                     ## *
                                                                                     ##  Empty constructor
                                                                                     ##
                                                                                     ##  ---------- PROTECTED METHODS ----------
                                                                                     ##  ---------- PRIVATE FIELDS ----------
                                                                                     ##  Declaration of CASCADE RTTI


proc constructVrmlData_ShapeNode*(): VrmlData_ShapeNode {.constructor,
    importcpp: "VrmlData_ShapeNode(@)", header: "VrmlData_ShapeNode.hxx".}
proc constructVrmlData_ShapeNode*(theScene: VrmlData_Scene; theName: cstring): VrmlData_ShapeNode {.
    constructor, importcpp: "VrmlData_ShapeNode(@)",
    header: "VrmlData_ShapeNode.hxx".}
proc Appearance*(this: VrmlData_ShapeNode): handle[VrmlData_Appearance] {.
    noSideEffect, importcpp: "Appearance", header: "VrmlData_ShapeNode.hxx".}
proc Geometry*(this: VrmlData_ShapeNode): handle[VrmlData_Geometry] {.noSideEffect,
    importcpp: "Geometry", header: "VrmlData_ShapeNode.hxx".}
proc SetAppearance*(this: var VrmlData_ShapeNode;
                   theAppear: handle[VrmlData_Appearance]) {.
    importcpp: "SetAppearance", header: "VrmlData_ShapeNode.hxx".}
proc SetGeometry*(this: var VrmlData_ShapeNode;
                 theGeometry: handle[VrmlData_Geometry]) {.
    importcpp: "SetGeometry", header: "VrmlData_ShapeNode.hxx".}
proc Clone*(this: VrmlData_ShapeNode; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_ShapeNode.hxx".}
proc Read*(this: var VrmlData_ShapeNode; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_ShapeNode.hxx".}
proc Write*(this: VrmlData_ShapeNode; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_ShapeNode.hxx".}
proc IsDefault*(this: VrmlData_ShapeNode): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_ShapeNode.hxx".}
type
  VrmlData_ShapeNodebase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_ShapeNode::get_type_name(@)",
                              header: "VrmlData_ShapeNode.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_ShapeNode::get_type_descriptor(@)",
    header: "VrmlData_ShapeNode.hxx".}
proc DynamicType*(this: VrmlData_ShapeNode): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_ShapeNode.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_ShapeNode"
type
  Handle_VrmlData_ShapeNode* = handle[VrmlData_ShapeNode]
