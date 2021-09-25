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

discard "forward decl of Standard_Transient"
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepDimTol_GeneralDatumReference"
discard "forward decl of StepShape_DimensionalLocation"
discard "forward decl of StepShape_DimensionalSize"
type
  StepDimTolToleranceZoneTarget* {.importcpp: "StepDimTol_ToleranceZoneTarget",
                                  header: "StepDimTol_ToleranceZoneTarget.hxx",
                                  bycopy.} = object of StepDataSelectType ## ! Returns a
                                                                     ## ToleranceZoneTarget select type


proc constructStepDimTolToleranceZoneTarget*(): StepDimTolToleranceZoneTarget {.
    constructor, importcpp: "StepDimTol_ToleranceZoneTarget(@)",
    header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc caseNum*(this: StepDimTolToleranceZoneTarget; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc dimensionalLocation*(this: StepDimTolToleranceZoneTarget): Handle[
    StepShapeDimensionalLocation] {.noSideEffect,
                                   importcpp: "DimensionalLocation",
                                   header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc dimensionalSize*(this: StepDimTolToleranceZoneTarget): Handle[
    StepShapeDimensionalSize] {.noSideEffect, importcpp: "DimensionalSize",
                               header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc geometricTolerance*(this: StepDimTolToleranceZoneTarget): Handle[
    StepDimTolGeometricTolerance] {.noSideEffect, importcpp: "GeometricTolerance",
                                   header: "StepDimTol_ToleranceZoneTarget.hxx".}
proc generalDatumReference*(this: StepDimTolToleranceZoneTarget): Handle[
    StepDimTolGeneralDatumReference] {.noSideEffect,
                                      importcpp: "GeneralDatumReference", header: "StepDimTol_ToleranceZoneTarget.hxx".}
