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

discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
type
  StepDataField* {.importcpp: "StepData_Field", header: "StepData_Field.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## Field,
                                                                                        ## empty
                                                                                        ## ("no
                                                                                        ## value
                                                                                        ## defined")


proc constructStepDataField*(): StepDataField {.constructor,
    importcpp: "StepData_Field(@)", header: "StepData_Field.hxx".}
proc constructStepDataField*(other: StepDataField; copy: bool = false): StepDataField {.
    constructor, importcpp: "StepData_Field(@)", header: "StepData_Field.hxx".}
proc copyFrom*(this: var StepDataField; other: StepDataField) {.importcpp: "CopyFrom",
    header: "StepData_Field.hxx".}
proc clear*(this: var StepDataField; kind: int = 0) {.importcpp: "Clear",
    header: "StepData_Field.hxx".}
proc setDerived*(this: var StepDataField) {.importcpp: "SetDerived",
                                        header: "StepData_Field.hxx".}
proc setInt*(this: var StepDataField; val: int) {.importcpp: "SetInt",
    header: "StepData_Field.hxx".}
proc setInteger*(this: var StepDataField; val: int = 0) {.importcpp: "SetInteger",
    header: "StepData_Field.hxx".}
proc setBoolean*(this: var StepDataField; val: bool = false) {.importcpp: "SetBoolean",
    header: "StepData_Field.hxx".}
proc setLogical*(this: var StepDataField; val: StepDataLogical = stepDataLFalse) {.
    importcpp: "SetLogical", header: "StepData_Field.hxx".}
proc setReal*(this: var StepDataField; val: float = 0.0) {.importcpp: "SetReal",
    header: "StepData_Field.hxx".}
proc setString*(this: var StepDataField; val: StandardCString = "") {.
    importcpp: "SetString", header: "StepData_Field.hxx".}
proc setEnum*(this: var StepDataField; val: int = -1; text: StandardCString = "") {.
    importcpp: "SetEnum", header: "StepData_Field.hxx".}
proc setSelectMember*(this: var StepDataField; val: Handle[StepDataSelectMember]) {.
    importcpp: "SetSelectMember", header: "StepData_Field.hxx".}
proc setEntity*(this: var StepDataField; val: Handle[StandardTransient]) {.
    importcpp: "SetEntity", header: "StepData_Field.hxx".}
proc setEntity*(this: var StepDataField) {.importcpp: "SetEntity",
                                       header: "StepData_Field.hxx".}
proc setList*(this: var StepDataField; size: int; first: int = 1) {.importcpp: "SetList",
    header: "StepData_Field.hxx".}
proc setList2*(this: var StepDataField; siz1: int; siz2: int; f1: int = 1; f2: int = 1) {.
    importcpp: "SetList2", header: "StepData_Field.hxx".}
proc set*(this: var StepDataField; val: Handle[StandardTransient]) {.importcpp: "Set",
    header: "StepData_Field.hxx".}
proc clearItem*(this: var StepDataField; num: int) {.importcpp: "ClearItem",
    header: "StepData_Field.hxx".}
proc setInt*(this: var StepDataField; num: int; val: int; kind: int) {.
    importcpp: "SetInt", header: "StepData_Field.hxx".}
proc setInteger*(this: var StepDataField; num: int; val: int) {.importcpp: "SetInteger",
    header: "StepData_Field.hxx".}
proc setBoolean*(this: var StepDataField; num: int; val: bool) {.
    importcpp: "SetBoolean", header: "StepData_Field.hxx".}
proc setLogical*(this: var StepDataField; num: int; val: StepDataLogical) {.
    importcpp: "SetLogical", header: "StepData_Field.hxx".}
proc setEnum*(this: var StepDataField; num: int; val: int; text: StandardCString = "") {.
    importcpp: "SetEnum", header: "StepData_Field.hxx".}
proc setReal*(this: var StepDataField; num: int; val: float) {.importcpp: "SetReal",
    header: "StepData_Field.hxx".}
proc setString*(this: var StepDataField; num: int; val: StandardCString) {.
    importcpp: "SetString", header: "StepData_Field.hxx".}
proc setEntity*(this: var StepDataField; num: int; val: Handle[StandardTransient]) {.
    importcpp: "SetEntity", header: "StepData_Field.hxx".}
proc isSet*(this: StepDataField; n1: int = 1; n2: int = 1): bool {.noSideEffect,
    importcpp: "IsSet", header: "StepData_Field.hxx".}
proc itemKind*(this: StepDataField; n1: int = 1; n2: int = 1): int {.noSideEffect,
    importcpp: "ItemKind", header: "StepData_Field.hxx".}
proc kind*(this: StepDataField; `type`: bool = true): int {.noSideEffect,
    importcpp: "Kind", header: "StepData_Field.hxx".}
proc arity*(this: StepDataField): int {.noSideEffect, importcpp: "Arity",
                                    header: "StepData_Field.hxx".}
proc length*(this: StepDataField; index: int = 1): int {.noSideEffect,
    importcpp: "Length", header: "StepData_Field.hxx".}
proc lower*(this: StepDataField; index: int = 1): int {.noSideEffect, importcpp: "Lower",
    header: "StepData_Field.hxx".}
proc int*(this: StepDataField): int {.noSideEffect, importcpp: "Int",
                                  header: "StepData_Field.hxx".}
proc integer*(this: StepDataField; n1: int = 1; n2: int = 1): int {.noSideEffect,
    importcpp: "Integer", header: "StepData_Field.hxx".}
proc boolean*(this: StepDataField; n1: int = 1; n2: int = 1): bool {.noSideEffect,
    importcpp: "Boolean", header: "StepData_Field.hxx".}
proc logical*(this: StepDataField; n1: int = 1; n2: int = 1): StepDataLogical {.
    noSideEffect, importcpp: "Logical", header: "StepData_Field.hxx".}
proc real*(this: StepDataField; n1: int = 1; n2: int = 1): float {.noSideEffect,
    importcpp: "Real", header: "StepData_Field.hxx".}
proc string*(this: StepDataField; n1: int = 1; n2: int = 1): StandardCString {.noSideEffect,
    importcpp: "String", header: "StepData_Field.hxx".}
proc `enum`*(this: StepDataField; n1: int = 1; n2: int = 1): int {.noSideEffect,
    importcpp: "Enum", header: "StepData_Field.hxx".}
proc enumText*(this: StepDataField; n1: int = 1; n2: int = 1): StandardCString {.
    noSideEffect, importcpp: "EnumText", header: "StepData_Field.hxx".}
proc entity*(this: StepDataField; n1: int = 1; n2: int = 1): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Entity", header: "StepData_Field.hxx".}
proc transient*(this: StepDataField): Handle[StandardTransient] {.noSideEffect,
    importcpp: "Transient", header: "StepData_Field.hxx".}
