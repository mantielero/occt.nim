##  Created on: 1995-04-20
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of StepSelect_Activator"
discard "forward decl of StepSelect_Activator"
type
  HandleC1C1* = Handle[StepSelectActivator]

## ! Performs Actions specific to StepSelect, i.e. creation of
## ! Step Selections and Counters, plus dumping specific to Step

type
  StepSelectActivator* {.importcpp: "StepSelect_Activator",
                        header: "StepSelect_Activator.hxx", bycopy.} = object of IFSelectActivator


proc constructStepSelectActivator*(): StepSelectActivator {.constructor,
    importcpp: "StepSelect_Activator(@)", header: "StepSelect_Activator.hxx".}
proc `do`*(this: var StepSelectActivator; number: int;
          pilot: Handle[IFSelectSessionPilot]): IFSelectReturnStatus {.
    importcpp: "Do", header: "StepSelect_Activator.hxx".}
proc help*(this: StepSelectActivator; number: int): StandardCString {.noSideEffect,
    importcpp: "Help", header: "StepSelect_Activator.hxx".}
type
  StepSelectActivatorbaseType* = IFSelectActivator

proc getTypeName*(): cstring {.importcpp: "StepSelect_Activator::get_type_name(@)",
                            header: "StepSelect_Activator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepSelect_Activator::get_type_descriptor(@)",
    header: "StepSelect_Activator.hxx".}
proc dynamicType*(this: StepSelectActivator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepSelect_Activator.hxx".}