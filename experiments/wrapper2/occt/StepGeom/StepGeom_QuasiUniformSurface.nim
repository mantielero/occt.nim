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

discard "forward decl of StepGeom_QuasiUniformSurface"
discard "forward decl of StepGeom_QuasiUniformSurface"
type
  Handle_StepGeom_QuasiUniformSurface* = handle[StepGeom_QuasiUniformSurface]
  StepGeom_QuasiUniformSurface* {.importcpp: "StepGeom_QuasiUniformSurface",
                                 header: "StepGeom_QuasiUniformSurface.hxx",
                                 bycopy.} = object of StepGeom_BSplineSurface ## ! Returns a
                                                                         ## QuasiUniformSurface


proc constructStepGeom_QuasiUniformSurface*(): StepGeom_QuasiUniformSurface {.
    constructor, importcpp: "StepGeom_QuasiUniformSurface(@)",
    header: "StepGeom_QuasiUniformSurface.hxx".}
type
  StepGeom_QuasiUniformSurfacebase_type* = StepGeom_BSplineSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_QuasiUniformSurface::get_type_name(@)",
                              header: "StepGeom_QuasiUniformSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_QuasiUniformSurface::get_type_descriptor(@)",
    header: "StepGeom_QuasiUniformSurface.hxx".}
proc DynamicType*(this: StepGeom_QuasiUniformSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_QuasiUniformSurface.hxx".}