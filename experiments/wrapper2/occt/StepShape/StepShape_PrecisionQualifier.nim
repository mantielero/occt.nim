##  Created on: 2001-04-24
##  Created by: Christian CAILLET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of StepShape_PrecisionQualifier"
discard "forward decl of StepShape_PrecisionQualifier"
type
  Handle_StepShape_PrecisionQualifier* = handle[StepShape_PrecisionQualifier]

## ! Added for Dimensional Tolerances

type
  StepShape_PrecisionQualifier* {.importcpp: "StepShape_PrecisionQualifier",
                                 header: "StepShape_PrecisionQualifier.hxx",
                                 bycopy.} = object of Standard_Transient


proc constructStepShape_PrecisionQualifier*(): StepShape_PrecisionQualifier {.
    constructor, importcpp: "StepShape_PrecisionQualifier(@)",
    header: "StepShape_PrecisionQualifier.hxx".}
proc Init*(this: var StepShape_PrecisionQualifier; precision_value: Standard_Integer) {.
    importcpp: "Init", header: "StepShape_PrecisionQualifier.hxx".}
proc PrecisionValue*(this: StepShape_PrecisionQualifier): Standard_Integer {.
    noSideEffect, importcpp: "PrecisionValue",
    header: "StepShape_PrecisionQualifier.hxx".}
proc SetPrecisionValue*(this: var StepShape_PrecisionQualifier;
                       precision_value: Standard_Integer) {.
    importcpp: "SetPrecisionValue", header: "StepShape_PrecisionQualifier.hxx".}
type
  StepShape_PrecisionQualifierbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_PrecisionQualifier::get_type_name(@)",
                              header: "StepShape_PrecisionQualifier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_PrecisionQualifier::get_type_descriptor(@)",
    header: "StepShape_PrecisionQualifier.hxx".}
proc DynamicType*(this: StepShape_PrecisionQualifier): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_PrecisionQualifier.hxx".}