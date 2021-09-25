##  Created on: 1997-03-12
##  Created by: Alexander BRIVIN
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
discard "forward decl of Vrml_ShapeHints"
discard "forward decl of VrmlConverter_ShadingAspect"
discard "forward decl of VrmlConverter_ShadingAspect"
type
  HandleVrmlConverterShadingAspect* = Handle[VrmlConverterShadingAspect]

## ! qualifies the aspect properties for
## ! the VRML conversation of ShadedShape .

type
  VrmlConverterShadingAspect* {.importcpp: "VrmlConverter_ShadingAspect",
                               header: "VrmlConverter_ShadingAspect.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## create
                                                                                                          ## a
                                                                                                          ## default
                                                                                                          ## ShadingAspect.


proc constructVrmlConverterShadingAspect*(): VrmlConverterShadingAspect {.
    constructor, importcpp: "VrmlConverter_ShadingAspect(@)",
    header: "VrmlConverter_ShadingAspect.hxx".}
proc setFrontMaterial*(this: var VrmlConverterShadingAspect;
                      aMaterial: Handle[VrmlMaterial]) {.
    importcpp: "SetFrontMaterial", header: "VrmlConverter_ShadingAspect.hxx".}
proc frontMaterial*(this: VrmlConverterShadingAspect): Handle[VrmlMaterial] {.
    noSideEffect, importcpp: "FrontMaterial",
    header: "VrmlConverter_ShadingAspect.hxx".}
proc setShapeHints*(this: var VrmlConverterShadingAspect;
                   aShapeHints: VrmlShapeHints) {.importcpp: "SetShapeHints",
    header: "VrmlConverter_ShadingAspect.hxx".}
proc shapeHints*(this: VrmlConverterShadingAspect): VrmlShapeHints {.noSideEffect,
    importcpp: "ShapeHints", header: "VrmlConverter_ShadingAspect.hxx".}
proc setHasNormals*(this: var VrmlConverterShadingAspect; onOff: bool) {.
    importcpp: "SetHasNormals", header: "VrmlConverter_ShadingAspect.hxx".}
proc hasNormals*(this: VrmlConverterShadingAspect): bool {.noSideEffect,
    importcpp: "HasNormals", header: "VrmlConverter_ShadingAspect.hxx".}
proc setHasMaterial*(this: var VrmlConverterShadingAspect; onOff: bool) {.
    importcpp: "SetHasMaterial", header: "VrmlConverter_ShadingAspect.hxx".}
proc hasMaterial*(this: VrmlConverterShadingAspect): bool {.noSideEffect,
    importcpp: "HasMaterial", header: "VrmlConverter_ShadingAspect.hxx".}
type
  VrmlConverterShadingAspectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "VrmlConverter_ShadingAspect::get_type_name(@)",
                            header: "VrmlConverter_ShadingAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlConverter_ShadingAspect::get_type_descriptor(@)",
    header: "VrmlConverter_ShadingAspect.hxx".}
proc dynamicType*(this: VrmlConverterShadingAspect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "VrmlConverter_ShadingAspect.hxx".}
