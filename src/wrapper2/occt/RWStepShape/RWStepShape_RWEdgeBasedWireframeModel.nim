##  Created on: 2001-12-28
##  Created by: Andrey BETENEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_EdgeBasedWireframeModel"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWEdgeBasedWireframeModel* {.
      importcpp: "RWStepShape_RWEdgeBasedWireframeModel",
      header: "RWStepShape_RWEdgeBasedWireframeModel.hxx", bycopy.} = object ## ! Empty
                                                                        ## constructor


proc constructRWStepShapeRWEdgeBasedWireframeModel*(): RWStepShapeRWEdgeBasedWireframeModel {.
    constructor, importcpp: "RWStepShape_RWEdgeBasedWireframeModel(@)",
    header: "RWStepShape_RWEdgeBasedWireframeModel.hxx".}
proc readStep*(this: RWStepShapeRWEdgeBasedWireframeModel;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeEdgeBasedWireframeModel]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWEdgeBasedWireframeModel.hxx".}
proc writeStep*(this: RWStepShapeRWEdgeBasedWireframeModel;
               sw: var StepDataStepWriter;
               ent: Handle[StepShapeEdgeBasedWireframeModel]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWEdgeBasedWireframeModel.hxx".}
proc share*(this: RWStepShapeRWEdgeBasedWireframeModel;
           ent: Handle[StepShapeEdgeBasedWireframeModel];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWEdgeBasedWireframeModel.hxx".}

