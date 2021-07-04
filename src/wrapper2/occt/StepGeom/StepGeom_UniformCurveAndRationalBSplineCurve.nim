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

discard "forward decl of StepGeom_UniformCurve"
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_UniformCurveAndRationalBSplineCurve"
discard "forward decl of StepGeom_UniformCurveAndRationalBSplineCurve"
type
  Handle_StepGeom_UniformCurveAndRationalBSplineCurve* = handle[
      StepGeom_UniformCurveAndRationalBSplineCurve]
  StepGeom_UniformCurveAndRationalBSplineCurve* {.
      importcpp: "StepGeom_UniformCurveAndRationalBSplineCurve",
      header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx", bycopy.} = object of StepGeom_BSplineCurve ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## UniformCurveAndRationalBSplineCurve


proc constructStepGeom_UniformCurveAndRationalBSplineCurve*(): StepGeom_UniformCurveAndRationalBSplineCurve {.
    constructor, importcpp: "StepGeom_UniformCurveAndRationalBSplineCurve(@)",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc Init*(this: var StepGeom_UniformCurveAndRationalBSplineCurve;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aUniformCurve: handle[StepGeom_UniformCurve];
          aRationalBSplineCurve: handle[StepGeom_RationalBSplineCurve]) {.
    importcpp: "Init", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc Init*(this: var StepGeom_UniformCurveAndRationalBSplineCurve;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aWeightsData: handle[TColStd_HArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc SetUniformCurve*(this: var StepGeom_UniformCurveAndRationalBSplineCurve;
                     aUniformCurve: handle[StepGeom_UniformCurve]) {.
    importcpp: "SetUniformCurve",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc UniformCurve*(this: StepGeom_UniformCurveAndRationalBSplineCurve): handle[
    StepGeom_UniformCurve] {.noSideEffect, importcpp: "UniformCurve", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc SetRationalBSplineCurve*(this: var StepGeom_UniformCurveAndRationalBSplineCurve;
    aRationalBSplineCurve: handle[StepGeom_RationalBSplineCurve]) {.
    importcpp: "SetRationalBSplineCurve",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc RationalBSplineCurve*(this: StepGeom_UniformCurveAndRationalBSplineCurve): handle[
    StepGeom_RationalBSplineCurve] {.noSideEffect,
                                    importcpp: "RationalBSplineCurve", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc SetWeightsData*(this: var StepGeom_UniformCurveAndRationalBSplineCurve;
                    aWeightsData: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc WeightsData*(this: StepGeom_UniformCurveAndRationalBSplineCurve): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc WeightsDataValue*(this: StepGeom_UniformCurveAndRationalBSplineCurve;
                      num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "WeightsDataValue",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc NbWeightsData*(this: StepGeom_UniformCurveAndRationalBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbWeightsData",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
type
  StepGeom_UniformCurveAndRationalBSplineCurvebase_type* = StepGeom_BSplineCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_UniformCurveAndRationalBSplineCurve::get_type_name(@)", header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_UniformCurveAndRationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}
proc DynamicType*(this: StepGeom_UniformCurveAndRationalBSplineCurve): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepGeom_UniformCurveAndRationalBSplineCurve.hxx".}