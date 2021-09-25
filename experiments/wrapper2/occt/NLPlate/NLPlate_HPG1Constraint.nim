##  Created on: 1998-04-17
##  Created by: Andre LIEUTIER
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of gp_XY"
discard "forward decl of Plate_D1"
discard "forward decl of NLPlate_HPG1Constraint"
discard "forward decl of NLPlate_HPG1Constraint"
type
  HandleNLPlateHPG1Constraint* = Handle[NLPlateHPG1Constraint]

## ! define a PinPoint (no G0)  G1 Constraint used to load a Non
## ! Linear Plate

type
  NLPlateHPG1Constraint* {.importcpp: "NLPlate_HPG1Constraint",
                          header: "NLPlate_HPG1Constraint.hxx", bycopy.} = object of NLPlateHGPPConstraint


proc constructNLPlateHPG1Constraint*(uv: Xy; d1t: PlateD1): NLPlateHPG1Constraint {.
    constructor, importcpp: "NLPlate_HPG1Constraint(@)",
    header: "NLPlate_HPG1Constraint.hxx".}
proc setIncrementalLoadAllowed*(this: var NLPlateHPG1Constraint; ila: bool) {.
    importcpp: "SetIncrementalLoadAllowed", header: "NLPlate_HPG1Constraint.hxx".}
proc setOrientation*(this: var NLPlateHPG1Constraint; orient: int = 0) {.
    importcpp: "SetOrientation", header: "NLPlate_HPG1Constraint.hxx".}
proc incrementalLoadAllowed*(this: NLPlateHPG1Constraint): bool {.noSideEffect,
    importcpp: "IncrementalLoadAllowed", header: "NLPlate_HPG1Constraint.hxx".}
proc activeOrder*(this: NLPlateHPG1Constraint): int {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HPG1Constraint.hxx".}
proc isG0*(this: NLPlateHPG1Constraint): bool {.noSideEffect, importcpp: "IsG0",
    header: "NLPlate_HPG1Constraint.hxx".}
proc orientation*(this: var NLPlateHPG1Constraint): int {.importcpp: "Orientation",
    header: "NLPlate_HPG1Constraint.hxx".}
proc g1Target*(this: NLPlateHPG1Constraint): PlateD1 {.noSideEffect,
    importcpp: "G1Target", header: "NLPlate_HPG1Constraint.hxx".}
type
  NLPlateHPG1ConstraintbaseType* = NLPlateHGPPConstraint

proc getTypeName*(): cstring {.importcpp: "NLPlate_HPG1Constraint::get_type_name(@)",
                            header: "NLPlate_HPG1Constraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NLPlate_HPG1Constraint::get_type_descriptor(@)",
    header: "NLPlate_HPG1Constraint.hxx".}
proc dynamicType*(this: NLPlateHPG1Constraint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "NLPlate_HPG1Constraint.hxx".}
