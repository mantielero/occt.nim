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

discard "forward decl of StepData_SelectArrReal"
discard "forward decl of StepData_SelectArrReal"
type
  HandleStepDataSelectArrReal* = Handle[StepDataSelectArrReal]
  StepDataSelectArrReal* {.importcpp: "StepData_SelectArrReal",
                          header: "StepData_SelectArrReal.hxx", bycopy.} = object of StepDataSelectNamed


proc constructStepDataSelectArrReal*(): StepDataSelectArrReal {.constructor,
    importcpp: "StepData_SelectArrReal(@)", header: "StepData_SelectArrReal.hxx".}
proc kind*(this: StepDataSelectArrReal): int {.noSideEffect, importcpp: "Kind",
    header: "StepData_SelectArrReal.hxx".}
proc arrReal*(this: StepDataSelectArrReal): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "ArrReal", header: "StepData_SelectArrReal.hxx".}
proc setArrReal*(this: var StepDataSelectArrReal; arr: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetArrReal", header: "StepData_SelectArrReal.hxx".}
type
  StepDataSelectArrRealbaseType* = StepDataSelectNamed

proc getTypeName*(): cstring {.importcpp: "StepData_SelectArrReal::get_type_name(@)",
                            header: "StepData_SelectArrReal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_SelectArrReal::get_type_descriptor(@)",
    header: "StepData_SelectArrReal.hxx".}
proc dynamicType*(this: StepDataSelectArrReal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_SelectArrReal.hxx".}
