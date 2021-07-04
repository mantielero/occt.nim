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
  VrmlData_Material, VrmlData_Texture, VrmlData_TextureTransform

## *
##   Implementation of the Appearance node type
##

type
  VrmlData_Appearance* {.importcpp: "VrmlData_Appearance",
                        header: "VrmlData_Appearance.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                       ## *
                                                                                       ##  Empty constructor
                                                                                       ##
                                                                                       ##  ---------- PROTECTED METHODS ----------
                                                                                       ##  ---------- PRIVATE FIELDS ----------
                                                                                       ##  Declaration of CASCADE RTTI


proc constructVrmlData_Appearance*(): VrmlData_Appearance {.constructor,
    importcpp: "VrmlData_Appearance(@)", header: "VrmlData_Appearance.hxx".}
proc constructVrmlData_Appearance*(theScene: VrmlData_Scene; theName: cstring): VrmlData_Appearance {.
    constructor, importcpp: "VrmlData_Appearance(@)",
    header: "VrmlData_Appearance.hxx".}
proc Material*(this: VrmlData_Appearance): handle[VrmlData_Material] {.noSideEffect,
    importcpp: "Material", header: "VrmlData_Appearance.hxx".}
proc Texture*(this: VrmlData_Appearance): handle[VrmlData_Texture] {.noSideEffect,
    importcpp: "Texture", header: "VrmlData_Appearance.hxx".}
proc TextureTransform*(this: VrmlData_Appearance): handle[VrmlData_TextureTransform] {.
    noSideEffect, importcpp: "TextureTransform", header: "VrmlData_Appearance.hxx".}
proc SetMaterial*(this: var VrmlData_Appearance; theMat: handle[VrmlData_Material]) {.
    importcpp: "SetMaterial", header: "VrmlData_Appearance.hxx".}
proc SetTexture*(this: var VrmlData_Appearance; theTexture: handle[VrmlData_Texture]) {.
    importcpp: "SetTexture", header: "VrmlData_Appearance.hxx".}
proc SetTextureTransform*(this: var VrmlData_Appearance;
                         theTT: handle[VrmlData_TextureTransform]) {.
    importcpp: "SetTextureTransform", header: "VrmlData_Appearance.hxx".}
proc Clone*(this: VrmlData_Appearance; a2: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_Appearance.hxx".}
proc Read*(this: var VrmlData_Appearance; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Appearance.hxx".}
proc Write*(this: VrmlData_Appearance; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Appearance.hxx".}
proc IsDefault*(this: VrmlData_Appearance): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_Appearance.hxx".}
type
  VrmlData_Appearancebase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_Appearance::get_type_name(@)",
                              header: "VrmlData_Appearance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Appearance::get_type_descriptor(@)",
    header: "VrmlData_Appearance.hxx".}
proc DynamicType*(this: VrmlData_Appearance): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Appearance.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Appearance"
type
  Handle_VrmlData_Appearance* = handle[VrmlData_Appearance]
