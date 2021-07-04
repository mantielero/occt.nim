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
  ../Standard/Standard_Boolean, BlendFunc_GenChamfInv, ../math/math_Vector,
  ../Standard/Standard_Real

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BlendFunc_ConstThroatInv* {.importcpp: "BlendFunc_ConstThroatInv",
                             header: "BlendFunc_ConstThroatInv.hxx", bycopy.} = object of BlendFunc_GenChamfInv


proc constructBlendFunc_ConstThroatInv*(S1: handle[Adaptor3d_HSurface];
                                       S2: handle[Adaptor3d_HSurface];
                                       C: handle[Adaptor3d_HCurve]): BlendFunc_ConstThroatInv {.
    constructor, importcpp: "BlendFunc_ConstThroatInv(@)",
    header: "BlendFunc_ConstThroatInv.hxx".}
proc IsSolution*(this: var BlendFunc_ConstThroatInv; Sol: math_Vector;
                Tol: Standard_Real): Standard_Boolean {.importcpp: "IsSolution",
    header: "BlendFunc_ConstThroatInv.hxx".}
proc Value*(this: var BlendFunc_ConstThroatInv; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "BlendFunc_ConstThroatInv.hxx".}
proc Derivatives*(this: var BlendFunc_ConstThroatInv; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "BlendFunc_ConstThroatInv.hxx".}
## using statement

proc Set*(this: var BlendFunc_ConstThroatInv; theThroat: Standard_Real;
         a3: Standard_Real; Choix: Standard_Integer) {.importcpp: "Set",
    header: "BlendFunc_ConstThroatInv.hxx".}