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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BlendFuncConstRadInv* {.importcpp: "BlendFunc_ConstRadInv",
                         header: "BlendFunc_ConstRadInv.hxx", bycopy.} = object of BlendFuncInv


proc constructBlendFuncConstRadInv*(s1: Handle[Adaptor3dHSurface];
                                   s2: Handle[Adaptor3dHSurface];
                                   c: Handle[Adaptor3dHCurve]): BlendFuncConstRadInv {.
    constructor, importcpp: "BlendFunc_ConstRadInv(@)",
    header: "BlendFunc_ConstRadInv.hxx".}
proc set*(this: var BlendFuncConstRadInv; onFirst: bool;
         cOnSurf: Handle[Adaptor2dHCurve2d]) {.importcpp: "Set",
    header: "BlendFunc_ConstRadInv.hxx".}
proc getTolerance*(this: BlendFuncConstRadInv; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_ConstRadInv.hxx".}
proc getBounds*(this: BlendFuncConstRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_ConstRadInv.hxx".}
proc isSolution*(this: var BlendFuncConstRadInv; sol: MathVector; tol: cfloat): bool {.
    importcpp: "IsSolution", header: "BlendFunc_ConstRadInv.hxx".}
proc nbEquations*(this: BlendFuncConstRadInv): cint {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_ConstRadInv.hxx".}
proc value*(this: var BlendFuncConstRadInv; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BlendFunc_ConstRadInv.hxx".}
proc derivatives*(this: var BlendFuncConstRadInv; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BlendFunc_ConstRadInv.hxx".}
proc values*(this: var BlendFuncConstRadInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "BlendFunc_ConstRadInv.hxx".}
proc set*(this: var BlendFuncConstRadInv; r: cfloat; choix: cint) {.importcpp: "Set",
    header: "BlendFunc_ConstRadInv.hxx".}

























