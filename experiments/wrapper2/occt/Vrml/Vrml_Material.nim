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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Quantity/Quantity_HArray1OfColor, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Transient, ../Standard/Standard_OStream

discard "forward decl of Vrml_Material"
discard "forward decl of Vrml_Material"
type
  Handle_Vrml_Material* = handle[Vrml_Material]

## ! defines a Material node of VRML specifying properties of geometry
## ! and its appearance.
## ! This node defines the current surface material properties for all subsequent shapes.
## ! Material sets several components of the current material during traversal. Different shapes
## ! interpret materials with multiple values differently. To bind materials to shapes, use a
## ! MaterialBinding node.

type
  Vrml_Material* {.importcpp: "Vrml_Material", header: "Vrml_Material.hxx", bycopy.} = object of Standard_Transient


proc constructVrml_Material*(aAmbientColor: handle[Quantity_HArray1OfColor];
                            aDiffuseColor: handle[Quantity_HArray1OfColor];
                            aSpecularColor: handle[Quantity_HArray1OfColor];
                            aEmissiveColor: handle[Quantity_HArray1OfColor];
                            aShininess: handle[TColStd_HArray1OfReal];
                            aTransparency: handle[TColStd_HArray1OfReal]): Vrml_Material {.
    constructor, importcpp: "Vrml_Material(@)", header: "Vrml_Material.hxx".}
proc constructVrml_Material*(): Vrml_Material {.constructor,
    importcpp: "Vrml_Material(@)", header: "Vrml_Material.hxx".}
proc SetAmbientColor*(this: var Vrml_Material;
                     aAmbientColor: handle[Quantity_HArray1OfColor]) {.
    importcpp: "SetAmbientColor", header: "Vrml_Material.hxx".}
proc AmbientColor*(this: Vrml_Material): handle[Quantity_HArray1OfColor] {.
    noSideEffect, importcpp: "AmbientColor", header: "Vrml_Material.hxx".}
proc SetDiffuseColor*(this: var Vrml_Material;
                     aDiffuseColor: handle[Quantity_HArray1OfColor]) {.
    importcpp: "SetDiffuseColor", header: "Vrml_Material.hxx".}
proc DiffuseColor*(this: Vrml_Material): handle[Quantity_HArray1OfColor] {.
    noSideEffect, importcpp: "DiffuseColor", header: "Vrml_Material.hxx".}
proc SetSpecularColor*(this: var Vrml_Material;
                      aSpecularColor: handle[Quantity_HArray1OfColor]) {.
    importcpp: "SetSpecularColor", header: "Vrml_Material.hxx".}
proc SpecularColor*(this: Vrml_Material): handle[Quantity_HArray1OfColor] {.
    noSideEffect, importcpp: "SpecularColor", header: "Vrml_Material.hxx".}
proc SetEmissiveColor*(this: var Vrml_Material;
                      aEmissiveColor: handle[Quantity_HArray1OfColor]) {.
    importcpp: "SetEmissiveColor", header: "Vrml_Material.hxx".}
proc EmissiveColor*(this: Vrml_Material): handle[Quantity_HArray1OfColor] {.
    noSideEffect, importcpp: "EmissiveColor", header: "Vrml_Material.hxx".}
proc SetShininess*(this: var Vrml_Material;
                  aShininess: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetShininess", header: "Vrml_Material.hxx".}
proc Shininess*(this: Vrml_Material): handle[TColStd_HArray1OfReal] {.noSideEffect,
    importcpp: "Shininess", header: "Vrml_Material.hxx".}
proc SetTransparency*(this: var Vrml_Material;
                     aTransparency: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetTransparency", header: "Vrml_Material.hxx".}
proc Transparency*(this: Vrml_Material): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "Transparency", header: "Vrml_Material.hxx".}
proc Print*(this: Vrml_Material; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Material.hxx".}
type
  Vrml_Materialbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Vrml_Material::get_type_name(@)",
                              header: "Vrml_Material.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Vrml_Material::get_type_descriptor(@)",
    header: "Vrml_Material.hxx".}
proc DynamicType*(this: Vrml_Material): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_Material.hxx".}