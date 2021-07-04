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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_TypeQualifier"
discard "forward decl of StepShape_TypeQualifier"
type
  Handle_StepShape_TypeQualifier* = handle[StepShape_TypeQualifier]

## ! Added for Dimensional Tolerances

type
  StepShape_TypeQualifier* {.importcpp: "StepShape_TypeQualifier",
                            header: "StepShape_TypeQualifier.hxx", bycopy.} = object of Standard_Transient


proc constructStepShape_TypeQualifier*(): StepShape_TypeQualifier {.constructor,
    importcpp: "StepShape_TypeQualifier(@)", header: "StepShape_TypeQualifier.hxx".}
proc Init*(this: var StepShape_TypeQualifier; name: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepShape_TypeQualifier.hxx".}
proc Name*(this: StepShape_TypeQualifier): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepShape_TypeQualifier.hxx".}
proc SetName*(this: var StepShape_TypeQualifier;
             name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepShape_TypeQualifier.hxx".}
type
  StepShape_TypeQualifierbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_TypeQualifier::get_type_name(@)",
                              header: "StepShape_TypeQualifier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_TypeQualifier::get_type_descriptor(@)",
    header: "StepShape_TypeQualifier.hxx".}
proc DynamicType*(this: StepShape_TypeQualifier): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_TypeQualifier.hxx".}