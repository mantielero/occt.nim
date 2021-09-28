##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_ShapeAspectDerivingRelationship"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWShapeAspectDerivingRelationship* {.
      importcpp: "RWStepRepr_RWShapeAspectDerivingRelationship",
      header: "RWStepRepr_RWShapeAspectDerivingRelationship.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor


proc constructRWStepReprRWShapeAspectDerivingRelationship*(): RWStepReprRWShapeAspectDerivingRelationship {.
    constructor, importcpp: "RWStepRepr_RWShapeAspectDerivingRelationship(@)",
    header: "RWStepRepr_RWShapeAspectDerivingRelationship.hxx".}
proc readStep*(this: RWStepReprRWShapeAspectDerivingRelationship;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprShapeAspectDerivingRelationship]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepRepr_RWShapeAspectDerivingRelationship.hxx".}
proc writeStep*(this: RWStepReprRWShapeAspectDerivingRelationship;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprShapeAspectDerivingRelationship]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepRepr_RWShapeAspectDerivingRelationship.hxx".}
proc share*(this: RWStepReprRWShapeAspectDerivingRelationship;
           ent: Handle[StepReprShapeAspectDerivingRelationship];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWShapeAspectDerivingRelationship.hxx".}

























