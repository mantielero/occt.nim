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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_ElementarySurface

discard "forward decl of StepGeom_Plane"
discard "forward decl of StepGeom_Plane"
type
  Handle_StepGeom_Plane* = handle[StepGeom_Plane]
  StepGeom_Plane* {.importcpp: "StepGeom_Plane", header: "StepGeom_Plane.hxx", bycopy.} = object of StepGeom_ElementarySurface ##
                                                                                                                     ## !
                                                                                                                     ## Returns
                                                                                                                     ## a
                                                                                                                     ## Plane


proc constructStepGeom_Plane*(): StepGeom_Plane {.constructor,
    importcpp: "StepGeom_Plane(@)", header: "StepGeom_Plane.hxx".}
type
  StepGeom_Planebase_type* = StepGeom_ElementarySurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_Plane::get_type_name(@)",
                              header: "StepGeom_Plane.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Plane::get_type_descriptor(@)",
    header: "StepGeom_Plane.hxx".}
proc DynamicType*(this: StepGeom_Plane): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Plane.hxx".}