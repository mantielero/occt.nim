##  Created on: 1998-04-09
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XY,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of Plate_D1"
discard "forward decl of Plate_D2"
discard "forward decl of Plate_D3"
discard "forward decl of NLPlate_HGPPConstraint"
discard "forward decl of NLPlate_HGPPConstraint"
type
  Handle_NLPlate_HGPPConstraint* = handle[NLPlate_HGPPConstraint]

## ! define a PinPoint geometric Constraint used to load a Non Linear Plate

type
  NLPlate_HGPPConstraint* {.importcpp: "NLPlate_HGPPConstraint",
                           header: "NLPlate_HGPPConstraint.hxx", bycopy.} = object of Standard_Transient


proc constructNLPlate_HGPPConstraint*(): NLPlate_HGPPConstraint {.constructor,
    importcpp: "NLPlate_HGPPConstraint(@)", header: "NLPlate_HGPPConstraint.hxx".}
proc SetUVFreeSliding*(this: var NLPlate_HGPPConstraint; UVFree: Standard_Boolean) {.
    importcpp: "SetUVFreeSliding", header: "NLPlate_HGPPConstraint.hxx".}
proc SetIncrementalLoadAllowed*(this: var NLPlate_HGPPConstraint;
                               ILA: Standard_Boolean) {.
    importcpp: "SetIncrementalLoadAllowed", header: "NLPlate_HGPPConstraint.hxx".}
proc SetActiveOrder*(this: var NLPlate_HGPPConstraint; ActiveOrder: Standard_Integer) {.
    importcpp: "SetActiveOrder", header: "NLPlate_HGPPConstraint.hxx".}
proc SetUV*(this: var NLPlate_HGPPConstraint; UV: gp_XY) {.importcpp: "SetUV",
    header: "NLPlate_HGPPConstraint.hxx".}
proc SetOrientation*(this: var NLPlate_HGPPConstraint; Orient: Standard_Integer = 0) {.
    importcpp: "SetOrientation", header: "NLPlate_HGPPConstraint.hxx".}
proc SetG0Criterion*(this: var NLPlate_HGPPConstraint; TolDist: Standard_Real) {.
    importcpp: "SetG0Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc SetG1Criterion*(this: var NLPlate_HGPPConstraint; TolAng: Standard_Real) {.
    importcpp: "SetG1Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc SetG2Criterion*(this: var NLPlate_HGPPConstraint; TolCurv: Standard_Real) {.
    importcpp: "SetG2Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc SetG3Criterion*(this: var NLPlate_HGPPConstraint; TolG3: Standard_Real) {.
    importcpp: "SetG3Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc UVFreeSliding*(this: NLPlate_HGPPConstraint): Standard_Boolean {.noSideEffect,
    importcpp: "UVFreeSliding", header: "NLPlate_HGPPConstraint.hxx".}
proc IncrementalLoadAllowed*(this: NLPlate_HGPPConstraint): Standard_Boolean {.
    noSideEffect, importcpp: "IncrementalLoadAllowed",
    header: "NLPlate_HGPPConstraint.hxx".}
proc ActiveOrder*(this: NLPlate_HGPPConstraint): Standard_Integer {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HGPPConstraint.hxx".}
proc UV*(this: NLPlate_HGPPConstraint): gp_XY {.noSideEffect, importcpp: "UV",
    header: "NLPlate_HGPPConstraint.hxx".}
proc Orientation*(this: var NLPlate_HGPPConstraint): Standard_Integer {.
    importcpp: "Orientation", header: "NLPlate_HGPPConstraint.hxx".}
proc IsG0*(this: NLPlate_HGPPConstraint): Standard_Boolean {.noSideEffect,
    importcpp: "IsG0", header: "NLPlate_HGPPConstraint.hxx".}
proc G0Target*(this: NLPlate_HGPPConstraint): gp_XYZ {.noSideEffect,
    importcpp: "G0Target", header: "NLPlate_HGPPConstraint.hxx".}
proc G1Target*(this: NLPlate_HGPPConstraint): Plate_D1 {.noSideEffect,
    importcpp: "G1Target", header: "NLPlate_HGPPConstraint.hxx".}
proc G2Target*(this: NLPlate_HGPPConstraint): Plate_D2 {.noSideEffect,
    importcpp: "G2Target", header: "NLPlate_HGPPConstraint.hxx".}
proc G3Target*(this: NLPlate_HGPPConstraint): Plate_D3 {.noSideEffect,
    importcpp: "G3Target", header: "NLPlate_HGPPConstraint.hxx".}
proc G0Criterion*(this: NLPlate_HGPPConstraint): Standard_Real {.noSideEffect,
    importcpp: "G0Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc G1Criterion*(this: NLPlate_HGPPConstraint): Standard_Real {.noSideEffect,
    importcpp: "G1Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc G2Criterion*(this: NLPlate_HGPPConstraint): Standard_Real {.noSideEffect,
    importcpp: "G2Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc G3Criterion*(this: NLPlate_HGPPConstraint): Standard_Real {.noSideEffect,
    importcpp: "G3Criterion", header: "NLPlate_HGPPConstraint.hxx".}
type
  NLPlate_HGPPConstraintbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "NLPlate_HGPPConstraint::get_type_name(@)",
                              header: "NLPlate_HGPPConstraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NLPlate_HGPPConstraint::get_type_descriptor(@)",
    header: "NLPlate_HGPPConstraint.hxx".}
proc DynamicType*(this: NLPlate_HGPPConstraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "NLPlate_HGPPConstraint.hxx".}