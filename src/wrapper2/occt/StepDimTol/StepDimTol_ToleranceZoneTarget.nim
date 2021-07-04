##  Created on: 2015-07-13
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepDimTol_GeneralDatumReference"
discard "forward decl of StepShape_DimensionalLocation"
discard "forward decl of StepShape_DimensionalSize"
type
  StepDimTol_ToleranceZoneTarget* {.importcpp: "StepDimTol_ToleranceZoneTarget", header: "StepDimTol_ToleranceZoneTarget.hxx",
                                   bycopy.} = object of StepData_SelectType ## ! Returns a
                                                                       ## ToleranceZoneTarget select type


proc constructStepDimTol_ToleranceZoneTarget*(): StepDimTol_ToleranceZoneTarget {.
    constructor, importcpp: "StepDimTol_ToleranceZoneTarget(@)",
    header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc CaseNum*(this: StepDimTol_ToleranceZoneTarget; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc DimensionalLocation*(this: StepDimTol_ToleranceZoneTarget): handle[
    StepShape_DimensionalLocation] {.noSideEffect,
                                    importcpp: "DimensionalLocation", header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc DimensionalSize*(this: StepDimTol_ToleranceZoneTarget): handle[
    StepShape_DimensionalSize] {.noSideEffect, importcpp: "DimensionalSize",
                                header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc GeometricTolerance*(this: StepDimTol_ToleranceZoneTarget): handle[
    StepDimTol_GeometricTolerance] {.noSideEffect,
                                    importcpp: "GeometricTolerance", header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc GeneralDatumReference*(this: StepDimTol_ToleranceZoneTarget): handle[
    StepDimTol_GeneralDatumReference] {.noSideEffect,
                                       importcpp: "GeneralDatumReference", header: "StepDimTol_ToleranceZoneTarget.hxx".}