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

discard "forward decl of StepGeom_BezierCurve"
discard "forward decl of StepGeom_BezierCurve"
type
  HandleC1C1* = Handle[StepGeomBezierCurve]
  StepGeomBezierCurve* {.importcpp: "StepGeom_BezierCurve",
                        header: "StepGeom_BezierCurve.hxx", bycopy.} = object of StepGeomBSplineCurve ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## a
                                                                                               ## BezierCurve


proc constructStepGeomBezierCurve*(): StepGeomBezierCurve {.constructor,
    importcpp: "StepGeom_BezierCurve(@)", header: "StepGeom_BezierCurve.hxx".}
type
  StepGeomBezierCurvebaseType* = StepGeomBSplineCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_BezierCurve::get_type_name(@)",
                            header: "StepGeom_BezierCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_BezierCurve::get_type_descriptor(@)",
    header: "StepGeom_BezierCurve.hxx".}
proc dynamicType*(this: StepGeomBezierCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_BezierCurve.hxx".}