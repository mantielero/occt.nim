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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Vrml/Vrml_ShapeHints,
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient

discard "forward decl of Vrml_Material"
discard "forward decl of Vrml_ShapeHints"
discard "forward decl of VrmlConverter_ShadingAspect"
discard "forward decl of VrmlConverter_ShadingAspect"
type
  Handle_VrmlConverter_ShadingAspect* = handle[VrmlConverter_ShadingAspect]

## ! qualifies the aspect properties for
## ! the VRML conversation of ShadedShape .

type
  VrmlConverter_ShadingAspect* {.importcpp: "VrmlConverter_ShadingAspect",
                                header: "VrmlConverter_ShadingAspect.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## create
                                                                                                            ## a
                                                                                                            ## default
                                                                                                            ## ShadingAspect.


proc constructVrmlConverter_ShadingAspect*(): VrmlConverter_ShadingAspect {.
    constructor, importcpp: "VrmlConverter_ShadingAspect(@)",
    header: "VrmlConverter_ShadingAspect.hxx".}
proc SetFrontMaterial*(this: var VrmlConverter_ShadingAspect;
                      aMaterial: handle[Vrml_Material]) {.
    importcpp: "SetFrontMaterial", header: "VrmlConverter_ShadingAspect.hxx".}
proc FrontMaterial*(this: VrmlConverter_ShadingAspect): handle[Vrml_Material] {.
    noSideEffect, importcpp: "FrontMaterial",
    header: "VrmlConverter_ShadingAspect.hxx".}
proc SetShapeHints*(this: var VrmlConverter_ShadingAspect;
                   aShapeHints: Vrml_ShapeHints) {.importcpp: "SetShapeHints",
    header: "VrmlConverter_ShadingAspect.hxx".}
proc ShapeHints*(this: VrmlConverter_ShadingAspect): Vrml_ShapeHints {.noSideEffect,
    importcpp: "ShapeHints", header: "VrmlConverter_ShadingAspect.hxx".}
proc SetHasNormals*(this: var VrmlConverter_ShadingAspect; OnOff: Standard_Boolean) {.
    importcpp: "SetHasNormals", header: "VrmlConverter_ShadingAspect.hxx".}
proc HasNormals*(this: VrmlConverter_ShadingAspect): Standard_Boolean {.
    noSideEffect, importcpp: "HasNormals",
    header: "VrmlConverter_ShadingAspect.hxx".}
proc SetHasMaterial*(this: var VrmlConverter_ShadingAspect; OnOff: Standard_Boolean) {.
    importcpp: "SetHasMaterial", header: "VrmlConverter_ShadingAspect.hxx".}
proc HasMaterial*(this: VrmlConverter_ShadingAspect): Standard_Boolean {.
    noSideEffect, importcpp: "HasMaterial",
    header: "VrmlConverter_ShadingAspect.hxx".}
type
  VrmlConverter_ShadingAspectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "VrmlConverter_ShadingAspect::get_type_name(@)",
                              header: "VrmlConverter_ShadingAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlConverter_ShadingAspect::get_type_descriptor(@)",
    header: "VrmlConverter_ShadingAspect.hxx".}
proc DynamicType*(this: VrmlConverter_ShadingAspect): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "VrmlConverter_ShadingAspect.hxx".}