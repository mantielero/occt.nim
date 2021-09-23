##  Created on: 1996-12-16
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, ../Interface/Interface_ParamType,
  StepData_Logical, ../Standard/Standard_Real

discard "forward decl of StepData_SelectMember"
discard "forward decl of StepData_SelectMember"
type
  Handle_StepData_SelectMember* = handle[StepData_SelectMember]

## ! The general form for a Select Member. A Select Member can,
## ! either define a value of a basic type (such as an integer)
## ! with an additional information : a name or list of names
## ! which precise the meaning of this value
## ! or be an alternate value in a select, which also accepts an
## ! entity (in this case, the name is not mandatory)
## !
## ! Several sub-types of SelectMember are defined for integer and
## ! real value, plus an "universal" one for any, and one more to
## ! describe a select with several names
## !
## ! It is also possible to define a specific subtype by redefining
## ! virtual method, then give a better control
## !
## ! Remark : this class itself could be deferred, because at least
## ! one of its virtual methods must be redefined to be usable

type
  StepData_SelectMember* {.importcpp: "StepData_SelectMember",
                          header: "StepData_SelectMember.hxx", bycopy.} = object of Standard_Transient


proc constructStepData_SelectMember*(): StepData_SelectMember {.constructor,
    importcpp: "StepData_SelectMember(@)", header: "StepData_SelectMember.hxx".}
proc HasName*(this: StepData_SelectMember): Standard_Boolean {.noSideEffect,
    importcpp: "HasName", header: "StepData_SelectMember.hxx".}
proc Name*(this: StepData_SelectMember): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepData_SelectMember.hxx".}
proc SetName*(this: var StepData_SelectMember; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetName", header: "StepData_SelectMember.hxx".}
proc Matches*(this: StepData_SelectMember; name: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_SelectMember.hxx".}
proc Kind*(this: StepData_SelectMember): Standard_Integer {.noSideEffect,
    importcpp: "Kind", header: "StepData_SelectMember.hxx".}
proc SetKind*(this: var StepData_SelectMember; kind: Standard_Integer) {.
    importcpp: "SetKind", header: "StepData_SelectMember.hxx".}
proc ParamType*(this: StepData_SelectMember): Interface_ParamType {.noSideEffect,
    importcpp: "ParamType", header: "StepData_SelectMember.hxx".}
proc Int*(this: StepData_SelectMember): Standard_Integer {.noSideEffect,
    importcpp: "Int", header: "StepData_SelectMember.hxx".}
proc SetInt*(this: var StepData_SelectMember; val: Standard_Integer) {.
    importcpp: "SetInt", header: "StepData_SelectMember.hxx".}
proc Integer*(this: StepData_SelectMember): Standard_Integer {.noSideEffect,
    importcpp: "Integer", header: "StepData_SelectMember.hxx".}
proc SetInteger*(this: var StepData_SelectMember; val: Standard_Integer) {.
    importcpp: "SetInteger", header: "StepData_SelectMember.hxx".}
proc Boolean*(this: StepData_SelectMember): Standard_Boolean {.noSideEffect,
    importcpp: "Boolean", header: "StepData_SelectMember.hxx".}
proc SetBoolean*(this: var StepData_SelectMember; val: Standard_Boolean) {.
    importcpp: "SetBoolean", header: "StepData_SelectMember.hxx".}
proc Logical*(this: StepData_SelectMember): StepData_Logical {.noSideEffect,
    importcpp: "Logical", header: "StepData_SelectMember.hxx".}
proc SetLogical*(this: var StepData_SelectMember; val: StepData_Logical) {.
    importcpp: "SetLogical", header: "StepData_SelectMember.hxx".}
proc Real*(this: StepData_SelectMember): Standard_Real {.noSideEffect,
    importcpp: "Real", header: "StepData_SelectMember.hxx".}
proc SetReal*(this: var StepData_SelectMember; val: Standard_Real) {.
    importcpp: "SetReal", header: "StepData_SelectMember.hxx".}
proc String*(this: StepData_SelectMember): Standard_CString {.noSideEffect,
    importcpp: "String", header: "StepData_SelectMember.hxx".}
proc SetString*(this: var StepData_SelectMember; val: Standard_CString) {.
    importcpp: "SetString", header: "StepData_SelectMember.hxx".}
proc Enum*(this: StepData_SelectMember): Standard_Integer {.noSideEffect,
    importcpp: "Enum", header: "StepData_SelectMember.hxx".}
proc EnumText*(this: StepData_SelectMember): Standard_CString {.noSideEffect,
    importcpp: "EnumText", header: "StepData_SelectMember.hxx".}
proc SetEnum*(this: var StepData_SelectMember; val: Standard_Integer;
             text: Standard_CString = "") {.importcpp: "SetEnum",
                                        header: "StepData_SelectMember.hxx".}
proc SetEnumText*(this: var StepData_SelectMember; val: Standard_Integer;
                 text: Standard_CString) {.importcpp: "SetEnumText",
    header: "StepData_SelectMember.hxx".}
type
  StepData_SelectMemberbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepData_SelectMember::get_type_name(@)",
                              header: "StepData_SelectMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_SelectMember::get_type_descriptor(@)",
    header: "StepData_SelectMember.hxx".}
proc DynamicType*(this: StepData_SelectMember): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_SelectMember.hxx".}