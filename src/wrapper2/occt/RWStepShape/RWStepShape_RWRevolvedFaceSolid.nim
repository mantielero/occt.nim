##  Created on: 1999-03-15
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
discard "forward decl of StepShape_RevolvedFaceSolid"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWRevolvedFaceSolid* {.importcpp: "RWStepShape_RWRevolvedFaceSolid", header: "RWStepShape_RWRevolvedFaceSolid.hxx",
                                   bycopy.} = object


proc constructRWStepShapeRWRevolvedFaceSolid*(): RWStepShapeRWRevolvedFaceSolid {.
    constructor, importcpp: "RWStepShape_RWRevolvedFaceSolid(@)",
    header: "RWStepShape_RWRevolvedFaceSolid.hxx".}
proc readStep*(this: RWStepShapeRWRevolvedFaceSolid;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeRevolvedFaceSolid]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWRevolvedFaceSolid.hxx".}
proc writeStep*(this: RWStepShapeRWRevolvedFaceSolid; sw: var StepDataStepWriter;
               ent: Handle[StepShapeRevolvedFaceSolid]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWRevolvedFaceSolid.hxx".}
proc share*(this: RWStepShapeRWRevolvedFaceSolid;
           ent: Handle[StepShapeRevolvedFaceSolid];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWRevolvedFaceSolid.hxx".}

