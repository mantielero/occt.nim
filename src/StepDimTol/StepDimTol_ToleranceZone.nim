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

discard "forward decl of StepDimTol_HArray1OfToleranceZoneTarget"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
when defined(SetForm):
  discard
discard "forward decl of StepDimTol_ToleranceZone"
discard "forward decl of StepDimTol_ToleranceZone"
type
  HandleC1C1* = Handle[StepDimTolToleranceZone]

## ! Representation of STEP entity ToleranceZone

type
  StepDimTolToleranceZone* {.importcpp: "StepDimTol_ToleranceZone",
                            header: "StepDimTol_ToleranceZone.hxx", bycopy.} = object of StepReprShapeAspect ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepDimTolToleranceZone*(): StepDimTolToleranceZone {.constructor,
    importcpp: "StepDimTol_ToleranceZone(@)",
    header: "StepDimTol_ToleranceZone.hxx".}
proc init*(this: var StepDimTolToleranceZone;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theOfShape: Handle[StepReprProductDefinitionShape];
          theProductDefinitional: StepDataLogical;
          theDefiningTolerance: Handle[StepDimTolHArray1OfToleranceZoneTarget];
          theForm: Handle[StepDimTolToleranceZoneForm]) {.importcpp: "Init",
    header: "StepDimTol_ToleranceZone.hxx".}
proc definingTolerance*(this: StepDimTolToleranceZone): Handle[
    StepDimTolHArray1OfToleranceZoneTarget] {.noSideEffect,
    importcpp: "DefiningTolerance", header: "StepDimTol_ToleranceZone.hxx".}
proc setDefiningTolerance*(this: var StepDimTolToleranceZone; theDefiningTolerance: Handle[
    StepDimTolHArray1OfToleranceZoneTarget]) {.importcpp: "SetDefiningTolerance",
    header: "StepDimTol_ToleranceZone.hxx".}
proc nbDefiningTolerances*(this: StepDimTolToleranceZone): int {.noSideEffect,
    importcpp: "NbDefiningTolerances", header: "StepDimTol_ToleranceZone.hxx".}
proc definingToleranceValue*(this: StepDimTolToleranceZone; theNum: int): StepDimTolToleranceZoneTarget {.
    noSideEffect, importcpp: "DefiningToleranceValue",
    header: "StepDimTol_ToleranceZone.hxx".}
proc setDefiningToleranceValue*(this: var StepDimTolToleranceZone; theNum: int;
                               theItem: StepDimTolToleranceZoneTarget) {.
    importcpp: "SetDefiningToleranceValue", header: "StepDimTol_ToleranceZone.hxx".}
proc form*(this: var StepDimTolToleranceZone): Handle[StepDimTolToleranceZoneForm] {.
    importcpp: "Form", header: "StepDimTol_ToleranceZone.hxx".}
proc setForm*(this: var StepDimTolToleranceZone;
             theForm: Handle[StepDimTolToleranceZoneForm]) {.importcpp: "SetForm",
    header: "StepDimTol_ToleranceZone.hxx".}
type
  StepDimTolToleranceZonebaseType* = StepReprShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepDimTol_ToleranceZone::get_type_name(@)",
                            header: "StepDimTol_ToleranceZone.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_ToleranceZone::get_type_descriptor(@)",
    header: "StepDimTol_ToleranceZone.hxx".}
proc dynamicType*(this: StepDimTolToleranceZone): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepDimTol_ToleranceZone.hxx".}