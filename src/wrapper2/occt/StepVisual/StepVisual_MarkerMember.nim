##  Created on: 1997-04-01
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepData/StepData_SelectInt,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, StepVisual_MarkerType

discard "forward decl of StepVisual_MarkerMember"
discard "forward decl of StepVisual_MarkerMember"
type
  Handle_StepVisual_MarkerMember* = handle[StepVisual_MarkerMember]

## ! Defines MarkerType as unique member of MarkerSelect
## ! Works with an EnumTool

type
  StepVisual_MarkerMember* {.importcpp: "StepVisual_MarkerMember",
                            header: "StepVisual_MarkerMember.hxx", bycopy.} = object of StepData_SelectInt


proc constructStepVisual_MarkerMember*(): StepVisual_MarkerMember {.constructor,
    importcpp: "StepVisual_MarkerMember(@)", header: "StepVisual_MarkerMember.hxx".}
proc HasName*(this: StepVisual_MarkerMember): Standard_Boolean {.noSideEffect,
    importcpp: "HasName", header: "StepVisual_MarkerMember.hxx".}
proc Name*(this: StepVisual_MarkerMember): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepVisual_MarkerMember.hxx".}
proc SetName*(this: var StepVisual_MarkerMember; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetName", header: "StepVisual_MarkerMember.hxx".}
proc EnumText*(this: StepVisual_MarkerMember): Standard_CString {.noSideEffect,
    importcpp: "EnumText", header: "StepVisual_MarkerMember.hxx".}
proc SetEnumText*(this: var StepVisual_MarkerMember; val: Standard_Integer;
                 text: Standard_CString) {.importcpp: "SetEnumText",
    header: "StepVisual_MarkerMember.hxx".}
proc SetValue*(this: var StepVisual_MarkerMember; val: StepVisual_MarkerType) {.
    importcpp: "SetValue", header: "StepVisual_MarkerMember.hxx".}
proc Value*(this: StepVisual_MarkerMember): StepVisual_MarkerType {.noSideEffect,
    importcpp: "Value", header: "StepVisual_MarkerMember.hxx".}
type
  StepVisual_MarkerMemberbase_type* = StepData_SelectInt

proc get_type_name*(): cstring {.importcpp: "StepVisual_MarkerMember::get_type_name(@)",
                              header: "StepVisual_MarkerMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_MarkerMember::get_type_descriptor(@)",
    header: "StepVisual_MarkerMember.hxx".}
proc DynamicType*(this: StepVisual_MarkerMember): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_MarkerMember.hxx".}