##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
discard "forward decl of StepAP214_Class"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP214RWClass* {.importcpp: "RWStepAP214_RWClass",
                       header: "RWStepAP214_RWClass.hxx", bycopy.} = object ## ! Empty
                                                                       ## constructor


proc constructRWStepAP214RWClass*(): RWStepAP214RWClass {.constructor,
    importcpp: "RWStepAP214_RWClass(@)", header: "RWStepAP214_RWClass.hxx".}
proc readStep*(this: RWStepAP214RWClass; data: Handle[StepDataStepReaderData];
              num: cint; ach: var Handle[InterfaceCheck]; ent: Handle[StepAP214Class]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepAP214_RWClass.hxx".}
proc writeStep*(this: RWStepAP214RWClass; sw: var StepDataStepWriter;
               ent: Handle[StepAP214Class]) {.noSideEffect, importcpp: "WriteStep",
    header: "RWStepAP214_RWClass.hxx".}
proc share*(this: RWStepAP214RWClass; ent: Handle[StepAP214Class];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP214_RWClass.hxx".}

























