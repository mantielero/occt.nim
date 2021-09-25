##  Created on: 1993-06-07
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of gp_Pnt"
type
  IntPatchArcFunction* {.importcpp: "IntPatch_ArcFunction",
                        header: "IntPatch_ArcFunction.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructIntPatchArcFunction*(): IntPatchArcFunction {.constructor,
    importcpp: "IntPatch_ArcFunction(@)", header: "IntPatch_ArcFunction.hxx".}
proc setQuadric*(this: var IntPatchArcFunction; q: IntSurfQuadric) {.
    importcpp: "SetQuadric", header: "IntPatch_ArcFunction.hxx".}
proc set*(this: var IntPatchArcFunction; a: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "Set", header: "IntPatch_ArcFunction.hxx".}
proc set*(this: var IntPatchArcFunction; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Set", header: "IntPatch_ArcFunction.hxx".}
proc value*(this: var IntPatchArcFunction; x: float; f: var float): bool {.
    importcpp: "Value", header: "IntPatch_ArcFunction.hxx".}
proc derivative*(this: var IntPatchArcFunction; x: float; d: var float): bool {.
    importcpp: "Derivative", header: "IntPatch_ArcFunction.hxx".}
proc values*(this: var IntPatchArcFunction; x: float; f: var float; d: var float): bool {.
    importcpp: "Values", header: "IntPatch_ArcFunction.hxx".}
proc nbSamples*(this: IntPatchArcFunction): int {.noSideEffect,
    importcpp: "NbSamples", header: "IntPatch_ArcFunction.hxx".}
proc getStateNumber*(this: var IntPatchArcFunction): int {.
    importcpp: "GetStateNumber", header: "IntPatch_ArcFunction.hxx".}
proc valpoint*(this: IntPatchArcFunction; index: int): Pnt {.noSideEffect,
    importcpp: "Valpoint", header: "IntPatch_ArcFunction.hxx".}
proc quadric*(this: IntPatchArcFunction): IntSurfQuadric {.noSideEffect,
    importcpp: "Quadric", header: "IntPatch_ArcFunction.hxx".}
proc arc*(this: IntPatchArcFunction): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "Arc", header: "IntPatch_ArcFunction.hxx".}
proc surface*(this: IntPatchArcFunction): Handle[Adaptor3dHSurface] {.noSideEffect,
    importcpp: "Surface", header: "IntPatch_ArcFunction.hxx".}
proc lastComputedPoint*(this: IntPatchArcFunction): Pnt {.noSideEffect,
    importcpp: "LastComputedPoint", header: "IntPatch_ArcFunction.hxx".}
