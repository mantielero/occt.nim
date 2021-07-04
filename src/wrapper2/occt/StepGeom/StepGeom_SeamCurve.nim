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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_SurfaceCurve

discard "forward decl of StepGeom_SeamCurve"
discard "forward decl of StepGeom_SeamCurve"
type
  Handle_StepGeom_SeamCurve* = handle[StepGeom_SeamCurve]
  StepGeom_SeamCurve* {.importcpp: "StepGeom_SeamCurve",
                       header: "StepGeom_SeamCurve.hxx", bycopy.} = object of StepGeom_SurfaceCurve ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## a
                                                                                             ## SeamCurve


proc constructStepGeom_SeamCurve*(): StepGeom_SeamCurve {.constructor,
    importcpp: "StepGeom_SeamCurve(@)", header: "StepGeom_SeamCurve.hxx".}
type
  StepGeom_SeamCurvebase_type* = StepGeom_SurfaceCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_SeamCurve::get_type_name(@)",
                              header: "StepGeom_SeamCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_SeamCurve::get_type_descriptor(@)",
    header: "StepGeom_SeamCurve.hxx".}
proc DynamicType*(this: StepGeom_SeamCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_SeamCurve.hxx".}