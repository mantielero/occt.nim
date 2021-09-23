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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_ShapeAspect, ../Standard/Standard_Integer,
  StepDimTol_HArray1OfToleranceZoneTarget, StepDimTol_ToleranceZoneForm,
  StepDimTol_ToleranceZoneTarget

discard "forward decl of StepDimTol_HArray1OfToleranceZoneTarget"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
when defined(SetForm):
  discard
discard "forward decl of StepDimTol_ToleranceZone"
discard "forward decl of StepDimTol_ToleranceZone"
type
  Handle_StepDimTol_ToleranceZone* = handle[StepDimTol_ToleranceZone]

## ! Representation of STEP entity ToleranceZone

type
  StepDimTol_ToleranceZone* {.importcpp: "StepDimTol_ToleranceZone",
                             header: "StepDimTol_ToleranceZone.hxx", bycopy.} = object of StepRepr_ShapeAspect ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepDimTol_ToleranceZone*(): StepDimTol_ToleranceZone {.constructor,
    importcpp: "StepDimTol_ToleranceZone(@)",
    header: "StepDimTol_ToleranceZone.hxx".}
proc Init*(this: var StepDimTol_ToleranceZone;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theOfShape: handle[StepRepr_ProductDefinitionShape];
          theProductDefinitional: StepData_Logical; theDefiningTolerance: handle[
    StepDimTol_HArray1OfToleranceZoneTarget];
          theForm: handle[StepDimTol_ToleranceZoneForm]) {.importcpp: "Init",
    header: "StepDimTol_ToleranceZone.hxx".}
proc DefiningTolerance*(this: StepDimTol_ToleranceZone): handle[
    StepDimTol_HArray1OfToleranceZoneTarget] {.noSideEffect,
    importcpp: "DefiningTolerance", header: "StepDimTol_ToleranceZone.hxx".}
proc SetDefiningTolerance*(this: var StepDimTol_ToleranceZone; theDefiningTolerance: handle[
    StepDimTol_HArray1OfToleranceZoneTarget]) {.
    importcpp: "SetDefiningTolerance", header: "StepDimTol_ToleranceZone.hxx".}
proc NbDefiningTolerances*(this: StepDimTol_ToleranceZone): Standard_Integer {.
    noSideEffect, importcpp: "NbDefiningTolerances",
    header: "StepDimTol_ToleranceZone.hxx".}
proc DefiningToleranceValue*(this: StepDimTol_ToleranceZone;
                            theNum: Standard_Integer): StepDimTol_ToleranceZoneTarget {.
    noSideEffect, importcpp: "DefiningToleranceValue",
    header: "StepDimTol_ToleranceZone.hxx".}
proc SetDefiningToleranceValue*(this: var StepDimTol_ToleranceZone;
                               theNum: Standard_Integer;
                               theItem: StepDimTol_ToleranceZoneTarget) {.
    importcpp: "SetDefiningToleranceValue", header: "StepDimTol_ToleranceZone.hxx".}
proc Form*(this: var StepDimTol_ToleranceZone): handle[StepDimTol_ToleranceZoneForm] {.
    importcpp: "Form", header: "StepDimTol_ToleranceZone.hxx".}
proc SetForm*(this: var StepDimTol_ToleranceZone;
             theForm: handle[StepDimTol_ToleranceZoneForm]) {.
    importcpp: "SetForm", header: "StepDimTol_ToleranceZone.hxx".}
type
  StepDimTol_ToleranceZonebase_type* = StepRepr_ShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepDimTol_ToleranceZone::get_type_name(@)",
                              header: "StepDimTol_ToleranceZone.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_ToleranceZone::get_type_descriptor(@)",
    header: "StepDimTol_ToleranceZone.hxx".}
proc DynamicType*(this: StepDimTol_ToleranceZone): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepDimTol_ToleranceZone.hxx".}