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
  ../TColStd/TColStd_HArray1OfReal, StepGeom_BSplineCurve,
  ../Standard/Standard_Integer, StepGeom_HArray1OfCartesianPoint,
  StepGeom_BSplineCurveForm, ../StepData/StepData_Logical,
  ../Standard/Standard_Real

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_RationalBSplineCurve"
discard "forward decl of StepGeom_RationalBSplineCurve"
type
  Handle_StepGeom_RationalBSplineCurve* = handle[StepGeom_RationalBSplineCurve]
  StepGeom_RationalBSplineCurve* {.importcpp: "StepGeom_RationalBSplineCurve",
                                  header: "StepGeom_RationalBSplineCurve.hxx",
                                  bycopy.} = object of StepGeom_BSplineCurve ## ! Returns a
                                                                        ## RationalBSplineCurve


proc constructStepGeom_RationalBSplineCurve*(): StepGeom_RationalBSplineCurve {.
    constructor, importcpp: "StepGeom_RationalBSplineCurve(@)",
    header: "StepGeom_RationalBSplineCurve.hxx".}
proc Init*(this: var StepGeom_RationalBSplineCurve;
          aName: handle[TCollection_HAsciiString]; aDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray1OfCartesianPoint];
          aCurveForm: StepGeom_BSplineCurveForm; aClosedCurve: StepData_Logical;
          aSelfIntersect: StepData_Logical;
          aWeightsData: handle[TColStd_HArray1OfReal]) {.importcpp: "Init",
    header: "StepGeom_RationalBSplineCurve.hxx".}
proc SetWeightsData*(this: var StepGeom_RationalBSplineCurve;
                    aWeightsData: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetWeightsData", header: "StepGeom_RationalBSplineCurve.hxx".}
proc WeightsData*(this: StepGeom_RationalBSplineCurve): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "WeightsData",
                            header: "StepGeom_RationalBSplineCurve.hxx".}
proc WeightsDataValue*(this: StepGeom_RationalBSplineCurve; num: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "WeightsDataValue",
    header: "StepGeom_RationalBSplineCurve.hxx".}
proc NbWeightsData*(this: StepGeom_RationalBSplineCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbWeightsData",
    header: "StepGeom_RationalBSplineCurve.hxx".}
type
  StepGeom_RationalBSplineCurvebase_type* = StepGeom_BSplineCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_RationalBSplineCurve::get_type_name(@)",
                              header: "StepGeom_RationalBSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_RationalBSplineCurve::get_type_descriptor(@)",
    header: "StepGeom_RationalBSplineCurve.hxx".}
proc DynamicType*(this: StepGeom_RationalBSplineCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_RationalBSplineCurve.hxx".}