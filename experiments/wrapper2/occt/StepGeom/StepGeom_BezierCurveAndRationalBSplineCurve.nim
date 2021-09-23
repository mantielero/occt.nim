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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_BSplineCurve,
  ../Standard/Standard_Integer, StepGeom_HArray1OfCartesianPoint,
  StepGeom_BSplineCurveForm, ../StepData/StepData_Logical,
  ../TColStd/TColStd_HArray1OfReal, ../Standard/Standard_Real

discard "forward decl of StepGeom_BezierCurve"
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BezierCurveAndRationalBSplineCurve"
discard "forward decl of StepGeom_BezierCurveAndRationalBSplineCurve"
type
  Handle_StepGeom_BezierCurveAndRationalBSplineCurve* = handle[
      StepGeom_BezierCurveAndRationalBSplineCurve]
  StepGeom_BezierCurveAndRationalBSplineCurve* {.
      importcpp: "StepGeom_BezierCurveAndRationalBSplineCurve",
      header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx", bycopy.} = object of StepGeom_BSplineCurve ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## BezierCurveAndRationalBSplineCurve


proc constructStepGeom_BezierCurveAndRationalBSplineCurve*(): StepGeom_BezierCurveAndRationalBSplineCurve {.
    constructor, importcpp: "StepGeom_BezierCurveAndRationalBSplineCurve(@)",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc Init*(this: var StepGeom_BezierCurveAndRationalBSplineCurve;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aBezierCurve: handle[StepGeom_BezierCurve];
          aRationalBSplineCurve: handle[StepGeom_RationalBSplineCurve]) {.
    importcpp: "Init", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc Init*(this: var StepGeom_BezierCurveAndRationalBSplineCurve;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aWeightsData: handle[TColStd_HArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc SetBezierCurve*(this: var StepGeom_BezierCurveAndRationalBSplineCurve;
                    aBezierCurve: handle[StepGeom_BezierCurve]) {.
    importcpp: "SetBezierCurve",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc BezierCurve*(this: StepGeom_BezierCurveAndRationalBSplineCurve): handle[
    StepGeom_BezierCurve] {.noSideEffect, importcpp: "BezierCurve", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc SetRationalBSplineCurve*(this: var StepGeom_BezierCurveAndRationalBSplineCurve;
    aRationalBSplineCurve: handle[StepGeom_RationalBSplineCurve]) {.
    importcpp: "SetRationalBSplineCurve",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc RationalBSplineCurve*(this: StepGeom_BezierCurveAndRationalBSplineCurve): handle[
    StepGeom_RationalBSplineCurve] {.noSideEffect,
                                    importcpp: "RationalBSplineCurve", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc SetWeightsData*(this: var StepGeom_BezierCurveAndRationalBSplineCurve;
                    aWeightsData: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc WeightsData*(this: StepGeom_BezierCurveAndRationalBSplineCurve): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc WeightsDataValue*(this: StepGeom_BezierCurveAndRationalBSplineCurve;
                      num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc NbWeightsData*(this: StepGeom_BezierCurveAndRationalBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbWeightsData",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
type
  StepGeom_BezierCurveAndRationalBSplineCurvebase_type* = StepGeom_BSplineCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_BezierCurveAndRationalBSplineCurve::get_type_name(@)", header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_BezierCurveAndRationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}
proc DynamicType*(this: StepGeom_BezierCurveAndRationalBSplineCurve): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepGeom_BezierCurveAndRationalBSplineCurve.hxx".}