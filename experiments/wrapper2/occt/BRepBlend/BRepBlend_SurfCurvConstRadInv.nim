##  Created on: 1997-02-21
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Blend/Blend_SurfCurvFuncInv,
  ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BRepBlend_SurfCurvConstRadInv* {.importcpp: "BRepBlend_SurfCurvConstRadInv",
                                  header: "BRepBlend_SurfCurvConstRadInv.hxx",
                                  bycopy.} = object of Blend_SurfCurvFuncInv


proc constructBRepBlend_SurfCurvConstRadInv*(S: handle[Adaptor3d_HSurface];
    C: handle[Adaptor3d_HCurve]; Cg: handle[Adaptor3d_HCurve]): BRepBlend_SurfCurvConstRadInv {.
    constructor, importcpp: "BRepBlend_SurfCurvConstRadInv(@)",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc Set*(this: var BRepBlend_SurfCurvConstRadInv; R: Standard_Real;
         Choix: Standard_Integer) {.importcpp: "Set",
                                  header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc NbEquations*(this: BRepBlend_SurfCurvConstRadInv): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc Value*(this: var BRepBlend_SurfCurvConstRadInv; X: math_Vector;
           F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc Derivatives*(this: var BRepBlend_SurfCurvConstRadInv; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc Values*(this: var BRepBlend_SurfCurvConstRadInv; X: math_Vector;
            F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc Set*(this: var BRepBlend_SurfCurvConstRadInv; Rst: handle[Adaptor2d_HCurve2d]) {.
    importcpp: "Set", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc GetTolerance*(this: BRepBlend_SurfCurvConstRadInv; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc GetBounds*(this: BRepBlend_SurfCurvConstRadInv; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc IsSolution*(this: var BRepBlend_SurfCurvConstRadInv; Sol: math_Vector;
                Tol: Standard_Real): Standard_Boolean {.importcpp: "IsSolution",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}