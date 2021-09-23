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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_BSplineSurface

discard "forward decl of StepGeom_BezierSurface"
discard "forward decl of StepGeom_BezierSurface"
type
  Handle_StepGeom_BezierSurface* = handle[StepGeom_BezierSurface]
  StepGeom_BezierSurface* {.importcpp: "StepGeom_BezierSurface",
                           header: "StepGeom_BezierSurface.hxx", bycopy.} = object of StepGeom_BSplineSurface ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## BezierSurface


proc constructStepGeom_BezierSurface*(): StepGeom_BezierSurface {.constructor,
    importcpp: "StepGeom_BezierSurface(@)", header: "StepGeom_BezierSurface.hxx".}
type
  StepGeom_BezierSurfacebase_type* = StepGeom_BSplineSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_BezierSurface::get_type_name(@)",
                              header: "StepGeom_BezierSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_BezierSurface::get_type_descriptor(@)",
    header: "StepGeom_BezierSurface.hxx".}
proc DynamicType*(this: StepGeom_BezierSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_BezierSurface.hxx".}