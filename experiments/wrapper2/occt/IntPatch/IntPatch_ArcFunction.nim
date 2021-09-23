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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../IntSurf/IntSurf_Quadric, ../gp/gp_Pnt,
  ../TColgp/TColgp_SequenceOfPnt, ../math/math_FunctionWithDerivative,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of gp_Pnt"
type
  IntPatch_ArcFunction* {.importcpp: "IntPatch_ArcFunction",
                         header: "IntPatch_ArcFunction.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructIntPatch_ArcFunction*(): IntPatch_ArcFunction {.constructor,
    importcpp: "IntPatch_ArcFunction(@)", header: "IntPatch_ArcFunction.hxx".}
proc SetQuadric*(this: var IntPatch_ArcFunction; Q: IntSurf_Quadric) {.
    importcpp: "SetQuadric", header: "IntPatch_ArcFunction.hxx".}
proc Set*(this: var IntPatch_ArcFunction; A: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "Set", header: "IntPatch_ArcFunction.hxx".}
proc Set*(this: var IntPatch_ArcFunction; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Set", header: "IntPatch_ArcFunction.hxx".}
proc Value*(this: var IntPatch_ArcFunction; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "IntPatch_ArcFunction.hxx".}
proc Derivative*(this: var IntPatch_ArcFunction; X: Standard_Real;
                D: var Standard_Real): Standard_Boolean {.importcpp: "Derivative",
    header: "IntPatch_ArcFunction.hxx".}
proc Values*(this: var IntPatch_ArcFunction; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "IntPatch_ArcFunction.hxx".}
proc NbSamples*(this: IntPatch_ArcFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbSamples", header: "IntPatch_ArcFunction.hxx".}
proc GetStateNumber*(this: var IntPatch_ArcFunction): Standard_Integer {.
    importcpp: "GetStateNumber", header: "IntPatch_ArcFunction.hxx".}
proc Valpoint*(this: IntPatch_ArcFunction; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Valpoint", header: "IntPatch_ArcFunction.hxx".}
proc Quadric*(this: IntPatch_ArcFunction): IntSurf_Quadric {.noSideEffect,
    importcpp: "Quadric", header: "IntPatch_ArcFunction.hxx".}
proc Arc*(this: IntPatch_ArcFunction): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "Arc", header: "IntPatch_ArcFunction.hxx".}
proc Surface*(this: IntPatch_ArcFunction): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "Surface", header: "IntPatch_ArcFunction.hxx".}
proc LastComputedPoint*(this: IntPatch_ArcFunction): gp_Pnt {.noSideEffect,
    importcpp: "LastComputedPoint", header: "IntPatch_ArcFunction.hxx".}