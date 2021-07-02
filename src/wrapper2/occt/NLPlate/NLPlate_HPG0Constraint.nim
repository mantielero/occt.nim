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
discard "forward decl of NLPlate_HPG0Constraint"
discard "forward decl of NLPlate_HPG0Constraint"
type
  HandleNLPlateHPG0Constraint* = Handle[NLPlateHPG0Constraint]

## ! define a PinPoint G0  Constraint  used to load a Non Linear
## ! Plate

type
  NLPlateHPG0Constraint* {.importcpp: "NLPlate_HPG0Constraint",
                          header: "NLPlate_HPG0Constraint.hxx", bycopy.} = object of NLPlateHGPPConstraint


proc constructNLPlateHPG0Constraint*(uv: GpXY; value: GpXYZ): NLPlateHPG0Constraint {.
    constructor, importcpp: "NLPlate_HPG0Constraint(@)",
    header: "NLPlate_HPG0Constraint.hxx".}
proc setUVFreeSliding*(this: var NLPlateHPG0Constraint; uVFree: StandardBoolean) {.
    importcpp: "SetUVFreeSliding", header: "NLPlate_HPG0Constraint.hxx".}
proc setIncrementalLoadAllowed*(this: var NLPlateHPG0Constraint;
                               ila: StandardBoolean) {.
    importcpp: "SetIncrementalLoadAllowed", header: "NLPlate_HPG0Constraint.hxx".}
proc uVFreeSliding*(this: NLPlateHPG0Constraint): StandardBoolean {.noSideEffect,
    importcpp: "UVFreeSliding", header: "NLPlate_HPG0Constraint.hxx".}
proc incrementalLoadAllowed*(this: NLPlateHPG0Constraint): StandardBoolean {.
    noSideEffect, importcpp: "IncrementalLoadAllowed",
    header: "NLPlate_HPG0Constraint.hxx".}
proc activeOrder*(this: NLPlateHPG0Constraint): StandardInteger {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HPG0Constraint.hxx".}
proc isG0*(this: NLPlateHPG0Constraint): StandardBoolean {.noSideEffect,
    importcpp: "IsG0", header: "NLPlate_HPG0Constraint.hxx".}
proc g0Target*(this: NLPlateHPG0Constraint): GpXYZ {.noSideEffect,
    importcpp: "G0Target", header: "NLPlate_HPG0Constraint.hxx".}
type
  NLPlateHPG0ConstraintbaseType* = NLPlateHGPPConstraint

proc getTypeName*(): cstring {.importcpp: "NLPlate_HPG0Constraint::get_type_name(@)",
                            header: "NLPlate_HPG0Constraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NLPlate_HPG0Constraint::get_type_descriptor(@)",
    header: "NLPlate_HPG0Constraint.hxx".}
proc dynamicType*(this: NLPlateHPG0Constraint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "NLPlate_HPG0Constraint.hxx".}

