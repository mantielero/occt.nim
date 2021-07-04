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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepAP214_ExternallyDefinedClass"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP214_RWExternallyDefinedClass* {.
      importcpp: "RWStepAP214_RWExternallyDefinedClass",
      header: "RWStepAP214_RWExternallyDefinedClass.hxx", bycopy.} = object ## ! Empty
                                                                       ## constructor


proc constructRWStepAP214_RWExternallyDefinedClass*(): RWStepAP214_RWExternallyDefinedClass {.
    constructor, importcpp: "RWStepAP214_RWExternallyDefinedClass(@)",
    header: "RWStepAP214_RWExternallyDefinedClass.hxx".}
proc ReadStep*(this: RWStepAP214_RWExternallyDefinedClass;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepAP214_ExternallyDefinedClass]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepAP214_RWExternallyDefinedClass.hxx".}
proc WriteStep*(this: RWStepAP214_RWExternallyDefinedClass;
               SW: var StepData_StepWriter;
               ent: handle[StepAP214_ExternallyDefinedClass]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepAP214_RWExternallyDefinedClass.hxx".}
proc Share*(this: RWStepAP214_RWExternallyDefinedClass;
           ent: handle[StepAP214_ExternallyDefinedClass];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP214_RWExternallyDefinedClass.hxx".}