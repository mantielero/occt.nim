##  Created on: 1994-02-14
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Address, ../gp/gp_Pnt,
  ../Standard/Standard_Real, ../math/math_FunctionSetWithDerivatives,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  IntPatch_CSFunction* {.importcpp: "IntPatch_CSFunction",
                        header: "IntPatch_CSFunction.hxx", bycopy.} = object of math_FunctionSetWithDerivatives ##
                                                                                                         ## !
                                                                                                         ## S1
                                                                                                         ## is
                                                                                                         ## the
                                                                                                         ## surface
                                                                                                         ## on
                                                                                                         ## which
                                                                                                         ## the
                                                                                                         ## intersection
                                                                                                         ## is
                                                                                                         ## searched.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## C
                                                                                                         ## is
                                                                                                         ## a
                                                                                                         ## curve
                                                                                                         ## on
                                                                                                         ## the
                                                                                                         ## surface
                                                                                                         ## S2.


proc constructIntPatch_CSFunction*(S1: handle[Adaptor3d_HSurface];
                                  C: handle[Adaptor2d_HCurve2d];
                                  S2: handle[Adaptor3d_HSurface]): IntPatch_CSFunction {.
    constructor, importcpp: "IntPatch_CSFunction(@)",
    header: "IntPatch_CSFunction.hxx".}
proc NbVariables*(this: IntPatch_CSFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "IntPatch_CSFunction.hxx".}
proc NbEquations*(this: IntPatch_CSFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "IntPatch_CSFunction.hxx".}
proc Value*(this: var IntPatch_CSFunction; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "IntPatch_CSFunction.hxx".}
proc Derivatives*(this: var IntPatch_CSFunction; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "IntPatch_CSFunction.hxx".}
proc Values*(this: var IntPatch_CSFunction; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "IntPatch_CSFunction.hxx".}
proc Point*(this: IntPatch_CSFunction): gp_Pnt {.noSideEffect, importcpp: "Point",
    header: "IntPatch_CSFunction.hxx".}
proc Root*(this: IntPatch_CSFunction): Standard_Real {.noSideEffect,
    importcpp: "Root", header: "IntPatch_CSFunction.hxx".}
proc AuxillarSurface*(this: IntPatch_CSFunction): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "AuxillarSurface", header: "IntPatch_CSFunction.hxx".}
proc AuxillarCurve*(this: IntPatch_CSFunction): handle[Adaptor2d_HCurve2d] {.
    noSideEffect, importcpp: "AuxillarCurve", header: "IntPatch_CSFunction.hxx".}