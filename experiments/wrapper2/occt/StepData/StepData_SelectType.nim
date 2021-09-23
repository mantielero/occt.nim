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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type,
  ../Standard/Standard_CString, StepData_Logical, ../Standard/Standard_Real

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StepData_PDescr"
discard "forward decl of StepData_SelectMember"
type
  StepData_SelectType* {.importcpp: "StepData_SelectType",
                        header: "StepData_SelectType.hxx", bycopy.} = object ## !
                                                                        ## Recognizes the Type of an Entity. Returns a positive Number
                                                                        ## ! which
                                                                        ## identifies the Type in the
                                                                        ## definition List of the
                                                                        ## !
                                                                        ## SelectType. Returns Zero if its Type in not in this List.


proc CaseNum*(this: StepData_SelectType; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepData_SelectType.hxx".}
proc Matches*(this: StepData_SelectType; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_SelectType.hxx".}
proc SetValue*(this: var StepData_SelectType; ent: handle[Standard_Transient]) {.
    importcpp: "SetValue", header: "StepData_SelectType.hxx".}
proc Nullify*(this: var StepData_SelectType) {.importcpp: "Nullify",
    header: "StepData_SelectType.hxx".}
proc Value*(this: StepData_SelectType): handle[Standard_Transient] {.noSideEffect,
    importcpp: "Value", header: "StepData_SelectType.hxx".}
proc IsNull*(this: StepData_SelectType): Standard_Boolean {.noSideEffect,
    importcpp: "IsNull", header: "StepData_SelectType.hxx".}
proc Type*(this: StepData_SelectType): handle[Standard_Type] {.noSideEffect,
    importcpp: "Type", header: "StepData_SelectType.hxx".}
proc CaseNumber*(this: StepData_SelectType): Standard_Integer {.noSideEffect,
    importcpp: "CaseNumber", header: "StepData_SelectType.hxx".}
proc Description*(this: StepData_SelectType): handle[StepData_PDescr] {.
    noSideEffect, importcpp: "Description", header: "StepData_SelectType.hxx".}
proc NewMember*(this: StepData_SelectType): handle[StepData_SelectMember] {.
    noSideEffect, importcpp: "NewMember", header: "StepData_SelectType.hxx".}
proc CaseMem*(this: StepData_SelectType; ent: handle[StepData_SelectMember]): Standard_Integer {.
    noSideEffect, importcpp: "CaseMem", header: "StepData_SelectType.hxx".}
proc CaseMember*(this: StepData_SelectType): Standard_Integer {.noSideEffect,
    importcpp: "CaseMember", header: "StepData_SelectType.hxx".}
proc Member*(this: StepData_SelectType): handle[StepData_SelectMember] {.
    noSideEffect, importcpp: "Member", header: "StepData_SelectType.hxx".}
proc SelectName*(this: StepData_SelectType): Standard_CString {.noSideEffect,
    importcpp: "SelectName", header: "StepData_SelectType.hxx".}
proc Int*(this: StepData_SelectType): Standard_Integer {.noSideEffect,
    importcpp: "Int", header: "StepData_SelectType.hxx".}
proc SetInt*(this: var StepData_SelectType; val: Standard_Integer) {.
    importcpp: "SetInt", header: "StepData_SelectType.hxx".}
proc Integer*(this: StepData_SelectType): Standard_Integer {.noSideEffect,
    importcpp: "Integer", header: "StepData_SelectType.hxx".}
proc SetInteger*(this: var StepData_SelectType; val: Standard_Integer;
                name: Standard_CString = "") {.importcpp: "SetInteger",
    header: "StepData_SelectType.hxx".}
proc Boolean*(this: StepData_SelectType): Standard_Boolean {.noSideEffect,
    importcpp: "Boolean", header: "StepData_SelectType.hxx".}
proc SetBoolean*(this: var StepData_SelectType; val: Standard_Boolean;
                name: Standard_CString = "") {.importcpp: "SetBoolean",
    header: "StepData_SelectType.hxx".}
proc Logical*(this: StepData_SelectType): StepData_Logical {.noSideEffect,
    importcpp: "Logical", header: "StepData_SelectType.hxx".}
proc SetLogical*(this: var StepData_SelectType; val: StepData_Logical;
                name: Standard_CString = "") {.importcpp: "SetLogical",
    header: "StepData_SelectType.hxx".}
proc Real*(this: StepData_SelectType): Standard_Real {.noSideEffect,
    importcpp: "Real", header: "StepData_SelectType.hxx".}
proc SetReal*(this: var StepData_SelectType; val: Standard_Real;
             name: Standard_CString = "") {.importcpp: "SetReal",
                                        header: "StepData_SelectType.hxx".}
proc destroyStepData_SelectType*(this: var StepData_SelectType) {.
    importcpp: "#.~StepData_SelectType()", header: "StepData_SelectType.hxx".}