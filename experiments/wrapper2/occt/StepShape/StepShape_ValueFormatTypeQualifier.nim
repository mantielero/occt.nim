##  Created on: 2015-07-14
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
  StepShape_ValueFormatTypeQualifier, ../Standard/Standard_Transient,
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_HAsciiString

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_ValueFormatTypeQualifier"
discard "forward decl of StepShape_ValueFormatTypeQualifier"
type
  Handle_StepShape_ValueFormatTypeQualifier* = handle[
      StepShape_ValueFormatTypeQualifier]

## ! Added for Dimensional Tolerances

type
  StepShape_ValueFormatTypeQualifier* {.importcpp: "StepShape_ValueFormatTypeQualifier", header: "StepShape_ValueFormatTypeQualifier.hxx",
                                       bycopy.} = object of Standard_Transient


proc constructStepShape_ValueFormatTypeQualifier*(): StepShape_ValueFormatTypeQualifier {.
    constructor, importcpp: "StepShape_ValueFormatTypeQualifier(@)",
    header: "StepShape_ValueFormatTypeQualifier.hxx".}
proc Init*(this: var StepShape_ValueFormatTypeQualifier;
          theFormatType: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepShape_ValueFormatTypeQualifier.hxx".}
proc FormatType*(this: var StepShape_ValueFormatTypeQualifier): handle[
    TCollection_HAsciiString] {.importcpp: "FormatType",
                               header: "StepShape_ValueFormatTypeQualifier.hxx".}
proc SetFormatType*(this: var StepShape_ValueFormatTypeQualifier;
                   theFormatType: handle[TCollection_HAsciiString]) {.
    importcpp: "SetFormatType", header: "StepShape_ValueFormatTypeQualifier.hxx".}
type
  StepShape_ValueFormatTypeQualifierbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepShape_ValueFormatTypeQualifier::get_type_name(@)",
                              header: "StepShape_ValueFormatTypeQualifier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ValueFormatTypeQualifier::get_type_descriptor(@)",
    header: "StepShape_ValueFormatTypeQualifier.hxx".}
proc DynamicType*(this: StepShape_ValueFormatTypeQualifier): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ValueFormatTypeQualifier.hxx".}