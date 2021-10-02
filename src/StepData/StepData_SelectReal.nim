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

discard "forward decl of StepData_SelectReal"
discard "forward decl of StepData_SelectReal"
type
  HandleC1C1* = Handle[StepDataSelectReal]

## ! A SelectReal is a SelectMember specialised for a basic real
## ! type in a select which also accepts entities : this one has
## ! NO NAME
## ! For a named select, see SelectNamed

type
  StepDataSelectReal* {.importcpp: "StepData_SelectReal",
                       header: "StepData_SelectReal.hxx", bycopy.} = object of StepDataSelectMember


proc constructStepDataSelectReal*(): StepDataSelectReal {.constructor,
    importcpp: "StepData_SelectReal(@)", header: "StepData_SelectReal.hxx".}
proc kind*(this: StepDataSelectReal): int {.noSideEffect, importcpp: "Kind",
                                        header: "StepData_SelectReal.hxx".}
proc real*(this: StepDataSelectReal): StandardReal {.noSideEffect, importcpp: "Real",
    header: "StepData_SelectReal.hxx".}
proc setReal*(this: var StepDataSelectReal; val: StandardReal) {.importcpp: "SetReal",
    header: "StepData_SelectReal.hxx".}
type
  StepDataSelectRealbaseType* = StepDataSelectMember

proc getTypeName*(): cstring {.importcpp: "StepData_SelectReal::get_type_name(@)",
                            header: "StepData_SelectReal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_SelectReal::get_type_descriptor(@)",
    header: "StepData_SelectReal.hxx".}
proc dynamicType*(this: StepDataSelectReal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_SelectReal.hxx".}