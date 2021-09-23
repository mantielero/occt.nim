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
  VrmlData_Node, ../Quantity/Quantity_Color

## *
##   Implementation of the Material node
##

type
  VrmlData_Material* {.importcpp: "VrmlData_Material",
                      header: "VrmlData_Material.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                   ## *
                                                                                   ##  Empty constructor
                                                                                   ##
                                                                                   ##  ---------- PROTECTED METHODS ----------
                                                                                   ##  ---------- PRIVATE FIELDS ----------
                                                                                   ##  Declaration of CASCADE RTTI


proc constructVrmlData_Material*(): VrmlData_Material {.constructor,
    importcpp: "VrmlData_Material(@)", header: "VrmlData_Material.hxx".}
proc constructVrmlData_Material*(theScene: VrmlData_Scene; theName: cstring;
                                theAmbientIntensity: Standard_Real = -1.0;
                                theShininess: Standard_Real = -1.0;
                                theTransparency: Standard_Real = -1.0): VrmlData_Material {.
    constructor, importcpp: "VrmlData_Material(@)", header: "VrmlData_Material.hxx".}
proc AmbientIntensity*(this: VrmlData_Material): Standard_Real {.noSideEffect,
    importcpp: "AmbientIntensity", header: "VrmlData_Material.hxx".}
proc Shininess*(this: VrmlData_Material): Standard_Real {.noSideEffect,
    importcpp: "Shininess", header: "VrmlData_Material.hxx".}
proc Transparency*(this: VrmlData_Material): Standard_Real {.noSideEffect,
    importcpp: "Transparency", header: "VrmlData_Material.hxx".}
proc DiffuseColor*(this: VrmlData_Material): Quantity_Color {.noSideEffect,
    importcpp: "DiffuseColor", header: "VrmlData_Material.hxx".}
proc EmissiveColor*(this: VrmlData_Material): Quantity_Color {.noSideEffect,
    importcpp: "EmissiveColor", header: "VrmlData_Material.hxx".}
proc SpecularColor*(this: VrmlData_Material): Quantity_Color {.noSideEffect,
    importcpp: "SpecularColor", header: "VrmlData_Material.hxx".}
proc SetAmbientIntensity*(this: var VrmlData_Material;
                         theAmbientIntensity: Standard_Real) {.
    importcpp: "SetAmbientIntensity", header: "VrmlData_Material.hxx".}
proc SetShininess*(this: var VrmlData_Material; theShininess: Standard_Real) {.
    importcpp: "SetShininess", header: "VrmlData_Material.hxx".}
proc SetTransparency*(this: var VrmlData_Material; theTransparency: Standard_Real) {.
    importcpp: "SetTransparency", header: "VrmlData_Material.hxx".}
proc SetDiffuseColor*(this: var VrmlData_Material; theColor: Quantity_Color) {.
    importcpp: "SetDiffuseColor", header: "VrmlData_Material.hxx".}
proc SetEmissiveColor*(this: var VrmlData_Material; theColor: Quantity_Color) {.
    importcpp: "SetEmissiveColor", header: "VrmlData_Material.hxx".}
proc SetSpecularColor*(this: var VrmlData_Material; theColor: Quantity_Color) {.
    importcpp: "SetSpecularColor", header: "VrmlData_Material.hxx".}
proc Clone*(this: VrmlData_Material; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_Material.hxx".}
proc Read*(this: var VrmlData_Material; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Material.hxx".}
proc Write*(this: VrmlData_Material; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Material.hxx".}
proc IsDefault*(this: VrmlData_Material): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_Material.hxx".}
type
  VrmlData_Materialbase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_Material::get_type_name(@)",
                              header: "VrmlData_Material.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Material::get_type_descriptor(@)",
    header: "VrmlData_Material.hxx".}
proc DynamicType*(this: VrmlData_Material): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Material.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Material"
type
  Handle_VrmlData_Material* = handle[VrmlData_Material]
