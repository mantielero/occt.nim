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
  ../Standard/Standard, ../Standard/Standard_Type, ../Plate/Plate_D3,
  NLPlate_HPG0G2Constraint, ../Standard/Standard_Integer

discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of Plate_D1"
discard "forward decl of Plate_D2"
discard "forward decl of Plate_D3"
discard "forward decl of NLPlate_HPG0G3Constraint"
discard "forward decl of NLPlate_HPG0G3Constraint"
type
  Handle_NLPlate_HPG0G3Constraint* = handle[NLPlate_HPG0G3Constraint]

## ! define a PinPoint G0+G3  Constraint  used to load a Non Linear
## ! Plate

type
  NLPlate_HPG0G3Constraint* {.importcpp: "NLPlate_HPG0G3Constraint",
                             header: "NLPlate_HPG0G3Constraint.hxx", bycopy.} = object of NLPlate_HPG0G2Constraint


proc constructNLPlate_HPG0G3Constraint*(UV: gp_XY; Value: gp_XYZ; D1T: Plate_D1;
                                       D2T: Plate_D2; D3T: Plate_D3): NLPlate_HPG0G3Constraint {.
    constructor, importcpp: "NLPlate_HPG0G3Constraint(@)",
    header: "NLPlate_HPG0G3Constraint.hxx".}
proc ActiveOrder*(this: NLPlate_HPG0G3Constraint): Standard_Integer {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HPG0G3Constraint.hxx".}
proc G3Target*(this: NLPlate_HPG0G3Constraint): Plate_D3 {.noSideEffect,
    importcpp: "G3Target", header: "NLPlate_HPG0G3Constraint.hxx".}
type
  NLPlate_HPG0G3Constraintbase_type* = NLPlate_HPG0G2Constraint

proc get_type_name*(): cstring {.importcpp: "NLPlate_HPG0G3Constraint::get_type_name(@)",
                              header: "NLPlate_HPG0G3Constraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NLPlate_HPG0G3Constraint::get_type_descriptor(@)",
    header: "NLPlate_HPG0G3Constraint.hxx".}
proc DynamicType*(this: NLPlate_HPG0G3Constraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "NLPlate_HPG0G3Constraint.hxx".}