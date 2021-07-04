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

discard "forward decl of StepGeom_QuasiUniformCurve"
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_QuasiUniformCurveAndRationalBSplineCurve"
discard "forward decl of StepGeom_QuasiUniformCurveAndRationalBSplineCurve"
type
  Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve* = handle[
      StepGeom_QuasiUniformCurveAndRationalBSplineCurve]
  StepGeom_QuasiUniformCurveAndRationalBSplineCurve* {.
      importcpp: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve",
      header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx", bycopy.} = object of StepGeom_BSplineCurve ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## QuasiUniformCurveAndRationalBSplineCurve


proc constructStepGeom_QuasiUniformCurveAndRationalBSplineCurve*(): StepGeom_QuasiUniformCurveAndRationalBSplineCurve {.
    constructor,
    importcpp: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve(@)",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc Init*(this: var StepGeom_QuasiUniformCurveAndRationalBSplineCurve;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aQuasiUniformCurve: handle[StepGeom_QuasiUniformCurve];
          aRationalBSplineCurve: handle[StepGeom_RationalBSplineCurve]) {.
    importcpp: "Init",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc Init*(this: var StepGeom_QuasiUniformCurveAndRationalBSplineCurve;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aWeightsData: handle[TColStd_HArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc SetQuasiUniformCurve*(this: var StepGeom_QuasiUniformCurveAndRationalBSplineCurve;
    aQuasiUniformCurve: handle[StepGeom_QuasiUniformCurve]) {.
    importcpp: "SetQuasiUniformCurve",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc QuasiUniformCurve*(this: StepGeom_QuasiUniformCurveAndRationalBSplineCurve): handle[
    StepGeom_QuasiUniformCurve] {.noSideEffect, importcpp: "QuasiUniformCurve", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc SetRationalBSplineCurve*(this: var StepGeom_QuasiUniformCurveAndRationalBSplineCurve;
    aRationalBSplineCurve: handle[StepGeom_RationalBSplineCurve]) {.
    importcpp: "SetRationalBSplineCurve",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc RationalBSplineCurve*(this: StepGeom_QuasiUniformCurveAndRationalBSplineCurve): handle[
    StepGeom_RationalBSplineCurve] {.noSideEffect,
                                    importcpp: "RationalBSplineCurve", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc SetWeightsData*(this: var StepGeom_QuasiUniformCurveAndRationalBSplineCurve;
                    aWeightsData: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc WeightsData*(this: StepGeom_QuasiUniformCurveAndRationalBSplineCurve): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc WeightsDataValue*(this: StepGeom_QuasiUniformCurveAndRationalBSplineCurve;
                      num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc NbWeightsData*(this: StepGeom_QuasiUniformCurveAndRationalBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbWeightsData",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
type
  StepGeom_QuasiUniformCurveAndRationalBSplineCurvebase_type* = StepGeom_BSplineCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve::get_type_name(@)", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}
proc DynamicType*(this: StepGeom_QuasiUniformCurveAndRationalBSplineCurve): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx".}