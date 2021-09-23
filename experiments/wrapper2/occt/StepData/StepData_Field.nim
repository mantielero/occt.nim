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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean, StepData_Logical,
  ../Standard/Standard_CString

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepData_Field* {.importcpp: "StepData_Field", header: "StepData_Field.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## Field,
                                                                                         ## empty
                                                                                         ## ("no
                                                                                         ## value
                                                                                         ## defined")


proc constructStepData_Field*(): StepData_Field {.constructor,
    importcpp: "StepData_Field(@)", header: "StepData_Field.hxx".}
proc constructStepData_Field*(other: StepData_Field;
                             copy: Standard_Boolean = Standard_False): StepData_Field {.
    constructor, importcpp: "StepData_Field(@)", header: "StepData_Field.hxx".}
proc CopyFrom*(this: var StepData_Field; other: StepData_Field) {.
    importcpp: "CopyFrom", header: "StepData_Field.hxx".}
proc Clear*(this: var StepData_Field; kind: Standard_Integer = 0) {.importcpp: "Clear",
    header: "StepData_Field.hxx".}
proc SetDerived*(this: var StepData_Field) {.importcpp: "SetDerived",
    header: "StepData_Field.hxx".}
proc SetInt*(this: var StepData_Field; val: Standard_Integer) {.importcpp: "SetInt",
    header: "StepData_Field.hxx".}
proc SetInteger*(this: var StepData_Field; val: Standard_Integer = 0) {.
    importcpp: "SetInteger", header: "StepData_Field.hxx".}
proc SetBoolean*(this: var StepData_Field; val: Standard_Boolean = Standard_False) {.
    importcpp: "SetBoolean", header: "StepData_Field.hxx".}
proc SetLogical*(this: var StepData_Field; val: StepData_Logical = StepData_LFalse) {.
    importcpp: "SetLogical", header: "StepData_Field.hxx".}
proc SetReal*(this: var StepData_Field; val: Standard_Real = 0.0) {.
    importcpp: "SetReal", header: "StepData_Field.hxx".}
proc SetString*(this: var StepData_Field; val: Standard_CString = "") {.
    importcpp: "SetString", header: "StepData_Field.hxx".}
proc SetEnum*(this: var StepData_Field; val: Standard_Integer = -1;
             text: Standard_CString = "") {.importcpp: "SetEnum",
                                        header: "StepData_Field.hxx".}
proc SetSelectMember*(this: var StepData_Field; val: handle[StepData_SelectMember]) {.
    importcpp: "SetSelectMember", header: "StepData_Field.hxx".}
proc SetEntity*(this: var StepData_Field; val: handle[Standard_Transient]) {.
    importcpp: "SetEntity", header: "StepData_Field.hxx".}
proc SetEntity*(this: var StepData_Field) {.importcpp: "SetEntity",
                                        header: "StepData_Field.hxx".}
proc SetList*(this: var StepData_Field; size: Standard_Integer;
             first: Standard_Integer = 1) {.importcpp: "SetList",
                                        header: "StepData_Field.hxx".}
proc SetList2*(this: var StepData_Field; siz1: Standard_Integer;
              siz2: Standard_Integer; f1: Standard_Integer = 1;
              f2: Standard_Integer = 1) {.importcpp: "SetList2",
                                      header: "StepData_Field.hxx".}
proc Set*(this: var StepData_Field; val: handle[Standard_Transient]) {.
    importcpp: "Set", header: "StepData_Field.hxx".}
proc ClearItem*(this: var StepData_Field; num: Standard_Integer) {.
    importcpp: "ClearItem", header: "StepData_Field.hxx".}
proc SetInt*(this: var StepData_Field; num: Standard_Integer; val: Standard_Integer;
            kind: Standard_Integer) {.importcpp: "SetInt",
                                    header: "StepData_Field.hxx".}
proc SetInteger*(this: var StepData_Field; num: Standard_Integer;
                val: Standard_Integer) {.importcpp: "SetInteger",
                                       header: "StepData_Field.hxx".}
proc SetBoolean*(this: var StepData_Field; num: Standard_Integer;
                val: Standard_Boolean) {.importcpp: "SetBoolean",
                                       header: "StepData_Field.hxx".}
proc SetLogical*(this: var StepData_Field; num: Standard_Integer;
                val: StepData_Logical) {.importcpp: "SetLogical",
                                       header: "StepData_Field.hxx".}
proc SetEnum*(this: var StepData_Field; num: Standard_Integer; val: Standard_Integer;
             text: Standard_CString = "") {.importcpp: "SetEnum",
                                        header: "StepData_Field.hxx".}
proc SetReal*(this: var StepData_Field; num: Standard_Integer; val: Standard_Real) {.
    importcpp: "SetReal", header: "StepData_Field.hxx".}
proc SetString*(this: var StepData_Field; num: Standard_Integer; val: Standard_CString) {.
    importcpp: "SetString", header: "StepData_Field.hxx".}
proc SetEntity*(this: var StepData_Field; num: Standard_Integer;
               val: handle[Standard_Transient]) {.importcpp: "SetEntity",
    header: "StepData_Field.hxx".}
proc IsSet*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): Standard_Boolean {.
    noSideEffect, importcpp: "IsSet", header: "StepData_Field.hxx".}
proc ItemKind*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): Standard_Integer {.
    noSideEffect, importcpp: "ItemKind", header: "StepData_Field.hxx".}
proc Kind*(this: StepData_Field; `type`: Standard_Boolean = Standard_True): Standard_Integer {.
    noSideEffect, importcpp: "Kind", header: "StepData_Field.hxx".}
proc Arity*(this: StepData_Field): Standard_Integer {.noSideEffect,
    importcpp: "Arity", header: "StepData_Field.hxx".}
proc Length*(this: StepData_Field; index: Standard_Integer = 1): Standard_Integer {.
    noSideEffect, importcpp: "Length", header: "StepData_Field.hxx".}
proc Lower*(this: StepData_Field; index: Standard_Integer = 1): Standard_Integer {.
    noSideEffect, importcpp: "Lower", header: "StepData_Field.hxx".}
proc Int*(this: StepData_Field): Standard_Integer {.noSideEffect, importcpp: "Int",
    header: "StepData_Field.hxx".}
proc Integer*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): Standard_Integer {.
    noSideEffect, importcpp: "Integer", header: "StepData_Field.hxx".}
proc Boolean*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): Standard_Boolean {.
    noSideEffect, importcpp: "Boolean", header: "StepData_Field.hxx".}
proc Logical*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): StepData_Logical {.
    noSideEffect, importcpp: "Logical", header: "StepData_Field.hxx".}
proc Real*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): Standard_Real {.
    noSideEffect, importcpp: "Real", header: "StepData_Field.hxx".}
proc String*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): Standard_CString {.
    noSideEffect, importcpp: "String", header: "StepData_Field.hxx".}
proc Enum*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): Standard_Integer {.
    noSideEffect, importcpp: "Enum", header: "StepData_Field.hxx".}
proc EnumText*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): Standard_CString {.
    noSideEffect, importcpp: "EnumText", header: "StepData_Field.hxx".}
proc Entity*(this: StepData_Field; n1: Standard_Integer = 1; n2: Standard_Integer = 1): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Entity",
                         header: "StepData_Field.hxx".}
proc Transient*(this: StepData_Field): handle[Standard_Transient] {.noSideEffect,
    importcpp: "Transient", header: "StepData_Field.hxx".}