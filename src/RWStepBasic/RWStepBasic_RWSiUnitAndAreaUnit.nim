##  Created on: 1999-10-11
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepBasic_SiUnitAndAreaUnit"
discard "forward decl of StepData_StepWriter"
type
  RWStepBasicRWSiUnitAndAreaUnit* {.importcpp: "RWStepBasic_RWSiUnitAndAreaUnit", header: "RWStepBasic_RWSiUnitAndAreaUnit.hxx",
                                   bycopy.} = object


proc constructRWStepBasicRWSiUnitAndAreaUnit*(): RWStepBasicRWSiUnitAndAreaUnit {.
    constructor, importcpp: "RWStepBasic_RWSiUnitAndAreaUnit(@)",
    header: "RWStepBasic_RWSiUnitAndAreaUnit.hxx".}
proc readStep*(this: RWStepBasicRWSiUnitAndAreaUnit;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicSiUnitAndAreaUnit]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWSiUnitAndAreaUnit.hxx".}
proc writeStep*(this: RWStepBasicRWSiUnitAndAreaUnit; sw: var StepDataStepWriter;
               ent: Handle[StepBasicSiUnitAndAreaUnit]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWSiUnitAndAreaUnit.hxx".}

























