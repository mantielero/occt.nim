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

discard "forward decl of StepData_SelectMember"
discard "forward decl of StepData_SelectMember"
type
  HandleC1C1* = Handle[StepDataSelectMember]

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
  StepDataSelectMember* {.importcpp: "StepData_SelectMember",
                         header: "StepData_SelectMember.hxx", bycopy.} = object of StandardTransient


proc constructStepDataSelectMember*(): StepDataSelectMember {.constructor,
    importcpp: "StepData_SelectMember(@)", header: "StepData_SelectMember.hxx".}
proc hasName*(this: StepDataSelectMember): bool {.noSideEffect, importcpp: "HasName",
    header: "StepData_SelectMember.hxx".}
proc name*(this: StepDataSelectMember): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepData_SelectMember.hxx".}
proc setName*(this: var StepDataSelectMember; name: StandardCString): bool {.
    importcpp: "SetName", header: "StepData_SelectMember.hxx".}
proc matches*(this: StepDataSelectMember; name: StandardCString): bool {.noSideEffect,
    importcpp: "Matches", header: "StepData_SelectMember.hxx".}
proc kind*(this: StepDataSelectMember): cint {.noSideEffect, importcpp: "Kind",
    header: "StepData_SelectMember.hxx".}
proc setKind*(this: var StepDataSelectMember; kind: cint) {.importcpp: "SetKind",
    header: "StepData_SelectMember.hxx".}
proc paramType*(this: StepDataSelectMember): InterfaceParamType {.noSideEffect,
    importcpp: "ParamType", header: "StepData_SelectMember.hxx".}
proc int*(this: StepDataSelectMember): cint {.noSideEffect, importcpp: "Int",
    header: "StepData_SelectMember.hxx".}
proc setInt*(this: var StepDataSelectMember; val: cint) {.importcpp: "SetInt",
    header: "StepData_SelectMember.hxx".}
proc integer*(this: StepDataSelectMember): cint {.noSideEffect, importcpp: "Integer",
    header: "StepData_SelectMember.hxx".}
proc setInteger*(this: var StepDataSelectMember; val: cint) {.importcpp: "SetInteger",
    header: "StepData_SelectMember.hxx".}
proc boolean*(this: StepDataSelectMember): bool {.noSideEffect, importcpp: "Boolean",
    header: "StepData_SelectMember.hxx".}
proc setBoolean*(this: var StepDataSelectMember; val: bool) {.importcpp: "SetBoolean",
    header: "StepData_SelectMember.hxx".}
proc logical*(this: StepDataSelectMember): StepDataLogical {.noSideEffect,
    importcpp: "Logical", header: "StepData_SelectMember.hxx".}
proc setLogical*(this: var StepDataSelectMember; val: StepDataLogical) {.
    importcpp: "SetLogical", header: "StepData_SelectMember.hxx".}
proc real*(this: StepDataSelectMember): cfloat {.noSideEffect, importcpp: "Real",
    header: "StepData_SelectMember.hxx".}
proc setReal*(this: var StepDataSelectMember; val: cfloat) {.importcpp: "SetReal",
    header: "StepData_SelectMember.hxx".}
proc string*(this: StepDataSelectMember): StandardCString {.noSideEffect,
    importcpp: "String", header: "StepData_SelectMember.hxx".}
proc setString*(this: var StepDataSelectMember; val: StandardCString) {.
    importcpp: "SetString", header: "StepData_SelectMember.hxx".}
proc `enum`*(this: StepDataSelectMember): cint {.noSideEffect, importcpp: "Enum",
    header: "StepData_SelectMember.hxx".}
proc enumText*(this: StepDataSelectMember): StandardCString {.noSideEffect,
    importcpp: "EnumText", header: "StepData_SelectMember.hxx".}
proc setEnum*(this: var StepDataSelectMember; val: cint; text: StandardCString = "") {.
    importcpp: "SetEnum", header: "StepData_SelectMember.hxx".}
proc setEnumText*(this: var StepDataSelectMember; val: cint; text: StandardCString) {.
    importcpp: "SetEnumText", header: "StepData_SelectMember.hxx".}
type
  StepDataSelectMemberbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepData_SelectMember::get_type_name(@)",
                            header: "StepData_SelectMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_SelectMember::get_type_descriptor(@)",
    header: "StepData_SelectMember.hxx".}
proc dynamicType*(this: StepDataSelectMember): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_SelectMember.hxx".}

























