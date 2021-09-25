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
##   Implementation of the Material node
##

type
  VrmlDataMaterial* {.importcpp: "VrmlData_Material",
                     header: "VrmlData_Material.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
                                                                                 ## *
                                                                                 ##  Empty constructor
                                                                                 ##
                                                                                 ##  ---------- PROTECTED METHODS ----------
                                                                                 ##  ---------- PRIVATE FIELDS ----------
                                                                                 ##  Declaration of CASCADE RTTI


proc constructVrmlDataMaterial*(): VrmlDataMaterial {.constructor,
    importcpp: "VrmlData_Material(@)", header: "VrmlData_Material.hxx".}
proc constructVrmlDataMaterial*(theScene: VrmlDataScene; theName: cstring;
                               theAmbientIntensity: float = -1.0;
                               theShininess: float = -1.0;
                               theTransparency: float = -1.0): VrmlDataMaterial {.
    constructor, importcpp: "VrmlData_Material(@)", header: "VrmlData_Material.hxx".}
proc ambientIntensity*(this: VrmlDataMaterial): float {.noSideEffect,
    importcpp: "AmbientIntensity", header: "VrmlData_Material.hxx".}
proc shininess*(this: VrmlDataMaterial): float {.noSideEffect,
    importcpp: "Shininess", header: "VrmlData_Material.hxx".}
proc transparency*(this: VrmlDataMaterial): float {.noSideEffect,
    importcpp: "Transparency", header: "VrmlData_Material.hxx".}
proc diffuseColor*(this: VrmlDataMaterial): QuantityColor {.noSideEffect,
    importcpp: "DiffuseColor", header: "VrmlData_Material.hxx".}
proc emissiveColor*(this: VrmlDataMaterial): QuantityColor {.noSideEffect,
    importcpp: "EmissiveColor", header: "VrmlData_Material.hxx".}
proc specularColor*(this: VrmlDataMaterial): QuantityColor {.noSideEffect,
    importcpp: "SpecularColor", header: "VrmlData_Material.hxx".}
proc setAmbientIntensity*(this: var VrmlDataMaterial; theAmbientIntensity: float) {.
    importcpp: "SetAmbientIntensity", header: "VrmlData_Material.hxx".}
proc setShininess*(this: var VrmlDataMaterial; theShininess: float) {.
    importcpp: "SetShininess", header: "VrmlData_Material.hxx".}
proc setTransparency*(this: var VrmlDataMaterial; theTransparency: float) {.
    importcpp: "SetTransparency", header: "VrmlData_Material.hxx".}
proc setDiffuseColor*(this: var VrmlDataMaterial; theColor: QuantityColor) {.
    importcpp: "SetDiffuseColor", header: "VrmlData_Material.hxx".}
proc setEmissiveColor*(this: var VrmlDataMaterial; theColor: QuantityColor) {.
    importcpp: "SetEmissiveColor", header: "VrmlData_Material.hxx".}
proc setSpecularColor*(this: var VrmlDataMaterial; theColor: QuantityColor) {.
    importcpp: "SetSpecularColor", header: "VrmlData_Material.hxx".}
proc clone*(this: VrmlDataMaterial; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone",
                   header: "VrmlData_Material.hxx".}
proc read*(this: var VrmlDataMaterial; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Material.hxx".}
proc write*(this: VrmlDataMaterial; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Material.hxx".}
proc isDefault*(this: VrmlDataMaterial): bool {.noSideEffect, importcpp: "IsDefault",
    header: "VrmlData_Material.hxx".}
type
  VrmlDataMaterialbaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_Material::get_type_name(@)",
                            header: "VrmlData_Material.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Material::get_type_descriptor(@)",
    header: "VrmlData_Material.hxx".}
proc dynamicType*(this: VrmlDataMaterial): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Material.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Material"
type
  HandleVrmlDataMaterial* = Handle[VrmlDataMaterial]

