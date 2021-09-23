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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfReal,
  StepGeom_KnotType, StepGeom_BSplineCurve, ../Standard/Standard_Integer,
  StepGeom_HArray1OfCartesianPoint, StepGeom_BSplineCurveForm,
  ../StepData/StepData_Logical, ../Standard/Standard_Real

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BSplineCurveWithKnots"
discard "forward decl of StepGeom_BSplineCurveWithKnots"
type
  Handle_StepGeom_BSplineCurveWithKnots* = handle[StepGeom_BSplineCurveWithKnots]
  StepGeom_BSplineCurveWithKnots* {.importcpp: "StepGeom_BSplineCurveWithKnots", header: "StepGeom_BSplineCurveWithKnots.hxx",
                                   bycopy.} = object of StepGeom_BSplineCurve ## ! Returns a
                                                                         ## BSplineCurveWithKnots


proc constructStepGeom_BSplineCurveWithKnots*(): StepGeom_BSplineCurveWithKnots {.
    constructor, importcpp: "StepGeom_BSplineCurveWithKnots(@)",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc Init*(this: var StepGeom_BSplineCurveWithKnots;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aKnotMultiplicities: handle[TColStd_HArray1OfInteger];
          aKnots: handle[TColStd_HArray1OfReal]; aKnotSpec: StepGeom_KnotType) {.
    importcpp: "Init", header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc SetKnotMultiplicities*(this: var StepGeom_BSplineCurveWithKnots;
    aKnotMultiplicities: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetKnotMultiplicities",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc KnotMultiplicities*(this: StepGeom_BSplineCurveWithKnots): handle[
    TColStd_HArray1OfInteger] {.noSideEffect, importcpp: "KnotMultiplicities",
                               header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc KnotMultiplicitiesValue*(this: StepGeom_BSplineCurveWithKnots;
                             num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "KnotMultiplicitiesValue",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc NbKnotMultiplicities*(this: StepGeom_BSplineCurveWithKnots): Standard_Integer {.
    noSideEffect, importcpp: "NbKnotMultiplicities",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc SetKnots*(this: var StepGeom_BSplineCurveWithKnots;
              aKnots: handle[TColStd_HArray1OfReal]) {.importcpp: "SetKnots",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc Knots*(this: StepGeom_BSplineCurveWithKnots): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "Knots", header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc KnotsValue*(this: StepGeom_BSplineCurveWithKnots; num: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "KnotsValue",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc NbKnots*(this: StepGeom_BSplineCurveWithKnots): Standard_Integer {.
    noSideEffect, importcpp: "NbKnots",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc SetKnotSpec*(this: var StepGeom_BSplineCurveWithKnots;
                 aKnotSpec: StepGeom_KnotType) {.importcpp: "SetKnotSpec",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc KnotSpec*(this: StepGeom_BSplineCurveWithKnots): StepGeom_KnotType {.
    noSideEffect, importcpp: "KnotSpec",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
type
  StepGeom_BSplineCurveWithKnotsbase_type* = StepGeom_BSplineCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_BSplineCurveWithKnots::get_type_name(@)",
                              header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_BSplineCurveWithKnots::get_type_descriptor(@)",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}
proc DynamicType*(this: StepGeom_BSplineCurveWithKnots): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_BSplineCurveWithKnots.hxx".}