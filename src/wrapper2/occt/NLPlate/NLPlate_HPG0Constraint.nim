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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../Standard/Standard_Boolean, NLPlate_HGPPConstraint,
  ../Standard/Standard_Integer

discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of NLPlate_HPG0Constraint"
discard "forward decl of NLPlate_HPG0Constraint"
type
  Handle_NLPlate_HPG0Constraint* = handle[NLPlate_HPG0Constraint]

## ! define a PinPoint G0  Constraint  used to load a Non Linear
## ! Plate

type
  NLPlate_HPG0Constraint* {.importcpp: "NLPlate_HPG0Constraint",
                           header: "NLPlate_HPG0Constraint.hxx", bycopy.} = object of NLPlate_HGPPConstraint


proc constructNLPlate_HPG0Constraint*(UV: gp_XY; Value: gp_XYZ): NLPlate_HPG0Constraint {.
    constructor, importcpp: "NLPlate_HPG0Constraint(@)",
    header: "NLPlate_HPG0Constraint.hxx".}
proc SetUVFreeSliding*(this: var NLPlate_HPG0Constraint; UVFree: Standard_Boolean) {.
    importcpp: "SetUVFreeSliding", header: "NLPlate_HPG0Constraint.hxx".}
proc SetIncrementalLoadAllowed*(this: var NLPlate_HPG0Constraint;
                               ILA: Standard_Boolean) {.
    importcpp: "SetIncrementalLoadAllowed", header: "NLPlate_HPG0Constraint.hxx".}
proc UVFreeSliding*(this: NLPlate_HPG0Constraint): Standard_Boolean {.noSideEffect,
    importcpp: "UVFreeSliding", header: "NLPlate_HPG0Constraint.hxx".}
proc IncrementalLoadAllowed*(this: NLPlate_HPG0Constraint): Standard_Boolean {.
    noSideEffect, importcpp: "IncrementalLoadAllowed",
    header: "NLPlate_HPG0Constraint.hxx".}
proc ActiveOrder*(this: NLPlate_HPG0Constraint): Standard_Integer {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HPG0Constraint.hxx".}
proc IsG0*(this: NLPlate_HPG0Constraint): Standard_Boolean {.noSideEffect,
    importcpp: "IsG0", header: "NLPlate_HPG0Constraint.hxx".}
proc G0Target*(this: NLPlate_HPG0Constraint): gp_XYZ {.noSideEffect,
    importcpp: "G0Target", header: "NLPlate_HPG0Constraint.hxx".}
type
  NLPlate_HPG0Constraintbase_type* = NLPlate_HGPPConstraint

proc get_type_name*(): cstring {.importcpp: "NLPlate_HPG0Constraint::get_type_name(@)",
                              header: "NLPlate_HPG0Constraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NLPlate_HPG0Constraint::get_type_descriptor(@)",
    header: "NLPlate_HPG0Constraint.hxx".}
proc DynamicType*(this: NLPlate_HPG0Constraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "NLPlate_HPG0Constraint.hxx".}