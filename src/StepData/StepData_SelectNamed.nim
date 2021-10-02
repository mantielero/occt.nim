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

discard "forward decl of StepData_Field"
discard "forward decl of StepData_SelectNamed"
discard "forward decl of StepData_SelectNamed"
type
  HandleC1C1* = Handle[StepDataSelectNamed]

## ! This select member can be of any kind, and be named
## ! But its takes more memory than some specialised ones
## ! This class allows one name for the instance

type
  StepDataSelectNamed* {.importcpp: "StepData_SelectNamed",
                        header: "StepData_SelectNamed.hxx", bycopy.} = object of StepDataSelectMember


proc constructStepDataSelectNamed*(): StepDataSelectNamed {.constructor,
    importcpp: "StepData_SelectNamed(@)", header: "StepData_SelectNamed.hxx".}
proc hasName*(this: StepDataSelectNamed): StandardBoolean {.noSideEffect,
    importcpp: "HasName", header: "StepData_SelectNamed.hxx".}
proc name*(this: StepDataSelectNamed): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepData_SelectNamed.hxx".}
proc setName*(this: var StepDataSelectNamed; name: StandardCString): StandardBoolean {.
    importcpp: "SetName", header: "StepData_SelectNamed.hxx".}
proc field*(this: StepDataSelectNamed): StepDataField {.noSideEffect,
    importcpp: "Field", header: "StepData_SelectNamed.hxx".}
proc cField*(this: var StepDataSelectNamed): var StepDataField {.importcpp: "CField",
    header: "StepData_SelectNamed.hxx".}
proc kind*(this: StepDataSelectNamed): int {.noSideEffect, importcpp: "Kind",
    header: "StepData_SelectNamed.hxx".}
proc setKind*(this: var StepDataSelectNamed; kind: int) {.importcpp: "SetKind",
    header: "StepData_SelectNamed.hxx".}
proc int*(this: StepDataSelectNamed): int {.noSideEffect, importcpp: "Int",
                                        header: "StepData_SelectNamed.hxx".}
proc setInt*(this: var StepDataSelectNamed; val: int) {.importcpp: "SetInt",
    header: "StepData_SelectNamed.hxx".}
proc real*(this: StepDataSelectNamed): StandardReal {.noSideEffect,
    importcpp: "Real", header: "StepData_SelectNamed.hxx".}
proc setReal*(this: var StepDataSelectNamed; val: StandardReal) {.
    importcpp: "SetReal", header: "StepData_SelectNamed.hxx".}
proc string*(this: StepDataSelectNamed): StandardCString {.noSideEffect,
    importcpp: "String", header: "StepData_SelectNamed.hxx".}
proc setString*(this: var StepDataSelectNamed; val: StandardCString) {.
    importcpp: "SetString", header: "StepData_SelectNamed.hxx".}
type
  StepDataSelectNamedbaseType* = StepDataSelectMember

proc getTypeName*(): cstring {.importcpp: "StepData_SelectNamed::get_type_name(@)",
                            header: "StepData_SelectNamed.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_SelectNamed::get_type_descriptor(@)",
    header: "StepData_SelectNamed.hxx".}
proc dynamicType*(this: StepDataSelectNamed): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_SelectNamed.hxx".}