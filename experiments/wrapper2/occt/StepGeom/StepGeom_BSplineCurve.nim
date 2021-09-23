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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  StepGeom_HArray1OfCartesianPoint, StepGeom_BSplineCurveForm,
  ../StepData/StepData_Logical, StepGeom_BoundedCurve

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_BSplineCurve"
discard "forward decl of StepGeom_BSplineCurve"
type
  Handle_StepGeom_BSplineCurve* = handle[StepGeom_BSplineCurve]
  StepGeom_BSplineCurve* {.importcpp: "StepGeom_BSplineCurve",
                          header: "StepGeom_BSplineCurve.hxx", bycopy.} = object of StepGeom_BoundedCurve ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## BSplineCurve


proc constructStepGeom_BSplineCurve*(): StepGeom_BSplineCurve {.constructor,
    importcpp: "StepGeom_BSplineCurve(@)", header: "StepGeom_BSplineCurve.hxx".}
proc Init*(this: var StepGeom_BSplineCurve; aName: handle[TCollection_HAsciiString];
          aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical) {.importcpp: "Init",
    header: "StepGeom_BSplineCurve.hxx".}
proc SetDegree*(this: var StepGeom_BSplineCurve; aDegree: Standard_Integer) {.
    importcpp: "SetDegree", header: "StepGeom_BSplineCurve.hxx".}
proc Degree*(this: StepGeom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "StepGeom_BSplineCurve.hxx".}
proc SetControlPointsList*(this: var StepGeom_BSplineCurve; aControlPointsList: handle[
    StepGeom_HArray1OfCartesianPoint]) {.importcpp: "SetControlPointsList",
                                        header: "StepGeom_BSplineCurve.hxx".}
proc ControlPointsList*(this: StepGeom_BSplineCurve): handle[
    StepGeom_HArray1OfCartesianPoint] {.noSideEffect,
                                       importcpp: "ControlPointsList",
                                       header: "StepGeom_BSplineCurve.hxx".}
proc ControlPointsListValue*(this: StepGeom_BSplineCurve; num: Standard_Integer): handle[
    StepGeom_CartesianPoint] {.noSideEffect, importcpp: "ControlPointsListValue",
                              header: "StepGeom_BSplineCurve.hxx".}
proc NbControlPointsList*(this: StepGeom_BSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbControlPointsList",
    header: "StepGeom_BSplineCurve.hxx".}
proc SetCurveForm*(this: var StepGeom_BSplineCurve;
                  aCurveForm: StepGeom_BSplineCurveForm) {.
    importcpp: "SetCurveForm", header: "StepGeom_BSplineCurve.hxx".}
proc CurveForm*(this: StepGeom_BSplineCurve): StepGeom_BSplineCurveForm {.
    noSideEffect, importcpp: "CurveForm", header: "StepGeom_BSplineCurve.hxx".}
proc SetClosedCurve*(this: var StepGeom_BSplineCurve; aClosedCurve: StepData_Logical) {.
    importcpp: "SetClosedCurve", header: "StepGeom_BSplineCurve.hxx".}
proc ClosedCurve*(this: StepGeom_BSplineCurve): StepData_Logical {.noSideEffect,
    importcpp: "ClosedCurve", header: "StepGeom_BSplineCurve.hxx".}
proc SetSelfIntersect*(this: var StepGeom_BSplineCurve;
                      aSelfIntersect: StepData_Logical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_BSplineCurve.hxx".}
proc SelfIntersect*(this: StepGeom_BSplineCurve): StepData_Logical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_BSplineCurve.hxx".}
type
  StepGeom_BSplineCurvebase_type* = StepGeom_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_BSplineCurve::get_type_name(@)",
                              header: "StepGeom_BSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_BSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_BSplineCurve.hxx".}
proc DynamicType*(this: StepGeom_BSplineCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_BSplineCurve.hxx".}