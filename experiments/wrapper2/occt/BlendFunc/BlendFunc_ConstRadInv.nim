##  Created on: 1993-12-02
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Blend/Blend_FuncInv, ../math/math_Vector

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BlendFunc_ConstRadInv* {.importcpp: "BlendFunc_ConstRadInv",
                          header: "BlendFunc_ConstRadInv.hxx", bycopy.} = object of Blend_FuncInv


proc constructBlendFunc_ConstRadInv*(S1: handle[Adaptor3d_HSurface];
                                    S2: handle[Adaptor3d_HSurface];
                                    C: handle[Adaptor3d_HCurve]): BlendFunc_ConstRadInv {.
    constructor, importcpp: "BlendFunc_ConstRadInv(@)",
    header: "BlendFunc_ConstRadInv.hxx".}
proc Set*(this: var BlendFunc_ConstRadInv; OnFirst: Standard_Boolean;
         COnSurf: handle[Adaptor2d_HCurve2d]) {.importcpp: "Set",
    header: "BlendFunc_ConstRadInv.hxx".}
proc GetTolerance*(this: BlendFunc_ConstRadInv; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BlendFunc_ConstRadInv.hxx".}
proc GetBounds*(this: BlendFunc_ConstRadInv; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BlendFunc_ConstRadInv.hxx".}
proc IsSolution*(this: var BlendFunc_ConstRadInv; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "BlendFunc_ConstRadInv.hxx".}
proc NbEquations*(this: BlendFunc_ConstRadInv): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_ConstRadInv.hxx".}
proc Value*(this: var BlendFunc_ConstRadInv; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_ConstRadInv.hxx".}
proc Derivatives*(this: var BlendFunc_ConstRadInv; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "BlendFunc_ConstRadInv.hxx".}
proc Values*(this: var BlendFunc_ConstRadInv; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BlendFunc_ConstRadInv.hxx".}
proc Set*(this: var BlendFunc_ConstRadInv; R: Standard_Real; Choix: Standard_Integer) {.
    importcpp: "Set", header: "BlendFunc_ConstRadInv.hxx".}