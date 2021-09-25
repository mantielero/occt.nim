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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepDimTol_ToleranceZoneForm"
discard "forward decl of StepDimTol_ToleranceZoneForm"
type
  HandleStepDimTolToleranceZoneForm* = Handle[StepDimTolToleranceZoneForm]

## ! Added for Dimensional Tolerances

type
  StepDimTolToleranceZoneForm* {.importcpp: "StepDimTol_ToleranceZoneForm",
                                header: "StepDimTol_ToleranceZoneForm.hxx", bycopy.} = object of StandardTransient


proc constructStepDimTolToleranceZoneForm*(): StepDimTolToleranceZoneForm {.
    constructor, importcpp: "StepDimTol_ToleranceZoneForm(@)",
    header: "StepDimTol_ToleranceZoneForm.hxx".}
proc init*(this: var StepDimTolToleranceZoneForm;
          theName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepDimTol_ToleranceZoneForm.hxx".}
proc name*(this: var StepDimTolToleranceZoneForm): Handle[TCollectionHAsciiString] {.
    importcpp: "Name", header: "StepDimTol_ToleranceZoneForm.hxx".}
proc setName*(this: var StepDimTolToleranceZoneForm;
             theName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepDimTol_ToleranceZoneForm.hxx".}
type
  StepDimTolToleranceZoneFormbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepDimTol_ToleranceZoneForm::get_type_name(@)",
                            header: "StepDimTol_ToleranceZoneForm.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_ToleranceZoneForm::get_type_descriptor(@)",
    header: "StepDimTol_ToleranceZoneForm.hxx".}
proc dynamicType*(this: StepDimTolToleranceZoneForm): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_ToleranceZoneForm.hxx".}
