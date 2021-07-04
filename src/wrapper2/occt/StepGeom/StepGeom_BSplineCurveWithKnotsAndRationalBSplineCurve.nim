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
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfReal,
  StepGeom_KnotType, ../Standard/Standard_Real

discard "forward decl of StepGeom_BSplineCurveWithKnots"
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve"
discard "forward decl of StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve"
type
  Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve* = handle[
      StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve]
  StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve* {.
      importcpp: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve",
      header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx", bycopy.} = object of StepGeom_BSplineCurve ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## a
                                                                                                               ## BSplineCurveWithKnotsAndRationalBSplineCurve


proc constructStepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve*(): StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve {.
    constructor,
    importcpp: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve(@)",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc Init*(this: var StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aBSplineCurveWithKnots: handle[StepGeom_BSplineCurveWithKnots];
          aRationalBSplineCurve: handle[StepGeom_RationalBSplineCurve]) {.
    importcpp: "Init",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc Init*(this: var StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aKnotMultiplicities: handle[TColStd_HArray1OfInteger];
          aKnots: handle[TColStd_HArray1OfReal]; aKnotSpec: StepGeom_KnotType;
          aWeightsData: handle[TColStd_HArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc SetBSplineCurveWithKnots*(this: var StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
    aBSplineCurveWithKnots: handle[StepGeom_BSplineCurveWithKnots]) {.
    importcpp: "SetBSplineCurveWithKnots",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc BSplineCurveWithKnots*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): handle[
    StepGeom_BSplineCurveWithKnots] {.noSideEffect,
                                     importcpp: "BSplineCurveWithKnots", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc SetRationalBSplineCurve*(this: var StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
    aRationalBSplineCurve: handle[StepGeom_RationalBSplineCurve]) {.
    importcpp: "SetRationalBSplineCurve",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc RationalBSplineCurve*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): handle[
    StepGeom_RationalBSplineCurve] {.noSideEffect,
                                    importcpp: "RationalBSplineCurve", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc SetKnotMultiplicities*(this: var StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
    aKnotMultiplicities: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetKnotMultiplicities",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc KnotMultiplicities*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): handle[
    TColStd_HArray1OfInteger] {.noSideEffect, importcpp: "KnotMultiplicities", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc KnotMultiplicitiesValue*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
                             num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "KnotMultiplicitiesValue",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc NbKnotMultiplicities*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbKnotMultiplicities",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc SetKnots*(this: var StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
              aKnots: handle[TColStd_HArray1OfReal]) {.importcpp: "SetKnots",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc Knots*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "Knots", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc KnotsValue*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
                num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "KnotsValue",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc NbKnots*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbKnots",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc SetKnotSpec*(this: var StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
                 aKnotSpec: StepGeom_KnotType) {.importcpp: "SetKnotSpec",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc KnotSpec*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): StepGeom_KnotType {.
    noSideEffect, importcpp: "KnotSpec",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc SetWeightsData*(this: var StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
                    aWeightsData: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc WeightsData*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc WeightsDataValue*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve;
                      num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc NbWeightsData*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbWeightsData",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
type
  StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurvebase_type* = StepGeom_BSplineCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve::get_type_name(@)", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}
proc DynamicType*(this: StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx".}