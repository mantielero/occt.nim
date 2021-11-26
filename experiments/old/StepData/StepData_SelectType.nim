##  Created on: 1993-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StepData_PDescr"
discard "forward decl of StepData_SelectMember"
type
  StepDataSelectType* {.importcpp: "StepData_SelectType",
                       header: "StepData_SelectType.hxx", bycopy.} = object


proc `new`*(this: var StepDataSelectType; theSize: csize_t): pointer {.
    importcpp: "StepData_SelectType::operator new",
    header: "StepData_SelectType.hxx".}
proc `delete`*(this: var StepDataSelectType; theAddress: pointer) {.
    importcpp: "StepData_SelectType::operator delete",
    header: "StepData_SelectType.hxx".}
proc `new[]`*(this: var StepDataSelectType; theSize: csize_t): pointer {.
    importcpp: "StepData_SelectType::operator new[]",
    header: "StepData_SelectType.hxx".}
proc `delete[]`*(this: var StepDataSelectType; theAddress: pointer) {.
    importcpp: "StepData_SelectType::operator delete[]",
    header: "StepData_SelectType.hxx".}
proc `new`*(this: var StepDataSelectType; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepData_SelectType::operator new",
    header: "StepData_SelectType.hxx".}
proc `delete`*(this: var StepDataSelectType; a2: pointer; a3: pointer) {.
    importcpp: "StepData_SelectType::operator delete",
    header: "StepData_SelectType.hxx".}
proc caseNum*(this: StepDataSelectType; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepData_SelectType.hxx".}
proc matches*(this: StepDataSelectType; ent: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_SelectType.hxx".}
proc setValue*(this: var StepDataSelectType; ent: Handle[StandardTransient]) {.
    importcpp: "SetValue", header: "StepData_SelectType.hxx".}
proc nullify*(this: var StepDataSelectType) {.importcpp: "Nullify",
    header: "StepData_SelectType.hxx".}
proc value*(this: StepDataSelectType): Handle[StandardTransient] {.noSideEffect,
    importcpp: "Value", header: "StepData_SelectType.hxx".}
proc isNull*(this: StepDataSelectType): StandardBoolean {.noSideEffect,
    importcpp: "IsNull", header: "StepData_SelectType.hxx".}
proc `type`*(this: StepDataSelectType): Handle[StandardType] {.noSideEffect,
    importcpp: "Type", header: "StepData_SelectType.hxx".}
proc caseNumber*(this: StepDataSelectType): int {.noSideEffect,
    importcpp: "CaseNumber", header: "StepData_SelectType.hxx".}
proc description*(this: StepDataSelectType): Handle[StepDataPDescr] {.noSideEffect,
    importcpp: "Description", header: "StepData_SelectType.hxx".}
proc newMember*(this: StepDataSelectType): Handle[StepDataSelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepData_SelectType.hxx".}
proc caseMem*(this: StepDataSelectType; ent: Handle[StepDataSelectMember]): int {.
    noSideEffect, importcpp: "CaseMem", header: "StepData_SelectType.hxx".}
proc caseMember*(this: StepDataSelectType): int {.noSideEffect,
    importcpp: "CaseMember", header: "StepData_SelectType.hxx".}
proc member*(this: StepDataSelectType): Handle[StepDataSelectMember] {.noSideEffect,
    importcpp: "Member", header: "StepData_SelectType.hxx".}
proc selectName*(this: StepDataSelectType): StandardCString {.noSideEffect,
    importcpp: "SelectName", header: "StepData_SelectType.hxx".}
proc int*(this: StepDataSelectType): int {.noSideEffect, importcpp: "Int",
                                       header: "StepData_SelectType.hxx".}
proc setInt*(this: var StepDataSelectType; val: int) {.importcpp: "SetInt",
    header: "StepData_SelectType.hxx".}
proc integer*(this: StepDataSelectType): int {.noSideEffect, importcpp: "Integer",
    header: "StepData_SelectType.hxx".}
proc setInteger*(this: var StepDataSelectType; val: int; name: StandardCString = "") {.
    importcpp: "SetInteger", header: "StepData_SelectType.hxx".}
proc boolean*(this: StepDataSelectType): StandardBoolean {.noSideEffect,
    importcpp: "Boolean", header: "StepData_SelectType.hxx".}
proc setBoolean*(this: var StepDataSelectType; val: StandardBoolean;
                name: StandardCString = "") {.importcpp: "SetBoolean",
    header: "StepData_SelectType.hxx".}
proc logical*(this: StepDataSelectType): StepDataLogical {.noSideEffect,
    importcpp: "Logical", header: "StepData_SelectType.hxx".}
proc setLogical*(this: var StepDataSelectType; val: StepDataLogical;
                name: StandardCString = "") {.importcpp: "SetLogical",
    header: "StepData_SelectType.hxx".}
proc real*(this: StepDataSelectType): StandardReal {.noSideEffect, importcpp: "Real",
    header: "StepData_SelectType.hxx".}
proc setReal*(this: var StepDataSelectType; val: StandardReal;
             name: StandardCString = "") {.importcpp: "SetReal",
                                       header: "StepData_SelectType.hxx".}
proc destroyStepDataSelectType*(this: var StepDataSelectType) {.
    importcpp: "#.~StepData_SelectType()", header: "StepData_SelectType.hxx".}