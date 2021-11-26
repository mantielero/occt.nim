##  Created on: 1997-02-10
##  Created by: Alexander BRIVIN and Dmitry TARASOV
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of Vrml_Material"
discard "forward decl of Vrml_Material"
type
  HandleC1C1* = Handle[VrmlMaterial]

## ! defines a Material node of VRML specifying properties of geometry
## ! and its appearance.
## ! This node defines the current surface material properties for all subsequent shapes.
## ! Material sets several components of the current material during traversal. Different shapes
## ! interpret materials with multiple values differently. To bind materials to shapes, use a
## ! MaterialBinding node.

type
  VrmlMaterial* {.importcpp: "Vrml_Material", header: "Vrml_Material.hxx", bycopy.} = object of StandardTransient


proc constructVrmlMaterial*(aAmbientColor: Handle[QuantityHArray1OfColor];
                           aDiffuseColor: Handle[QuantityHArray1OfColor];
                           aSpecularColor: Handle[QuantityHArray1OfColor];
                           aEmissiveColor: Handle[QuantityHArray1OfColor];
                           aShininess: Handle[TColStdHArray1OfReal];
                           aTransparency: Handle[TColStdHArray1OfReal]): VrmlMaterial {.
    constructor, importcpp: "Vrml_Material(@)", header: "Vrml_Material.hxx".}
proc constructVrmlMaterial*(): VrmlMaterial {.constructor,
    importcpp: "Vrml_Material(@)", header: "Vrml_Material.hxx".}
proc setAmbientColor*(this: var VrmlMaterial;
                     aAmbientColor: Handle[QuantityHArray1OfColor]) {.
    importcpp: "SetAmbientColor", header: "Vrml_Material.hxx".}
proc ambientColor*(this: VrmlMaterial): Handle[QuantityHArray1OfColor] {.
    noSideEffect, importcpp: "AmbientColor", header: "Vrml_Material.hxx".}
proc setDiffuseColor*(this: var VrmlMaterial;
                     aDiffuseColor: Handle[QuantityHArray1OfColor]) {.
    importcpp: "SetDiffuseColor", header: "Vrml_Material.hxx".}
proc diffuseColor*(this: VrmlMaterial): Handle[QuantityHArray1OfColor] {.
    noSideEffect, importcpp: "DiffuseColor", header: "Vrml_Material.hxx".}
proc setSpecularColor*(this: var VrmlMaterial;
                      aSpecularColor: Handle[QuantityHArray1OfColor]) {.
    importcpp: "SetSpecularColor", header: "Vrml_Material.hxx".}
proc specularColor*(this: VrmlMaterial): Handle[QuantityHArray1OfColor] {.
    noSideEffect, importcpp: "SpecularColor", header: "Vrml_Material.hxx".}
proc setEmissiveColor*(this: var VrmlMaterial;
                      aEmissiveColor: Handle[QuantityHArray1OfColor]) {.
    importcpp: "SetEmissiveColor", header: "Vrml_Material.hxx".}
proc emissiveColor*(this: VrmlMaterial): Handle[QuantityHArray1OfColor] {.
    noSideEffect, importcpp: "EmissiveColor", header: "Vrml_Material.hxx".}
proc setShininess*(this: var VrmlMaterial; aShininess: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetShininess", header: "Vrml_Material.hxx".}
proc shininess*(this: VrmlMaterial): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "Shininess", header: "Vrml_Material.hxx".}
proc setTransparency*(this: var VrmlMaterial;
                     aTransparency: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetTransparency", header: "Vrml_Material.hxx".}
proc transparency*(this: VrmlMaterial): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "Transparency", header: "Vrml_Material.hxx".}
proc print*(this: VrmlMaterial; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Material.hxx".}
type
  VrmlMaterialbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Vrml_Material::get_type_name(@)",
                            header: "Vrml_Material.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Vrml_Material::get_type_descriptor(@)",
    header: "Vrml_Material.hxx".}
proc dynamicType*(this: VrmlMaterial): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_Material.hxx".}

























