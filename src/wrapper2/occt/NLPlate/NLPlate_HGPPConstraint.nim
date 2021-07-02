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

discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of Plate_D1"
discard "forward decl of Plate_D2"
discard "forward decl of Plate_D3"
discard "forward decl of NLPlate_HGPPConstraint"
discard "forward decl of NLPlate_HGPPConstraint"
type
  HandleNLPlateHGPPConstraint* = Handle[NLPlateHGPPConstraint]

## ! define a PinPoint geometric Constraint used to load a Non Linear Plate

type
  NLPlateHGPPConstraint* {.importcpp: "NLPlate_HGPPConstraint",
                          header: "NLPlate_HGPPConstraint.hxx", bycopy.} = object of StandardTransient


proc constructNLPlateHGPPConstraint*(): NLPlateHGPPConstraint {.constructor,
    importcpp: "NLPlate_HGPPConstraint(@)", header: "NLPlate_HGPPConstraint.hxx".}
proc setUVFreeSliding*(this: var NLPlateHGPPConstraint; uVFree: StandardBoolean) {.
    importcpp: "SetUVFreeSliding", header: "NLPlate_HGPPConstraint.hxx".}
proc setIncrementalLoadAllowed*(this: var NLPlateHGPPConstraint;
                               ila: StandardBoolean) {.
    importcpp: "SetIncrementalLoadAllowed", header: "NLPlate_HGPPConstraint.hxx".}
proc setActiveOrder*(this: var NLPlateHGPPConstraint; activeOrder: StandardInteger) {.
    importcpp: "SetActiveOrder", header: "NLPlate_HGPPConstraint.hxx".}
proc setUV*(this: var NLPlateHGPPConstraint; uv: GpXY) {.importcpp: "SetUV",
    header: "NLPlate_HGPPConstraint.hxx".}
proc setOrientation*(this: var NLPlateHGPPConstraint; orient: StandardInteger = 0) {.
    importcpp: "SetOrientation", header: "NLPlate_HGPPConstraint.hxx".}
proc setG0Criterion*(this: var NLPlateHGPPConstraint; tolDist: StandardReal) {.
    importcpp: "SetG0Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc setG1Criterion*(this: var NLPlateHGPPConstraint; tolAng: StandardReal) {.
    importcpp: "SetG1Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc setG2Criterion*(this: var NLPlateHGPPConstraint; tolCurv: StandardReal) {.
    importcpp: "SetG2Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc setG3Criterion*(this: var NLPlateHGPPConstraint; tolG3: StandardReal) {.
    importcpp: "SetG3Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc uVFreeSliding*(this: NLPlateHGPPConstraint): StandardBoolean {.noSideEffect,
    importcpp: "UVFreeSliding", header: "NLPlate_HGPPConstraint.hxx".}
proc incrementalLoadAllowed*(this: NLPlateHGPPConstraint): StandardBoolean {.
    noSideEffect, importcpp: "IncrementalLoadAllowed",
    header: "NLPlate_HGPPConstraint.hxx".}
proc activeOrder*(this: NLPlateHGPPConstraint): StandardInteger {.noSideEffect,
    importcpp: "ActiveOrder", header: "NLPlate_HGPPConstraint.hxx".}
proc uv*(this: NLPlateHGPPConstraint): GpXY {.noSideEffect, importcpp: "UV",
    header: "NLPlate_HGPPConstraint.hxx".}
proc orientation*(this: var NLPlateHGPPConstraint): StandardInteger {.
    importcpp: "Orientation", header: "NLPlate_HGPPConstraint.hxx".}
proc isG0*(this: NLPlateHGPPConstraint): StandardBoolean {.noSideEffect,
    importcpp: "IsG0", header: "NLPlate_HGPPConstraint.hxx".}
proc g0Target*(this: NLPlateHGPPConstraint): GpXYZ {.noSideEffect,
    importcpp: "G0Target", header: "NLPlate_HGPPConstraint.hxx".}
proc g1Target*(this: NLPlateHGPPConstraint): PlateD1 {.noSideEffect,
    importcpp: "G1Target", header: "NLPlate_HGPPConstraint.hxx".}
proc g2Target*(this: NLPlateHGPPConstraint): PlateD2 {.noSideEffect,
    importcpp: "G2Target", header: "NLPlate_HGPPConstraint.hxx".}
proc g3Target*(this: NLPlateHGPPConstraint): PlateD3 {.noSideEffect,
    importcpp: "G3Target", header: "NLPlate_HGPPConstraint.hxx".}
proc g0Criterion*(this: NLPlateHGPPConstraint): StandardReal {.noSideEffect,
    importcpp: "G0Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc g1Criterion*(this: NLPlateHGPPConstraint): StandardReal {.noSideEffect,
    importcpp: "G1Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc g2Criterion*(this: NLPlateHGPPConstraint): StandardReal {.noSideEffect,
    importcpp: "G2Criterion", header: "NLPlate_HGPPConstraint.hxx".}
proc g3Criterion*(this: NLPlateHGPPConstraint): StandardReal {.noSideEffect,
    importcpp: "G3Criterion", header: "NLPlate_HGPPConstraint.hxx".}
type
  NLPlateHGPPConstraintbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "NLPlate_HGPPConstraint::get_type_name(@)",
                            header: "NLPlate_HGPPConstraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NLPlate_HGPPConstraint::get_type_descriptor(@)",
    header: "NLPlate_HGPPConstraint.hxx".}
proc dynamicType*(this: NLPlateHGPPConstraint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "NLPlate_HGPPConstraint.hxx".}

