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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, StepData_Field, StepData_SelectMember,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of StepData_Field"
discard "forward decl of StepData_SelectNamed"
discard "forward decl of StepData_SelectNamed"
type
  Handle_StepData_SelectNamed* = handle[StepData_SelectNamed]

## ! This select member can be of any kind, and be named
## ! But its takes more memory than some specialised ones
## ! This class allows one name for the instance

type
  StepData_SelectNamed* {.importcpp: "StepData_SelectNamed",
                         header: "StepData_SelectNamed.hxx", bycopy.} = object of StepData_SelectMember


proc constructStepData_SelectNamed*(): StepData_SelectNamed {.constructor,
    importcpp: "StepData_SelectNamed(@)", header: "StepData_SelectNamed.hxx".}
proc HasName*(this: StepData_SelectNamed): Standard_Boolean {.noSideEffect,
    importcpp: "HasName", header: "StepData_SelectNamed.hxx".}
proc Name*(this: StepData_SelectNamed): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepData_SelectNamed.hxx".}
proc SetName*(this: var StepData_SelectNamed; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetName", header: "StepData_SelectNamed.hxx".}
proc Field*(this: StepData_SelectNamed): StepData_Field {.noSideEffect,
    importcpp: "Field", header: "StepData_SelectNamed.hxx".}
proc CField*(this: var StepData_SelectNamed): var StepData_Field {.
    importcpp: "CField", header: "StepData_SelectNamed.hxx".}
proc Kind*(this: StepData_SelectNamed): Standard_Integer {.noSideEffect,
    importcpp: "Kind", header: "StepData_SelectNamed.hxx".}
proc SetKind*(this: var StepData_SelectNamed; kind: Standard_Integer) {.
    importcpp: "SetKind", header: "StepData_SelectNamed.hxx".}
proc Int*(this: StepData_SelectNamed): Standard_Integer {.noSideEffect,
    importcpp: "Int", header: "StepData_SelectNamed.hxx".}
proc SetInt*(this: var StepData_SelectNamed; val: Standard_Integer) {.
    importcpp: "SetInt", header: "StepData_SelectNamed.hxx".}
proc Real*(this: StepData_SelectNamed): Standard_Real {.noSideEffect,
    importcpp: "Real", header: "StepData_SelectNamed.hxx".}
proc SetReal*(this: var StepData_SelectNamed; val: Standard_Real) {.
    importcpp: "SetReal", header: "StepData_SelectNamed.hxx".}
proc String*(this: StepData_SelectNamed): Standard_CString {.noSideEffect,
    importcpp: "String", header: "StepData_SelectNamed.hxx".}
proc SetString*(this: var StepData_SelectNamed; val: Standard_CString) {.
    importcpp: "SetString", header: "StepData_SelectNamed.hxx".}
type
  StepData_SelectNamedbase_type* = StepData_SelectMember

proc get_type_name*(): cstring {.importcpp: "StepData_SelectNamed::get_type_name(@)",
                              header: "StepData_SelectNamed.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_SelectNamed::get_type_descriptor(@)",
    header: "StepData_SelectNamed.hxx".}
proc DynamicType*(this: StepData_SelectNamed): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_SelectNamed.hxx".}