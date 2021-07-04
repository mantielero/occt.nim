##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepFEA_FeaAxis2Placement3d"
discard "forward decl of StepFEA_AlignedCurve3dElementCoordinateSystem"
discard "forward decl of StepFEA_ParametricCurve3dElementCoordinateSystem"
type
  StepFEA_CurveElementEndCoordinateSystem* {.
      importcpp: "StepFEA_CurveElementEndCoordinateSystem",
      header: "StepFEA_CurveElementEndCoordinateSystem.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepFEA_CurveElementEndCoordinateSystem*(): StepFEA_CurveElementEndCoordinateSystem {.
    constructor, importcpp: "StepFEA_CurveElementEndCoordinateSystem(@)",
    header: "StepFEA_CurveElementEndCoordinateSystem.hxx".}
proc CaseNum*(this: StepFEA_CurveElementEndCoordinateSystem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepFEA_CurveElementEndCoordinateSystem.hxx".}
proc FeaAxis2Placement3d*(this: StepFEA_CurveElementEndCoordinateSystem): handle[
    StepFEA_FeaAxis2Placement3d] {.noSideEffect, importcpp: "FeaAxis2Placement3d", header: "StepFEA_CurveElementEndCoordinateSystem.hxx".}
proc AlignedCurve3dElementCoordinateSystem*(
    this: StepFEA_CurveElementEndCoordinateSystem): handle[
    StepFEA_AlignedCurve3dElementCoordinateSystem] {.noSideEffect,
    importcpp: "AlignedCurve3dElementCoordinateSystem",
    header: "StepFEA_CurveElementEndCoordinateSystem.hxx".}
proc ParametricCurve3dElementCoordinateSystem*(
    this: StepFEA_CurveElementEndCoordinateSystem): handle[
    StepFEA_ParametricCurve3dElementCoordinateSystem] {.noSideEffect,
    importcpp: "ParametricCurve3dElementCoordinateSystem",
    header: "StepFEA_CurveElementEndCoordinateSystem.hxx".}