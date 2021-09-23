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
  VrmlData_Node, ../gp/gp_XY

## /  Implementation of the TextureTransform node

type
  VrmlData_TextureTransform* {.importcpp: "VrmlData_TextureTransform",
                              header: "VrmlData_TextureTransform.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                                   ## *
                                                                                                   ##  Empty constructor
                                                                                                   ##
                                                                                                   ##  ---------- PROTECTED METHODS ----------
                                                                                                   ##  ---------- PRIVATE FIELDS ----------
                                                                                                   ##  Declaration of CASCADE RTTI


proc constructVrmlData_TextureTransform*(): VrmlData_TextureTransform {.
    constructor, importcpp: "VrmlData_TextureTransform(@)",
    header: "VrmlData_TextureTransform.hxx".}
proc constructVrmlData_TextureTransform*(theScene: VrmlData_Scene; theName: cstring): VrmlData_TextureTransform {.
    constructor, importcpp: "VrmlData_TextureTransform(@)",
    header: "VrmlData_TextureTransform.hxx".}
proc Center*(this: VrmlData_TextureTransform): gp_XY {.noSideEffect,
    importcpp: "Center", header: "VrmlData_TextureTransform.hxx".}
proc Rotation*(this: VrmlData_TextureTransform): Standard_Real {.noSideEffect,
    importcpp: "Rotation", header: "VrmlData_TextureTransform.hxx".}
proc Scale*(this: VrmlData_TextureTransform): gp_XY {.noSideEffect,
    importcpp: "Scale", header: "VrmlData_TextureTransform.hxx".}
proc Translation*(this: VrmlData_TextureTransform): gp_XY {.noSideEffect,
    importcpp: "Translation", header: "VrmlData_TextureTransform.hxx".}
proc SetCenter*(this: var VrmlData_TextureTransform; V: gp_XY) {.
    importcpp: "SetCenter", header: "VrmlData_TextureTransform.hxx".}
proc SetRotation*(this: var VrmlData_TextureTransform; V: Standard_Real) {.
    importcpp: "SetRotation", header: "VrmlData_TextureTransform.hxx".}
proc SetScale*(this: var VrmlData_TextureTransform; V: gp_XY) {.importcpp: "SetScale",
    header: "VrmlData_TextureTransform.hxx".}
proc SetTranslation*(this: var VrmlData_TextureTransform; V: gp_XY) {.
    importcpp: "SetTranslation", header: "VrmlData_TextureTransform.hxx".}
type
  VrmlData_TextureTransformbase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_TextureTransform::get_type_name(@)",
                              header: "VrmlData_TextureTransform.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_TextureTransform::get_type_descriptor(@)",
    header: "VrmlData_TextureTransform.hxx".}
proc DynamicType*(this: VrmlData_TextureTransform): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlData_TextureTransform.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_TextureTransform"
type
  Handle_VrmlData_TextureTransform* = handle[VrmlData_TextureTransform]
