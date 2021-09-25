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
discard "forward decl of Plate_D2"
discard "forward decl of NLPlate_HPG0G2Constraint"
discard "forward decl of NLPlate_HPG0G2Constraint"
type
  HandleNLPlateHPG0G2Constraint* = Handle[NLPlateHPG0G2Constraint]

## ! define a PinPoint G0+G2  Constraint  used to load a Non Linear
## ! Plate

type
  NLPlateHPG0G2Constraint* {.importcpp: "NLPlate_HPG0G2Constraint",
                            header: "NLPlate_HPG0G2Constraint.hxx", bycopy.} = object of NLPlateHPG0G1Constraint


proc constructNLPlateHPG0G2Constraint*(uv: Xy; value: Xyz; d1t: PlateD1; d2t: PlateD2): NLPlateHPG0G2Constraint {.
    constructor, importcpp: "NLPlate_HPG0G2Constraint(@)",
    header: "NLPlate_HPG0G2Constraint.hxx".}
proc activeOrder*(this: NLPlateHPG0G2Constraint): int {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HPG0G2Constraint.hxx".}
proc g2Target*(this: NLPlateHPG0G2Constraint): PlateD2 {.noSideEffect,
    importcpp: "G2Target", header: "NLPlate_HPG0G2Constraint.hxx".}
type
  NLPlateHPG0G2ConstraintbaseType* = NLPlateHPG0G1Constraint

proc getTypeName*(): cstring {.importcpp: "NLPlate_HPG0G2Constraint::get_type_name(@)",
                            header: "NLPlate_HPG0G2Constraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NLPlate_HPG0G2Constraint::get_type_descriptor(@)",
    header: "NLPlate_HPG0G2Constraint.hxx".}
proc dynamicType*(this: NLPlateHPG0G2Constraint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "NLPlate_HPG0G2Constraint.hxx".}
