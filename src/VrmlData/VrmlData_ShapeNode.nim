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

## *
##   Implementation of the Shape node type
##

type
  VrmlDataShapeNode* {.importcpp: "VrmlData_ShapeNode",
                      header: "VrmlData_ShapeNode.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
                                                                                   ## *
                                                                                   ##  Empty constructor
                                                                                   ##
                                                                                   ##  ---------- PROTECTED METHODS ----------
                                                                                   ##  ---------- PRIVATE FIELDS ----------
                                                                                   ##  Declaration of CASCADE RTTI


proc constructVrmlDataShapeNode*(): VrmlDataShapeNode {.constructor,
    importcpp: "VrmlData_ShapeNode(@)", header: "VrmlData_ShapeNode.hxx".}
proc constructVrmlDataShapeNode*(theScene: VrmlDataScene; theName: cstring): VrmlDataShapeNode {.
    constructor, importcpp: "VrmlData_ShapeNode(@)",
    header: "VrmlData_ShapeNode.hxx".}
proc appearance*(this: VrmlDataShapeNode): Handle[VrmlDataAppearance] {.
    noSideEffect, importcpp: "Appearance", header: "VrmlData_ShapeNode.hxx".}
proc geometry*(this: VrmlDataShapeNode): Handle[VrmlDataGeometry] {.noSideEffect,
    importcpp: "Geometry", header: "VrmlData_ShapeNode.hxx".}
proc setAppearance*(this: var VrmlDataShapeNode;
                   theAppear: Handle[VrmlDataAppearance]) {.
    importcpp: "SetAppearance", header: "VrmlData_ShapeNode.hxx".}
proc setGeometry*(this: var VrmlDataShapeNode; theGeometry: Handle[VrmlDataGeometry]) {.
    importcpp: "SetGeometry", header: "VrmlData_ShapeNode.hxx".}
proc clone*(this: VrmlDataShapeNode; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone",
                   header: "VrmlData_ShapeNode.hxx".}
proc read*(this: var VrmlDataShapeNode; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_ShapeNode.hxx".}
proc write*(this: VrmlDataShapeNode; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_ShapeNode.hxx".}
proc isDefault*(this: VrmlDataShapeNode): bool {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_ShapeNode.hxx".}
type
  VrmlDataShapeNodebaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_ShapeNode::get_type_name(@)",
                            header: "VrmlData_ShapeNode.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_ShapeNode::get_type_descriptor(@)",
    header: "VrmlData_ShapeNode.hxx".}
proc dynamicType*(this: VrmlDataShapeNode): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_ShapeNode.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_ShapeNode"
type
  HandleVrmlDataShapeNode* = Handle[VrmlDataShapeNode]















































