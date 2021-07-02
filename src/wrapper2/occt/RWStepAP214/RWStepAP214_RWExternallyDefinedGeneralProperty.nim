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
discard "forward decl of StepAP214_ExternallyDefinedGeneralProperty"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP214RWExternallyDefinedGeneralProperty* {.
      importcpp: "RWStepAP214_RWExternallyDefinedGeneralProperty",
      header: "RWStepAP214_RWExternallyDefinedGeneralProperty.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor


proc constructRWStepAP214RWExternallyDefinedGeneralProperty*(): RWStepAP214RWExternallyDefinedGeneralProperty {.
    constructor, importcpp: "RWStepAP214_RWExternallyDefinedGeneralProperty(@)",
    header: "RWStepAP214_RWExternallyDefinedGeneralProperty.hxx".}
proc readStep*(this: RWStepAP214RWExternallyDefinedGeneralProperty;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepAP214ExternallyDefinedGeneralProperty]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepAP214_RWExternallyDefinedGeneralProperty.hxx".}
proc writeStep*(this: RWStepAP214RWExternallyDefinedGeneralProperty;
               sw: var StepDataStepWriter;
               ent: Handle[StepAP214ExternallyDefinedGeneralProperty]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepAP214_RWExternallyDefinedGeneralProperty.hxx".}
proc share*(this: RWStepAP214RWExternallyDefinedGeneralProperty;
           ent: Handle[StepAP214ExternallyDefinedGeneralProperty];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP214_RWExternallyDefinedGeneralProperty.hxx".}

