##  Created on: 2016-03-09
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  ../Standard/Standard_Integer, StepVisual_NullStyle

discard "forward decl of StepVisual_NullStyleMember"
discard "forward decl of StepVisual_NullStyleMember"
type
  Handle_StepVisual_NullStyleMember* = handle[StepVisual_NullStyleMember]

## ! Defines NullStyle as unique member of PresentationStyleSelect
## ! Works with an EnumTool

type
  StepVisual_NullStyleMember* {.importcpp: "StepVisual_NullStyleMember",
                               header: "StepVisual_NullStyleMember.hxx", bycopy.} = object of StepData_SelectInt


proc constructStepVisual_NullStyleMember*(): StepVisual_NullStyleMember {.
    constructor, importcpp: "StepVisual_NullStyleMember(@)",
    header: "StepVisual_NullStyleMember.hxx".}
proc HasName*(this: StepVisual_NullStyleMember): Standard_Boolean {.noSideEffect,
    importcpp: "HasName", header: "StepVisual_NullStyleMember.hxx".}
proc Name*(this: StepVisual_NullStyleMember): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepVisual_NullStyleMember.hxx".}
proc SetName*(this: var StepVisual_NullStyleMember; a2: Standard_CString): Standard_Boolean {.
    importcpp: "SetName", header: "StepVisual_NullStyleMember.hxx".}
  ## theName
proc Kind*(this: StepVisual_NullStyleMember): Standard_Integer {.noSideEffect,
    importcpp: "Kind", header: "StepVisual_NullStyleMember.hxx".}
proc EnumText*(this: StepVisual_NullStyleMember): Standard_CString {.noSideEffect,
    importcpp: "EnumText", header: "StepVisual_NullStyleMember.hxx".}
proc SetEnumText*(this: var StepVisual_NullStyleMember; theValue: Standard_Integer;
                 theText: Standard_CString) {.importcpp: "SetEnumText",
    header: "StepVisual_NullStyleMember.hxx".}
proc SetValue*(this: var StepVisual_NullStyleMember; theValue: StepVisual_NullStyle) {.
    importcpp: "SetValue", header: "StepVisual_NullStyleMember.hxx".}
proc Value*(this: StepVisual_NullStyleMember): StepVisual_NullStyle {.noSideEffect,
    importcpp: "Value", header: "StepVisual_NullStyleMember.hxx".}
type
  StepVisual_NullStyleMemberbase_type* = StepData_SelectInt

proc get_type_name*(): cstring {.importcpp: "StepVisual_NullStyleMember::get_type_name(@)",
                              header: "StepVisual_NullStyleMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_NullStyleMember::get_type_descriptor(@)",
    header: "StepVisual_NullStyleMember.hxx".}
proc DynamicType*(this: StepVisual_NullStyleMember): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_NullStyleMember.hxx".}