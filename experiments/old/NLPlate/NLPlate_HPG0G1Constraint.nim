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
discard "forward decl of gp_XYZ"
discard "forward decl of Plate_D1"
discard "forward decl of NLPlate_HPG0G1Constraint"
discard "forward decl of NLPlate_HPG0G1Constraint"
type
  HandleC1C1* = Handle[NLPlateHPG0G1Constraint]

## ! define a PinPoint G0+G1  Constraint  used to load a Non Linear
## ! Plate

type
  NLPlateHPG0G1Constraint* {.importcpp: "NLPlate_HPG0G1Constraint",
                            header: "NLPlate_HPG0G1Constraint.hxx", bycopy.} = object of NLPlateHPG0Constraint


proc constructNLPlateHPG0G1Constraint*(uv: Xy; value: Xyz; d1t: PlateD1): NLPlateHPG0G1Constraint {.
    constructor, importcpp: "NLPlate_HPG0G1Constraint(@)",
    header: "NLPlate_HPG0G1Constraint.hxx".}
proc setOrientation*(this: var NLPlateHPG0G1Constraint; orient: cint = 0) {.
    importcpp: "SetOrientation", header: "NLPlate_HPG0G1Constraint.hxx".}
proc activeOrder*(this: NLPlateHPG0G1Constraint): cint {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HPG0G1Constraint.hxx".}
proc orientation*(this: var NLPlateHPG0G1Constraint): cint {.
    importcpp: "Orientation", header: "NLPlate_HPG0G1Constraint.hxx".}
proc g1Target*(this: NLPlateHPG0G1Constraint): PlateD1 {.noSideEffect,
    importcpp: "G1Target", header: "NLPlate_HPG0G1Constraint.hxx".}
type
  NLPlateHPG0G1ConstraintbaseType* = NLPlateHPG0Constraint

proc getTypeName*(): cstring {.importcpp: "NLPlate_HPG0G1Constraint::get_type_name(@)",
                            header: "NLPlate_HPG0G1Constraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NLPlate_HPG0G1Constraint::get_type_descriptor(@)",
    header: "NLPlate_HPG0G1Constraint.hxx".}
proc dynamicType*(this: NLPlateHPG0G1Constraint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "NLPlate_HPG0G1Constraint.hxx".}

























