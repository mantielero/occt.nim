##  Created on: 1998-06-04
##  Created by: Philippe NOUAILLE
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, ../math/math_Vector,
  ../math/math_Matrix, ../Blend/Blend_FuncInv

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BlendFunc_ChAsymInv* {.importcpp: "BlendFunc_ChAsymInv",
                        header: "BlendFunc_ChAsymInv.hxx", bycopy.} = object of Blend_FuncInv


proc constructBlendFunc_ChAsymInv*(S1: handle[Adaptor3d_HSurface];
                                  S2: handle[Adaptor3d_HSurface];
                                  C: handle[Adaptor3d_HCurve]): BlendFunc_ChAsymInv {.
    constructor, importcpp: "BlendFunc_ChAsymInv(@)",
    header: "BlendFunc_ChAsymInv.hxx".}
proc Set*(this: var BlendFunc_ChAsymInv; OnFirst: Standard_Boolean;
         COnSurf: handle[Adaptor2d_HCurve2d]) {.importcpp: "Set",
    header: "BlendFunc_ChAsymInv.hxx".}
proc GetTolerance*(this: BlendFunc_ChAsymInv; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BlendFunc_ChAsymInv.hxx".}
proc GetBounds*(this: BlendFunc_ChAsymInv; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BlendFunc_ChAsymInv.hxx".}
proc IsSolution*(this: var BlendFunc_ChAsymInv; Sol: math_Vector; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IsSolution", header: "BlendFunc_ChAsymInv.hxx".}
proc NbEquations*(this: BlendFunc_ChAsymInv): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_ChAsymInv.hxx".}
proc ComputeValues*(this: var BlendFunc_ChAsymInv; X: math_Vector;
                   DegF: Standard_Integer; DegL: Standard_Integer): Standard_Boolean {.
    importcpp: "ComputeValues", header: "BlendFunc_ChAsymInv.hxx".}
proc Value*(this: var BlendFunc_ChAsymInv; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_ChAsymInv.hxx".}
proc Derivatives*(this: var BlendFunc_ChAsymInv; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "BlendFunc_ChAsymInv.hxx".}
proc Values*(this: var BlendFunc_ChAsymInv; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BlendFunc_ChAsymInv.hxx".}
proc Set*(this: var BlendFunc_ChAsymInv; Dist1: Standard_Real; Angle: Standard_Real;
         Choix: Standard_Integer) {.importcpp: "Set",
                                  header: "BlendFunc_ChAsymInv.hxx".}