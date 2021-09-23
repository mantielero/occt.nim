##  Created on: 1997-05-09
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
  ../Standard/Standard, ../Standard/Standard_Type, StepData_FieldListN,
  StepData_Described, ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of StepData_ESDescr"
discard "forward decl of StepData_Field"
discard "forward decl of StepData_FieldListN"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepData_Simple"
discard "forward decl of StepData_Simple"
type
  Handle_StepData_Simple* = handle[StepData_Simple]

## ! A Simple Entity is defined by a type (which can heve super
## ! types) and a list of parameters

type
  StepData_Simple* {.importcpp: "StepData_Simple", header: "StepData_Simple.hxx",
                    bycopy.} = object of StepData_Described ## ! Creates a Simple Entity


proc constructStepData_Simple*(descr: handle[StepData_ESDescr]): StepData_Simple {.
    constructor, importcpp: "StepData_Simple(@)", header: "StepData_Simple.hxx".}
proc ESDescr*(this: StepData_Simple): handle[StepData_ESDescr] {.noSideEffect,
    importcpp: "ESDescr", header: "StepData_Simple.hxx".}
proc StepType*(this: StepData_Simple): Standard_CString {.noSideEffect,
    importcpp: "StepType", header: "StepData_Simple.hxx".}
proc IsComplex*(this: StepData_Simple): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_Simple.hxx".}
proc Matches*(this: StepData_Simple; steptype: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_Simple.hxx".}
proc As*(this: StepData_Simple; steptype: Standard_CString): handle[StepData_Simple] {.
    noSideEffect, importcpp: "As", header: "StepData_Simple.hxx".}
proc HasField*(this: StepData_Simple; name: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "HasField", header: "StepData_Simple.hxx".}
proc Field*(this: StepData_Simple; name: Standard_CString): StepData_Field {.
    noSideEffect, importcpp: "Field", header: "StepData_Simple.hxx".}
proc CField*(this: var StepData_Simple; name: Standard_CString): var StepData_Field {.
    importcpp: "CField", header: "StepData_Simple.hxx".}
proc NbFields*(this: StepData_Simple): Standard_Integer {.noSideEffect,
    importcpp: "NbFields", header: "StepData_Simple.hxx".}
proc FieldNum*(this: StepData_Simple; num: Standard_Integer): StepData_Field {.
    noSideEffect, importcpp: "FieldNum", header: "StepData_Simple.hxx".}
proc CFieldNum*(this: var StepData_Simple; num: Standard_Integer): var StepData_Field {.
    importcpp: "CFieldNum", header: "StepData_Simple.hxx".}
proc Fields*(this: StepData_Simple): StepData_FieldListN {.noSideEffect,
    importcpp: "Fields", header: "StepData_Simple.hxx".}
proc CFields*(this: var StepData_Simple): var StepData_FieldListN {.
    importcpp: "CFields", header: "StepData_Simple.hxx".}
proc Check*(this: StepData_Simple; ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "Check", header: "StepData_Simple.hxx".}
proc Shared*(this: StepData_Simple; list: var Interface_EntityIterator) {.
    noSideEffect, importcpp: "Shared", header: "StepData_Simple.hxx".}
type
  StepData_Simplebase_type* = StepData_Described

proc get_type_name*(): cstring {.importcpp: "StepData_Simple::get_type_name(@)",
                              header: "StepData_Simple.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_Simple::get_type_descriptor(@)",
    header: "StepData_Simple.hxx".}
proc DynamicType*(this: StepData_Simple): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_Simple.hxx".}