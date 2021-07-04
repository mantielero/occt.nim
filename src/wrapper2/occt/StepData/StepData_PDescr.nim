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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Integer,
  StepData_EnumTool, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, ../Standard/Standard_CString

discard "forward decl of StepData_EDescr"
discard "forward decl of StepData_Field"
discard "forward decl of Interface_Check"
discard "forward decl of StepData_PDescr"
discard "forward decl of StepData_PDescr"
type
  Handle_StepData_PDescr* = handle[StepData_PDescr]

## ! This class is intended to describe the authorized form for a
## ! parameter, as a type or a value for a field
## !
## ! A PDescr firstly describes a type, which can be SELECT, i.e.
## ! have several members

type
  StepData_PDescr* {.importcpp: "StepData_PDescr", header: "StepData_PDescr.hxx",
                    bycopy.} = object of Standard_Transient


proc constructStepData_PDescr*(): StepData_PDescr {.constructor,
    importcpp: "StepData_PDescr(@)", header: "StepData_PDescr.hxx".}
proc SetName*(this: var StepData_PDescr; name: Standard_CString) {.
    importcpp: "SetName", header: "StepData_PDescr.hxx".}
proc Name*(this: StepData_PDescr): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepData_PDescr.hxx".}
proc SetSelect*(this: var StepData_PDescr) {.importcpp: "SetSelect",
    header: "StepData_PDescr.hxx".}
proc AddMember*(this: var StepData_PDescr; member: handle[StepData_PDescr]) {.
    importcpp: "AddMember", header: "StepData_PDescr.hxx".}
proc SetMemberName*(this: var StepData_PDescr; memname: Standard_CString) {.
    importcpp: "SetMemberName", header: "StepData_PDescr.hxx".}
proc SetInteger*(this: var StepData_PDescr) {.importcpp: "SetInteger",
    header: "StepData_PDescr.hxx".}
proc SetReal*(this: var StepData_PDescr) {.importcpp: "SetReal",
                                       header: "StepData_PDescr.hxx".}
proc SetString*(this: var StepData_PDescr) {.importcpp: "SetString",
    header: "StepData_PDescr.hxx".}
proc SetBoolean*(this: var StepData_PDescr) {.importcpp: "SetBoolean",
    header: "StepData_PDescr.hxx".}
proc SetLogical*(this: var StepData_PDescr) {.importcpp: "SetLogical",
    header: "StepData_PDescr.hxx".}
proc SetEnum*(this: var StepData_PDescr) {.importcpp: "SetEnum",
                                       header: "StepData_PDescr.hxx".}
proc AddEnumDef*(this: var StepData_PDescr; enumdef: Standard_CString) {.
    importcpp: "AddEnumDef", header: "StepData_PDescr.hxx".}
proc SetType*(this: var StepData_PDescr; atype: handle[Standard_Type]) {.
    importcpp: "SetType", header: "StepData_PDescr.hxx".}
proc SetDescr*(this: var StepData_PDescr; dscnam: Standard_CString) {.
    importcpp: "SetDescr", header: "StepData_PDescr.hxx".}
proc AddArity*(this: var StepData_PDescr; arity: Standard_Integer = 1) {.
    importcpp: "AddArity", header: "StepData_PDescr.hxx".}
proc SetArity*(this: var StepData_PDescr; arity: Standard_Integer = 1) {.
    importcpp: "SetArity", header: "StepData_PDescr.hxx".}
proc SetFrom*(this: var StepData_PDescr; other: handle[StepData_PDescr]) {.
    importcpp: "SetFrom", header: "StepData_PDescr.hxx".}
proc SetOptional*(this: var StepData_PDescr; opt: Standard_Boolean = Standard_True) {.
    importcpp: "SetOptional", header: "StepData_PDescr.hxx".}
proc SetDerived*(this: var StepData_PDescr; der: Standard_Boolean = Standard_True) {.
    importcpp: "SetDerived", header: "StepData_PDescr.hxx".}
proc SetField*(this: var StepData_PDescr; name: Standard_CString;
              rank: Standard_Integer) {.importcpp: "SetField",
                                      header: "StepData_PDescr.hxx".}
proc IsSelect*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsSelect", header: "StepData_PDescr.hxx".}
proc Member*(this: StepData_PDescr; name: Standard_CString): handle[StepData_PDescr] {.
    noSideEffect, importcpp: "Member", header: "StepData_PDescr.hxx".}
proc IsInteger*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsInteger", header: "StepData_PDescr.hxx".}
proc IsReal*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsReal", header: "StepData_PDescr.hxx".}
proc IsString*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsString", header: "StepData_PDescr.hxx".}
proc IsBoolean*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsBoolean", header: "StepData_PDescr.hxx".}
proc IsLogical*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsLogical", header: "StepData_PDescr.hxx".}
proc IsEnum*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsEnum", header: "StepData_PDescr.hxx".}
proc EnumMax*(this: StepData_PDescr): Standard_Integer {.noSideEffect,
    importcpp: "EnumMax", header: "StepData_PDescr.hxx".}
proc EnumValue*(this: StepData_PDescr; name: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "EnumValue", header: "StepData_PDescr.hxx".}
proc EnumText*(this: StepData_PDescr; val: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "EnumText", header: "StepData_PDescr.hxx".}
proc IsEntity*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsEntity", header: "StepData_PDescr.hxx".}
proc IsType*(this: StepData_PDescr; atype: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, importcpp: "IsType", header: "StepData_PDescr.hxx".}
proc Type*(this: StepData_PDescr): handle[Standard_Type] {.noSideEffect,
    importcpp: "Type", header: "StepData_PDescr.hxx".}
proc IsDescr*(this: StepData_PDescr; descr: handle[StepData_EDescr]): Standard_Boolean {.
    noSideEffect, importcpp: "IsDescr", header: "StepData_PDescr.hxx".}
proc DescrName*(this: StepData_PDescr): Standard_CString {.noSideEffect,
    importcpp: "DescrName", header: "StepData_PDescr.hxx".}
proc Arity*(this: StepData_PDescr): Standard_Integer {.noSideEffect,
    importcpp: "Arity", header: "StepData_PDescr.hxx".}
proc Simple*(this: StepData_PDescr): handle[StepData_PDescr] {.noSideEffect,
    importcpp: "Simple", header: "StepData_PDescr.hxx".}
proc IsOptional*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsOptional", header: "StepData_PDescr.hxx".}
proc IsDerived*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsDerived", header: "StepData_PDescr.hxx".}
proc IsField*(this: StepData_PDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsField", header: "StepData_PDescr.hxx".}
proc FieldName*(this: StepData_PDescr): Standard_CString {.noSideEffect,
    importcpp: "FieldName", header: "StepData_PDescr.hxx".}
proc FieldRank*(this: StepData_PDescr): Standard_Integer {.noSideEffect,
    importcpp: "FieldRank", header: "StepData_PDescr.hxx".}
proc Check*(this: StepData_PDescr; afild: StepData_Field;
           ach: var handle[Interface_Check]) {.noSideEffect, importcpp: "Check",
    header: "StepData_PDescr.hxx".}
type
  StepData_PDescrbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepData_PDescr::get_type_name(@)",
                              header: "StepData_PDescr.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_PDescr::get_type_descriptor(@)",
    header: "StepData_PDescr.hxx".}
proc DynamicType*(this: StepData_PDescr): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_PDescr.hxx".}