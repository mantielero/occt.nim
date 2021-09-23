##  Created on: 2015-07-16
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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepData/StepData_SelectInt,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, StepDimTol_SimpleDatumReferenceModifier

discard "forward decl of StepDimTol_SimpleDatumReferenceModifierMember"
discard "forward decl of StepDimTol_SimpleDatumReferenceModifierMember"
type
  Handle_StepDimTol_SimpleDatumReferenceModifierMember* = handle[
      StepDimTol_SimpleDatumReferenceModifierMember]

## ! Defines SimpleDatumReferenceModifier as unique member of DatumReferenceModifier
## ! Works with an EnumTool

type
  StepDimTol_SimpleDatumReferenceModifierMember* {.
      importcpp: "StepDimTol_SimpleDatumReferenceModifierMember",
      header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx", bycopy.} = object of StepData_SelectInt


proc constructStepDimTol_SimpleDatumReferenceModifierMember*(): StepDimTol_SimpleDatumReferenceModifierMember {.
    constructor, importcpp: "StepDimTol_SimpleDatumReferenceModifierMember(@)",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc HasName*(this: StepDimTol_SimpleDatumReferenceModifierMember): Standard_Boolean {.
    noSideEffect, importcpp: "HasName",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc Name*(this: StepDimTol_SimpleDatumReferenceModifierMember): Standard_CString {.
    noSideEffect, importcpp: "Name",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc SetName*(this: var StepDimTol_SimpleDatumReferenceModifierMember; a2: Standard_CString): Standard_Boolean {.
    importcpp: "SetName",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
  ## theName
proc Kind*(this: StepDimTol_SimpleDatumReferenceModifierMember): Standard_Integer {.
    noSideEffect, importcpp: "Kind",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc EnumText*(this: StepDimTol_SimpleDatumReferenceModifierMember): Standard_CString {.
    noSideEffect, importcpp: "EnumText",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc SetEnumText*(this: var StepDimTol_SimpleDatumReferenceModifierMember;
                 theValue: Standard_Integer; theText: Standard_CString) {.
    importcpp: "SetEnumText",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc SetValue*(this: var StepDimTol_SimpleDatumReferenceModifierMember;
              theValue: StepDimTol_SimpleDatumReferenceModifier) {.
    importcpp: "SetValue",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc Value*(this: StepDimTol_SimpleDatumReferenceModifierMember): StepDimTol_SimpleDatumReferenceModifier {.
    noSideEffect, importcpp: "Value",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
type
  StepDimTol_SimpleDatumReferenceModifierMemberbase_type* = StepData_SelectInt

proc get_type_name*(): cstring {.importcpp: "StepDimTol_SimpleDatumReferenceModifierMember::get_type_name(@)", header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_SimpleDatumReferenceModifierMember::get_type_descriptor(@)",
    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}
proc DynamicType*(this: StepDimTol_SimpleDatumReferenceModifierMember): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepDimTol_SimpleDatumReferenceModifierMember.hxx".}