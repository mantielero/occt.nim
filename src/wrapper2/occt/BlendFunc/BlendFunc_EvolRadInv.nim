##  Created on: 1993-12-21
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
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
type
  BlendFunc_EvolRadInv* {.importcpp: "BlendFunc_EvolRadInv",
                         header: "BlendFunc_EvolRadInv.hxx", bycopy.} = object of Blend_FuncInv


proc constructBlendFunc_EvolRadInv*(S1: handle[Adaptor3d_HSurface];
                                   S2: handle[Adaptor3d_HSurface];
                                   C: handle[Adaptor3d_HCurve];
                                   Law: handle[Law_Function]): BlendFunc_EvolRadInv {.
    constructor, importcpp: "BlendFunc_EvolRadInv(@)",
    header: "BlendFunc_EvolRadInv.hxx".}
proc Set*(this: var BlendFunc_EvolRadInv; OnFirst: Standard_Boolean;
         COnSurf: handle[Adaptor2d_HCurve2d]) {.importcpp: "Set",
    header: "BlendFunc_EvolRadInv.hxx".}
proc GetTolerance*(this: BlendFunc_EvolRadInv; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BlendFunc_EvolRadInv.hxx".}
proc GetBounds*(this: BlendFunc_EvolRadInv; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BlendFunc_EvolRadInv.hxx".}
proc IsSolution*(this: var BlendFunc_EvolRadInv; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "BlendFunc_EvolRadInv.hxx".}
proc NbEquations*(this: BlendFunc_EvolRadInv): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_EvolRadInv.hxx".}
proc Value*(this: var BlendFunc_EvolRadInv; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_EvolRadInv.hxx".}
proc Derivatives*(this: var BlendFunc_EvolRadInv; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "BlendFunc_EvolRadInv.hxx".}
proc Values*(this: var BlendFunc_EvolRadInv; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BlendFunc_EvolRadInv.hxx".}
proc Set*(this: var BlendFunc_EvolRadInv; Choix: Standard_Integer) {.importcpp: "Set",
    header: "BlendFunc_EvolRadInv.hxx".}