##  Created on: 2015-07-07
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepAP242_ItemIdentifiedRepresentationUsage"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP242RWItemIdentifiedRepresentationUsage* {.
      importcpp: "RWStepAP242_RWItemIdentifiedRepresentationUsage",
      header: "RWStepAP242_RWItemIdentifiedRepresentationUsage.hxx", bycopy.} = object


proc constructRWStepAP242RWItemIdentifiedRepresentationUsage*(): RWStepAP242RWItemIdentifiedRepresentationUsage {.
    constructor, importcpp: "RWStepAP242_RWItemIdentifiedRepresentationUsage(@)",
    header: "RWStepAP242_RWItemIdentifiedRepresentationUsage.hxx".}
proc readStep*(this: RWStepAP242RWItemIdentifiedRepresentationUsage;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepAP242ItemIdentifiedRepresentationUsage]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepAP242_RWItemIdentifiedRepresentationUsage.hxx".}
proc writeStep*(this: RWStepAP242RWItemIdentifiedRepresentationUsage;
               sw: var StepDataStepWriter;
               ent: Handle[StepAP242ItemIdentifiedRepresentationUsage]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepAP242_RWItemIdentifiedRepresentationUsage.hxx".}
proc share*(this: RWStepAP242RWItemIdentifiedRepresentationUsage;
           ent: Handle[StepAP242ItemIdentifiedRepresentationUsage];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP242_RWItemIdentifiedRepresentationUsage.hxx".}

