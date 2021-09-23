##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of StepGeom_Point"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Sphere"
discard "forward decl of StepShape_Sphere"
type
  Handle_StepShape_Sphere* = handle[StepShape_Sphere]
  StepShape_Sphere* {.importcpp: "StepShape_Sphere",
                     header: "StepShape_Sphere.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## Sphere


proc constructStepShape_Sphere*(): StepShape_Sphere {.constructor,
    importcpp: "StepShape_Sphere(@)", header: "StepShape_Sphere.hxx".}
proc Init*(this: var StepShape_Sphere; aName: handle[TCollection_HAsciiString];
          aRadius: Standard_Real; aCentre: handle[StepGeom_Point]) {.
    importcpp: "Init", header: "StepShape_Sphere.hxx".}
proc SetRadius*(this: var StepShape_Sphere; aRadius: Standard_Real) {.
    importcpp: "SetRadius", header: "StepShape_Sphere.hxx".}
proc Radius*(this: StepShape_Sphere): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "StepShape_Sphere.hxx".}
proc SetCentre*(this: var StepShape_Sphere; aCentre: handle[StepGeom_Point]) {.
    importcpp: "SetCentre", header: "StepShape_Sphere.hxx".}
proc Centre*(this: StepShape_Sphere): handle[StepGeom_Point] {.noSideEffect,
    importcpp: "Centre", header: "StepShape_Sphere.hxx".}
type
  StepShape_Spherebase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_Sphere::get_type_name(@)",
                              header: "StepShape_Sphere.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_Sphere::get_type_descriptor(@)",
    header: "StepShape_Sphere.hxx".}
proc DynamicType*(this: StepShape_Sphere): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_Sphere.hxx".}