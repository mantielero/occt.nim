##  Created on: 1997-04-02
##  Created by: Administrateur Atelier XSTEP
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

discard "forward decl of StepData_Described"
discard "forward decl of StepData_EDescr"
discard "forward decl of StepData_EDescr"
type
  Handle_StepData_EDescr* = handle[StepData_EDescr]

## ! This class is intended to describe the authorized form for an
## ! entity, either Simple or Plex

type
  StepData_EDescr* {.importcpp: "StepData_EDescr", header: "StepData_EDescr.hxx",
                    bycopy.} = object of Standard_Transient ## ! Tells if a ESDescr matches a step type : exact or super type


proc Matches*(this: StepData_EDescr; steptype: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_EDescr.hxx".}
proc IsComplex*(this: StepData_EDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_EDescr.hxx".}
proc NewEntity*(this: StepData_EDescr): handle[StepData_Described] {.noSideEffect,
    importcpp: "NewEntity", header: "StepData_EDescr.hxx".}
type
  StepData_EDescrbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepData_EDescr::get_type_name(@)",
                              header: "StepData_EDescr.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_EDescr::get_type_descriptor(@)",
    header: "StepData_EDescr.hxx".}
proc DynamicType*(this: StepData_EDescr): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_EDescr.hxx".}