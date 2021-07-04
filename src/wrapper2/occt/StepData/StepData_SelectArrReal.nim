##  Created on: 2002-12-18
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../TColStd/TColStd_HArray1OfReal, StepData_SelectNamed,
  ../Standard/Standard_Integer

discard "forward decl of StepData_SelectArrReal"
discard "forward decl of StepData_SelectArrReal"
type
  Handle_StepData_SelectArrReal* = handle[StepData_SelectArrReal]
  StepData_SelectArrReal* {.importcpp: "StepData_SelectArrReal",
                           header: "StepData_SelectArrReal.hxx", bycopy.} = object of StepData_SelectNamed


proc constructStepData_SelectArrReal*(): StepData_SelectArrReal {.constructor,
    importcpp: "StepData_SelectArrReal(@)", header: "StepData_SelectArrReal.hxx".}
proc Kind*(this: StepData_SelectArrReal): Standard_Integer {.noSideEffect,
    importcpp: "Kind", header: "StepData_SelectArrReal.hxx".}
proc ArrReal*(this: StepData_SelectArrReal): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "ArrReal", header: "StepData_SelectArrReal.hxx".}
proc SetArrReal*(this: var StepData_SelectArrReal;
                arr: handle[TColStd_HArray1OfReal]) {.importcpp: "SetArrReal",
    header: "StepData_SelectArrReal.hxx".}
type
  StepData_SelectArrRealbase_type* = StepData_SelectNamed

proc get_type_name*(): cstring {.importcpp: "StepData_SelectArrReal::get_type_name(@)",
                              header: "StepData_SelectArrReal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_SelectArrReal::get_type_descriptor(@)",
    header: "StepData_SelectArrReal.hxx".}
proc DynamicType*(this: StepData_SelectArrReal): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_SelectArrReal.hxx".}