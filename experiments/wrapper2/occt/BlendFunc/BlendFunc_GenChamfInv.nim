##  Created by: Julia GERASIMOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, BlendFunc_Corde, ../Blend/Blend_FuncInv,
  ../math/math_Vector, ../Standard/Standard_Real

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BlendFunc_GenChamfInv* {.importcpp: "BlendFunc_GenChamfInv",
                          header: "BlendFunc_GenChamfInv.hxx", bycopy.} = object of Blend_FuncInv


proc constructBlendFunc_GenChamfInv*(S1: handle[Adaptor3d_HSurface];
                                    S2: handle[Adaptor3d_HSurface];
                                    C: handle[Adaptor3d_HCurve]): BlendFunc_GenChamfInv {.
    constructor, importcpp: "BlendFunc_GenChamfInv(@)",
    header: "BlendFunc_GenChamfInv.hxx".}
proc Set*(this: var BlendFunc_GenChamfInv; OnFirst: Standard_Boolean;
         COnSurf: handle[Adaptor2d_HCurve2d]) {.importcpp: "Set",
    header: "BlendFunc_GenChamfInv.hxx".}
proc GetTolerance*(this: BlendFunc_GenChamfInv; Tolerance: var math_Vector;
                  Tol: Standard_Real) {.noSideEffect, importcpp: "GetTolerance",
                                      header: "BlendFunc_GenChamfInv.hxx".}
proc GetBounds*(this: BlendFunc_GenChamfInv; InfBound: var math_Vector;
               SupBound: var math_Vector) {.noSideEffect, importcpp: "GetBounds",
    header: "BlendFunc_GenChamfInv.hxx".}
proc NbEquations*(this: BlendFunc_GenChamfInv): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_GenChamfInv.hxx".}
proc Values*(this: var BlendFunc_GenChamfInv; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "BlendFunc_GenChamfInv.hxx".}
proc Set*(this: var BlendFunc_GenChamfInv; Dist1: Standard_Real; Dist2: Standard_Real;
         Choix: Standard_Integer) {.importcpp: "Set",
                                  header: "BlendFunc_GenChamfInv.hxx".}