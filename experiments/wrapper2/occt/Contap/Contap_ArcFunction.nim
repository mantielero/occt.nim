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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, Contap_TFunction,
  ../gp/gp_Dir, ../gp/gp_Pnt, ../TColgp/TColgp_SequenceOfPnt,
  ../IntSurf/IntSurf_Quadric, ../math/math_FunctionWithDerivative,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of IntSurf_Quadric"
type
  Contap_ArcFunction* {.importcpp: "Contap_ArcFunction",
                       header: "Contap_ArcFunction.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructContap_ArcFunction*(): Contap_ArcFunction {.constructor,
    importcpp: "Contap_ArcFunction(@)", header: "Contap_ArcFunction.hxx".}
proc Set*(this: var Contap_ArcFunction; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Set", header: "Contap_ArcFunction.hxx".}
proc Set*(this: var Contap_ArcFunction; Direction: gp_Dir) {.importcpp: "Set",
    header: "Contap_ArcFunction.hxx".}
proc Set*(this: var Contap_ArcFunction; Direction: gp_Dir; Angle: Standard_Real) {.
    importcpp: "Set", header: "Contap_ArcFunction.hxx".}
proc Set*(this: var Contap_ArcFunction; Eye: gp_Pnt) {.importcpp: "Set",
    header: "Contap_ArcFunction.hxx".}
proc Set*(this: var Contap_ArcFunction; Eye: gp_Pnt; Angle: Standard_Real) {.
    importcpp: "Set", header: "Contap_ArcFunction.hxx".}
proc Set*(this: var Contap_ArcFunction; A: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "Set", header: "Contap_ArcFunction.hxx".}
proc Value*(this: var Contap_ArcFunction; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Contap_ArcFunction.hxx".}
proc Derivative*(this: var Contap_ArcFunction; X: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "Contap_ArcFunction.hxx".}
proc Values*(this: var Contap_ArcFunction; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "Contap_ArcFunction.hxx".}
proc NbSamples*(this: Contap_ArcFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbSamples", header: "Contap_ArcFunction.hxx".}
proc GetStateNumber*(this: var Contap_ArcFunction): Standard_Integer {.
    importcpp: "GetStateNumber", header: "Contap_ArcFunction.hxx".}
proc Valpoint*(this: Contap_ArcFunction; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Valpoint", header: "Contap_ArcFunction.hxx".}
proc Quadric*(this: Contap_ArcFunction): IntSurf_Quadric {.noSideEffect,
    importcpp: "Quadric", header: "Contap_ArcFunction.hxx".}
proc Surface*(this: Contap_ArcFunction): handle[Adaptor3d_HSurface] {.noSideEffect,
    importcpp: "Surface", header: "Contap_ArcFunction.hxx".}
proc LastComputedPoint*(this: Contap_ArcFunction): gp_Pnt {.noSideEffect,
    importcpp: "LastComputedPoint", header: "Contap_ArcFunction.hxx".}