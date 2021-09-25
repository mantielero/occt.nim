##  Created on: 1993-06-03
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
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of IntSurf_Quadric"
type
  ContapArcFunction* {.importcpp: "Contap_ArcFunction",
                      header: "Contap_ArcFunction.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructContapArcFunction*(): ContapArcFunction {.constructor,
    importcpp: "Contap_ArcFunction(@)", header: "Contap_ArcFunction.hxx".}
proc set*(this: var ContapArcFunction; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Set", header: "Contap_ArcFunction.hxx".}
proc set*(this: var ContapArcFunction; direction: Dir) {.importcpp: "Set",
    header: "Contap_ArcFunction.hxx".}
proc set*(this: var ContapArcFunction; direction: Dir; angle: float) {.importcpp: "Set",
    header: "Contap_ArcFunction.hxx".}
proc set*(this: var ContapArcFunction; eye: Pnt) {.importcpp: "Set",
    header: "Contap_ArcFunction.hxx".}
proc set*(this: var ContapArcFunction; eye: Pnt; angle: float) {.importcpp: "Set",
    header: "Contap_ArcFunction.hxx".}
proc set*(this: var ContapArcFunction; a: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "Set", header: "Contap_ArcFunction.hxx".}
proc value*(this: var ContapArcFunction; x: float; f: var float): bool {.
    importcpp: "Value", header: "Contap_ArcFunction.hxx".}
proc derivative*(this: var ContapArcFunction; x: float; d: var float): bool {.
    importcpp: "Derivative", header: "Contap_ArcFunction.hxx".}
proc values*(this: var ContapArcFunction; x: float; f: var float; d: var float): bool {.
    importcpp: "Values", header: "Contap_ArcFunction.hxx".}
proc nbSamples*(this: ContapArcFunction): int {.noSideEffect, importcpp: "NbSamples",
    header: "Contap_ArcFunction.hxx".}
proc getStateNumber*(this: var ContapArcFunction): int {.importcpp: "GetStateNumber",
    header: "Contap_ArcFunction.hxx".}
proc valpoint*(this: ContapArcFunction; index: int): Pnt {.noSideEffect,
    importcpp: "Valpoint", header: "Contap_ArcFunction.hxx".}
proc quadric*(this: ContapArcFunction): IntSurfQuadric {.noSideEffect,
    importcpp: "Quadric", header: "Contap_ArcFunction.hxx".}
proc surface*(this: ContapArcFunction): Handle[Adaptor3dHSurface] {.noSideEffect,
    importcpp: "Surface", header: "Contap_ArcFunction.hxx".}
proc lastComputedPoint*(this: ContapArcFunction): Pnt {.noSideEffect,
    importcpp: "LastComputedPoint", header: "Contap_ArcFunction.hxx".}
