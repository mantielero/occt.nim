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
  StepDimTol_ToleranceZoneForm, ../Standard/Standard_Transient,
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_HAsciiString

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepDimTol_ToleranceZoneForm"
discard "forward decl of StepDimTol_ToleranceZoneForm"
type
  Handle_StepDimTol_ToleranceZoneForm* = handle[StepDimTol_ToleranceZoneForm]

## ! Added for Dimensional Tolerances

type
  StepDimTol_ToleranceZoneForm* {.importcpp: "StepDimTol_ToleranceZoneForm",
                                 header: "StepDimTol_ToleranceZoneForm.hxx",
                                 bycopy.} = object of Standard_Transient


proc constructStepDimTol_ToleranceZoneForm*(): StepDimTol_ToleranceZoneForm {.
    constructor, importcpp: "StepDimTol_ToleranceZoneForm(@)",
    header: "StepDimTol_ToleranceZoneForm.hxx".}
proc Init*(this: var StepDimTol_ToleranceZoneForm;
          theName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepDimTol_ToleranceZoneForm.hxx".}
proc Name*(this: var StepDimTol_ToleranceZoneForm): handle[TCollection_HAsciiString] {.
    importcpp: "Name", header: "StepDimTol_ToleranceZoneForm.hxx".}
proc SetName*(this: var StepDimTol_ToleranceZoneForm;
             theName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepDimTol_ToleranceZoneForm.hxx".}
type
  StepDimTol_ToleranceZoneFormbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepDimTol_ToleranceZoneForm::get_type_name(@)",
                              header: "StepDimTol_ToleranceZoneForm.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_ToleranceZoneForm::get_type_descriptor(@)",
    header: "StepDimTol_ToleranceZoneForm.hxx".}
proc DynamicType*(this: StepDimTol_ToleranceZoneForm): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_ToleranceZoneForm.hxx".}