##  Created on: 1997-02-12
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Integer,
  ../Blend/Blend_CurvPointFuncInv, ../Standard/Standard_Boolean,
  ../math/math_Vector, ../Standard/Standard_Real

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  BRepBlend_CurvPointRadInv* {.importcpp: "BRepBlend_CurvPointRadInv",
                              header: "BRepBlend_CurvPointRadInv.hxx", bycopy.} = object of Blend_CurvPointFuncInv


proc constructBRepBlend_CurvPointRadInv*(C1: handle[Adaptor3d_HCurve];
                                        C2: handle[Adaptor3d_HCurve]): BRepBlend_CurvPointRadInv {.
    constructor, importcpp: "BRepBlend_CurvPointRadInv(@)",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc Set*(this: var BRepBlend_CurvPointRadInv; Choix: Standard_Integer) {.
    importcpp: "Set", header: "BRepBlend_CurvPointRadInv.hxx".}
proc NbEquations*(this: BRepBlend_CurvPointRadInv): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_CurvPointRadInv.hxx".}
proc Value*(this: var BRepBlend_CurvPointRadInv; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BRepBlend_CurvPointRadInv.hxx".}
proc Derivatives*(this: var BRepBlend_CurvPointRadInv; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc Values*(this: var BRepBlend_CurvPointRadInv; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc Set*(this: var BRepBlend_CurvPointRadInv; P: gp_Pnt) {.importcpp: "Set",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc GetTolerance*(this: BRepBlend_CurvPointRadInv; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BRepBlend_CurvPointRadInv.hxx".}
proc GetBounds*(this: BRepBlend_CurvPointRadInv; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc IsSolution*(this: var BRepBlend_CurvPointRadInv; Sol: math_Vector;
                Tol: Standard_Real): Standard_Boolean {.importcpp: "IsSolution",
    header: "BRepBlend_CurvPointRadInv.hxx".}