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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Plate/Plate_D1, ../Standard/Standard_Integer, NLPlate_HGPPConstraint

discard "forward decl of gp_XY"
discard "forward decl of Plate_D1"
discard "forward decl of NLPlate_HPG1Constraint"
discard "forward decl of NLPlate_HPG1Constraint"
type
  Handle_NLPlate_HPG1Constraint* = handle[NLPlate_HPG1Constraint]

## ! define a PinPoint (no G0)  G1 Constraint used to load a Non
## ! Linear Plate

type
  NLPlate_HPG1Constraint* {.importcpp: "NLPlate_HPG1Constraint",
                           header: "NLPlate_HPG1Constraint.hxx", bycopy.} = object of NLPlate_HGPPConstraint


proc constructNLPlate_HPG1Constraint*(UV: gp_XY; D1T: Plate_D1): NLPlate_HPG1Constraint {.
    constructor, importcpp: "NLPlate_HPG1Constraint(@)",
    header: "NLPlate_HPG1Constraint.hxx".}
proc SetIncrementalLoadAllowed*(this: var NLPlate_HPG1Constraint;
                               ILA: Standard_Boolean) {.
    importcpp: "SetIncrementalLoadAllowed", header: "NLPlate_HPG1Constraint.hxx".}
proc SetOrientation*(this: var NLPlate_HPG1Constraint; Orient: Standard_Integer = 0) {.
    importcpp: "SetOrientation", header: "NLPlate_HPG1Constraint.hxx".}
proc IncrementalLoadAllowed*(this: NLPlate_HPG1Constraint): Standard_Boolean {.
    noSideEffect, importcpp: "IncrementalLoadAllowed",
    header: "NLPlate_HPG1Constraint.hxx".}
proc ActiveOrder*(this: NLPlate_HPG1Constraint): Standard_Integer {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HPG1Constraint.hxx".}
proc IsG0*(this: NLPlate_HPG1Constraint): Standard_Boolean {.noSideEffect,
    importcpp: "IsG0", header: "NLPlate_HPG1Constraint.hxx".}
proc Orientation*(this: var NLPlate_HPG1Constraint): Standard_Integer {.
    importcpp: "Orientation", header: "NLPlate_HPG1Constraint.hxx".}
proc G1Target*(this: NLPlate_HPG1Constraint): Plate_D1 {.noSideEffect,
    importcpp: "G1Target", header: "NLPlate_HPG1Constraint.hxx".}
type
  NLPlate_HPG1Constraintbase_type* = NLPlate_HGPPConstraint

proc get_type_name*(): cstring {.importcpp: "NLPlate_HPG1Constraint::get_type_name(@)",
                              header: "NLPlate_HPG1Constraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NLPlate_HPG1Constraint::get_type_descriptor(@)",
    header: "NLPlate_HPG1Constraint.hxx".}
proc DynamicType*(this: NLPlate_HPG1Constraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "NLPlate_HPG1Constraint.hxx".}