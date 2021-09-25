##  Created on: 1997-01-03
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

discard "forward decl of StepData_EDescr"
discard "forward decl of StepData_Field"
discard "forward decl of Interface_Check"
discard "forward decl of StepData_PDescr"
discard "forward decl of StepData_PDescr"
type
  HandleStepDataPDescr* = Handle[StepDataPDescr]

## ! This class is intended to describe the authorized form for a
## ! parameter, as a type or a value for a field
## !
## ! A PDescr firstly describes a type, which can be SELECT, i.e.
## ! have several members

type
  StepDataPDescr* {.importcpp: "StepData_PDescr", header: "StepData_PDescr.hxx",
                   bycopy.} = object of StandardTransient


proc constructStepDataPDescr*(): StepDataPDescr {.constructor,
    importcpp: "StepData_PDescr(@)", header: "StepData_PDescr.hxx".}
proc setName*(this: var StepDataPDescr; name: StandardCString) {.importcpp: "SetName",
    header: "StepData_PDescr.hxx".}
proc name*(this: StepDataPDescr): StandardCString {.noSideEffect, importcpp: "Name",
    header: "StepData_PDescr.hxx".}
proc setSelect*(this: var StepDataPDescr) {.importcpp: "SetSelect",
                                        header: "StepData_PDescr.hxx".}
proc addMember*(this: var StepDataPDescr; member: Handle[StepDataPDescr]) {.
    importcpp: "AddMember", header: "StepData_PDescr.hxx".}
proc setMemberName*(this: var StepDataPDescr; memname: StandardCString) {.
    importcpp: "SetMemberName", header: "StepData_PDescr.hxx".}
proc setInteger*(this: var StepDataPDescr) {.importcpp: "SetInteger",
    header: "StepData_PDescr.hxx".}
proc setReal*(this: var StepDataPDescr) {.importcpp: "SetReal",
                                      header: "StepData_PDescr.hxx".}
proc setString*(this: var StepDataPDescr) {.importcpp: "SetString",
                                        header: "StepData_PDescr.hxx".}
proc setBoolean*(this: var StepDataPDescr) {.importcpp: "SetBoolean",
    header: "StepData_PDescr.hxx".}
proc setLogical*(this: var StepDataPDescr) {.importcpp: "SetLogical",
    header: "StepData_PDescr.hxx".}
proc setEnum*(this: var StepDataPDescr) {.importcpp: "SetEnum",
                                      header: "StepData_PDescr.hxx".}
proc addEnumDef*(this: var StepDataPDescr; enumdef: StandardCString) {.
    importcpp: "AddEnumDef", header: "StepData_PDescr.hxx".}
proc setType*(this: var StepDataPDescr; atype: Handle[StandardType]) {.
    importcpp: "SetType", header: "StepData_PDescr.hxx".}
proc setDescr*(this: var StepDataPDescr; dscnam: StandardCString) {.
    importcpp: "SetDescr", header: "StepData_PDescr.hxx".}
proc addArity*(this: var StepDataPDescr; arity: int = 1) {.importcpp: "AddArity",
    header: "StepData_PDescr.hxx".}
proc setArity*(this: var StepDataPDescr; arity: int = 1) {.importcpp: "SetArity",
    header: "StepData_PDescr.hxx".}
proc setFrom*(this: var StepDataPDescr; other: Handle[StepDataPDescr]) {.
    importcpp: "SetFrom", header: "StepData_PDescr.hxx".}
proc setOptional*(this: var StepDataPDescr; opt: bool = true) {.
    importcpp: "SetOptional", header: "StepData_PDescr.hxx".}
proc setDerived*(this: var StepDataPDescr; der: bool = true) {.importcpp: "SetDerived",
    header: "StepData_PDescr.hxx".}
proc setField*(this: var StepDataPDescr; name: StandardCString; rank: int) {.
    importcpp: "SetField", header: "StepData_PDescr.hxx".}
proc isSelect*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsSelect",
    header: "StepData_PDescr.hxx".}
proc member*(this: StepDataPDescr; name: StandardCString): Handle[StepDataPDescr] {.
    noSideEffect, importcpp: "Member", header: "StepData_PDescr.hxx".}
proc isInteger*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsInteger",
    header: "StepData_PDescr.hxx".}
proc isReal*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsReal",
                                       header: "StepData_PDescr.hxx".}
proc isString*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsString",
    header: "StepData_PDescr.hxx".}
proc isBoolean*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsBoolean",
    header: "StepData_PDescr.hxx".}
proc isLogical*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsLogical",
    header: "StepData_PDescr.hxx".}
proc isEnum*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsEnum",
                                       header: "StepData_PDescr.hxx".}
proc enumMax*(this: StepDataPDescr): int {.noSideEffect, importcpp: "EnumMax",
                                       header: "StepData_PDescr.hxx".}
proc enumValue*(this: StepDataPDescr; name: StandardCString): int {.noSideEffect,
    importcpp: "EnumValue", header: "StepData_PDescr.hxx".}
proc enumText*(this: StepDataPDescr; val: int): StandardCString {.noSideEffect,
    importcpp: "EnumText", header: "StepData_PDescr.hxx".}
proc isEntity*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsEntity",
    header: "StepData_PDescr.hxx".}
proc isType*(this: StepDataPDescr; atype: Handle[StandardType]): bool {.noSideEffect,
    importcpp: "IsType", header: "StepData_PDescr.hxx".}
proc `type`*(this: StepDataPDescr): Handle[StandardType] {.noSideEffect,
    importcpp: "Type", header: "StepData_PDescr.hxx".}
proc isDescr*(this: StepDataPDescr; descr: Handle[StepDataEDescr]): bool {.
    noSideEffect, importcpp: "IsDescr", header: "StepData_PDescr.hxx".}
proc descrName*(this: StepDataPDescr): StandardCString {.noSideEffect,
    importcpp: "DescrName", header: "StepData_PDescr.hxx".}
proc arity*(this: StepDataPDescr): int {.noSideEffect, importcpp: "Arity",
                                     header: "StepData_PDescr.hxx".}
proc simple*(this: StepDataPDescr): Handle[StepDataPDescr] {.noSideEffect,
    importcpp: "Simple", header: "StepData_PDescr.hxx".}
proc isOptional*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsOptional",
    header: "StepData_PDescr.hxx".}
proc isDerived*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsDerived",
    header: "StepData_PDescr.hxx".}
proc isField*(this: StepDataPDescr): bool {.noSideEffect, importcpp: "IsField",
                                        header: "StepData_PDescr.hxx".}
proc fieldName*(this: StepDataPDescr): StandardCString {.noSideEffect,
    importcpp: "FieldName", header: "StepData_PDescr.hxx".}
proc fieldRank*(this: StepDataPDescr): int {.noSideEffect, importcpp: "FieldRank",
    header: "StepData_PDescr.hxx".}
proc check*(this: StepDataPDescr; afild: StepDataField;
           ach: var Handle[InterfaceCheck]) {.noSideEffect, importcpp: "Check",
    header: "StepData_PDescr.hxx".}
type
  StepDataPDescrbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepData_PDescr::get_type_name(@)",
                            header: "StepData_PDescr.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_PDescr::get_type_descriptor(@)",
    header: "StepData_PDescr.hxx".}
proc dynamicType*(this: StepDataPDescr): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_PDescr.hxx".}
