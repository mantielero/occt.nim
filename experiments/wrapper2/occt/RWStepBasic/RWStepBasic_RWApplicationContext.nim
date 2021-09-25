##  Created on: 1995-12-04
##  Created by: EXPRESS->CDL V0.2 Translator
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepData_StepWriter"
type
  RWStepBasicRWApplicationContext* {.importcpp: "RWStepBasic_RWApplicationContext", header: "RWStepBasic_RWApplicationContext.hxx",
                                    bycopy.} = object


proc constructRWStepBasicRWApplicationContext*(): RWStepBasicRWApplicationContext {.
    constructor, importcpp: "RWStepBasic_RWApplicationContext(@)",
    header: "RWStepBasic_RWApplicationContext.hxx".}
proc readStep*(this: RWStepBasicRWApplicationContext;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicApplicationContext]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWApplicationContext.hxx".}
proc writeStep*(this: RWStepBasicRWApplicationContext; sw: var StepDataStepWriter;
               ent: Handle[StepBasicApplicationContext]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWApplicationContext.hxx".}
