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

discard "forward decl of StepGeom_UniformCurve"
discard "forward decl of StepGeom_UniformCurve"
type
  Handle_StepGeom_UniformCurve* = handle[StepGeom_UniformCurve]
  StepGeom_UniformCurve* {.importcpp: "StepGeom_UniformCurve",
                          header: "StepGeom_UniformCurve.hxx", bycopy.} = object of StepGeom_BSplineCurve ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## UniformCurve


proc constructStepGeom_UniformCurve*(): StepGeom_UniformCurve {.constructor,
    importcpp: "StepGeom_UniformCurve(@)", header: "StepGeom_UniformCurve.hxx".}
type
  StepGeom_UniformCurvebase_type* = StepGeom_BSplineCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_UniformCurve::get_type_name(@)",
                              header: "StepGeom_UniformCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_UniformCurve::get_type_descriptor(@)",
    header: "StepGeom_UniformCurve.hxx".}
proc DynamicType*(this: StepGeom_UniformCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_UniformCurve.hxx".}