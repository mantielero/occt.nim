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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString

discard "forward decl of StepData_EDescr"
discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of StepData_Simple"
discard "forward decl of StepData_Field"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepData_Described"
discard "forward decl of StepData_Described"
type
  Handle_StepData_Described* = handle[StepData_Described]

## ! General frame to describe entities with Description (Simple or
## ! Complex)

type
  StepData_Described* {.importcpp: "StepData_Described",
                       header: "StepData_Described.hxx", bycopy.} = object of Standard_Transient ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## the
                                                                                          ## Description
                                                                                          ## used
                                                                                          ## to
                                                                                          ## define
                                                                                          ## this
                                                                                          ## entity
                                                                                          ##
                                                                                          ## !
                                                                                          ## Initializes
                                                                                          ## a
                                                                                          ## Described
                                                                                          ## Entity
                                                                                          ## from
                                                                                          ## a
                                                                                          ## Description
                                                                                          ##
                                                                                          ## !
                                                                                          ## (i.e.
                                                                                          ## puts
                                                                                          ## it
                                                                                          ## in
                                                                                          ## a
                                                                                          ## field
                                                                                          ## ...)


proc Description*(this: StepData_Described): handle[StepData_EDescr] {.noSideEffect,
    importcpp: "Description", header: "StepData_Described.hxx".}
proc IsComplex*(this: StepData_Described): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_Described.hxx".}
proc Matches*(this: StepData_Described; steptype: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_Described.hxx".}
proc As*(this: StepData_Described; steptype: Standard_CString): handle[
    StepData_Simple] {.noSideEffect, importcpp: "As",
                      header: "StepData_Described.hxx".}
proc HasField*(this: StepData_Described; name: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "HasField", header: "StepData_Described.hxx".}
proc Field*(this: StepData_Described; name: Standard_CString): StepData_Field {.
    noSideEffect, importcpp: "Field", header: "StepData_Described.hxx".}
proc CField*(this: var StepData_Described; name: Standard_CString): var StepData_Field {.
    importcpp: "CField", header: "StepData_Described.hxx".}
proc Check*(this: StepData_Described; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "Check", header: "StepData_Described.hxx".}
proc Shared*(this: StepData_Described; list: var Interface_EntityIterator) {.
    noSideEffect, importcpp: "Shared", header: "StepData_Described.hxx".}
type
  StepData_Describedbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepData_Described::get_type_name(@)",
                              header: "StepData_Described.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_Described::get_type_descriptor(@)",
    header: "StepData_Described.hxx".}
proc DynamicType*(this: StepData_Described): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_Described.hxx".}