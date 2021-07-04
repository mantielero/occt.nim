##  Created on: 2001-04-24
##  Created by: Atelier IED
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_LimitsAndFits"
discard "forward decl of StepShape_LimitsAndFits"
type
  Handle_StepShape_LimitsAndFits* = handle[StepShape_LimitsAndFits]

## ! Added for Dimensional Tolerances

type
  StepShape_LimitsAndFits* {.importcpp: "StepShape_LimitsAndFits",
                            header: "StepShape_LimitsAndFits.hxx", bycopy.} = object of Standard_Transient


proc constructStepShape_LimitsAndFits*(): StepShape_LimitsAndFits {.constructor,
    importcpp: "StepShape_LimitsAndFits(@)", header: "StepShape_LimitsAndFits.hxx".}
proc Init*(this: var StepShape_LimitsAndFits;
          form_variance: handle[TCollection_HAsciiString];
          zone_variance: handle[TCollection_HAsciiString];
          grade: handle[TCollection_HAsciiString];
          source: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepShape_LimitsAndFits.hxx".}
proc FormVariance*(this: StepShape_LimitsAndFits): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FormVariance", header: "StepShape_LimitsAndFits.hxx".}
proc SetFormVariance*(this: var StepShape_LimitsAndFits;
                     form_variance: handle[TCollection_HAsciiString]) {.
    importcpp: "SetFormVariance", header: "StepShape_LimitsAndFits.hxx".}
proc ZoneVariance*(this: StepShape_LimitsAndFits): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "ZoneVariance", header: "StepShape_LimitsAndFits.hxx".}
proc SetZoneVariance*(this: var StepShape_LimitsAndFits;
                     zone_variance: handle[TCollection_HAsciiString]) {.
    importcpp: "SetZoneVariance", header: "StepShape_LimitsAndFits.hxx".}
proc Grade*(this: StepShape_LimitsAndFits): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Grade", header: "StepShape_LimitsAndFits.hxx".}
proc SetGrade*(this: var StepShape_LimitsAndFits;
              grade: handle[TCollection_HAsciiString]) {.importcpp: "SetGrade",
    header: "StepShape_LimitsAndFits.hxx".}
proc Source*(this: StepShape_LimitsAndFits): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Source", header: "StepShape_LimitsAndFits.hxx".}
proc SetSource*(this: var StepShape_LimitsAndFits;
               source: handle[TCollection_HAsciiString]) {.importcpp: "SetSource",
    header: "StepShape_LimitsAndFits.hxx".}
type
  StepShape_LimitsAndFitsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_LimitsAndFits::get_type_name(@)",
                              header: "StepShape_LimitsAndFits.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_LimitsAndFits::get_type_descriptor(@)",
    header: "StepShape_LimitsAndFits.hxx".}
proc DynamicType*(this: StepShape_LimitsAndFits): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_LimitsAndFits.hxx".}