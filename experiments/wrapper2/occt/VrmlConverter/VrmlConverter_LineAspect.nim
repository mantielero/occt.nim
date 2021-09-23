##  Created on: 1997-04-23
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of Vrml_Material"
discard "forward decl of VrmlConverter_LineAspect"
discard "forward decl of VrmlConverter_LineAspect"
type
  Handle_VrmlConverter_LineAspect* = handle[VrmlConverter_LineAspect]

## ! qualifies the aspect properties for
## ! the VRML conversation of a Curve and  a  DeflectionCurve .

type
  VrmlConverter_LineAspect* {.importcpp: "VrmlConverter_LineAspect",
                             header: "VrmlConverter_LineAspect.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## create
                                                                                                      ## a
                                                                                                      ## default
                                                                                                      ## LineAspect.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Default
                                                                                                      ## value:
                                                                                                      ## HasMaterial
                                                                                                      ## =
                                                                                                      ## False
                                                                                                      ## -
                                                                                                      ## a
                                                                                                      ## line
                                                                                                      ## hasn't
                                                                                                      ## own
                                                                                                      ## material
                                                                                                      ## (color)


proc constructVrmlConverter_LineAspect*(): VrmlConverter_LineAspect {.constructor,
    importcpp: "VrmlConverter_LineAspect(@)",
    header: "VrmlConverter_LineAspect.hxx".}
proc constructVrmlConverter_LineAspect*(aMaterial: handle[Vrml_Material];
                                       OnOff: Standard_Boolean): VrmlConverter_LineAspect {.
    constructor, importcpp: "VrmlConverter_LineAspect(@)",
    header: "VrmlConverter_LineAspect.hxx".}
proc SetMaterial*(this: var VrmlConverter_LineAspect;
                 aMaterial: handle[Vrml_Material]) {.importcpp: "SetMaterial",
    header: "VrmlConverter_LineAspect.hxx".}
proc Material*(this: VrmlConverter_LineAspect): handle[Vrml_Material] {.
    noSideEffect, importcpp: "Material", header: "VrmlConverter_LineAspect.hxx".}
proc SetHasMaterial*(this: var VrmlConverter_LineAspect; OnOff: Standard_Boolean) {.
    importcpp: "SetHasMaterial", header: "VrmlConverter_LineAspect.hxx".}
proc HasMaterial*(this: VrmlConverter_LineAspect): Standard_Boolean {.noSideEffect,
    importcpp: "HasMaterial", header: "VrmlConverter_LineAspect.hxx".}
type
  VrmlConverter_LineAspectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "VrmlConverter_LineAspect::get_type_name(@)",
                              header: "VrmlConverter_LineAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlConverter_LineAspect::get_type_descriptor(@)",
    header: "VrmlConverter_LineAspect.hxx".}
proc DynamicType*(this: VrmlConverter_LineAspect): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlConverter_LineAspect.hxx".}