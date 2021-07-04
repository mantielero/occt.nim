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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_BSplineCurve

discard "forward decl of StepGeom_QuasiUniformCurve"
discard "forward decl of StepGeom_QuasiUniformCurve"
type
  Handle_StepGeom_QuasiUniformCurve* = handle[StepGeom_QuasiUniformCurve]
  StepGeom_QuasiUniformCurve* {.importcpp: "StepGeom_QuasiUniformCurve",
                               header: "StepGeom_QuasiUniformCurve.hxx", bycopy.} = object of StepGeom_BSplineCurve ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## a
                                                                                                             ## QuasiUniformCurve


proc constructStepGeom_QuasiUniformCurve*(): StepGeom_QuasiUniformCurve {.
    constructor, importcpp: "StepGeom_QuasiUniformCurve(@)",
    header: "StepGeom_QuasiUniformCurve.hxx".}
type
  StepGeom_QuasiUniformCurvebase_type* = StepGeom_BSplineCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_QuasiUniformCurve::get_type_name(@)",
                              header: "StepGeom_QuasiUniformCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_QuasiUniformCurve::get_type_descriptor(@)",
    header: "StepGeom_QuasiUniformCurve.hxx".}
proc DynamicType*(this: StepGeom_QuasiUniformCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_QuasiUniformCurve.hxx".}