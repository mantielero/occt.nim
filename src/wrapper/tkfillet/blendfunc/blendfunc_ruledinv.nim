import blendfunc_types

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


proc newBlendFuncRuledInv*(s1: Handle[Adaptor3dHSurface];
                          s2: Handle[Adaptor3dHSurface];
                          c: Handle[Adaptor3dHCurve]): BlendFuncRuledInv {.cdecl,
    constructor, importcpp: "BlendFunc_RuledInv(@)", header: "BlendFunc_RuledInv.hxx".}
proc set*(this: var BlendFuncRuledInv; onFirst: bool;
         cOnSurf: Handle[Adaptor2dHCurve2d]) {.cdecl, importcpp: "Set",
    header: "BlendFunc_RuledInv.hxx".}
proc getTolerance*(this: BlendFuncRuledInv; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_RuledInv.hxx".}
proc getBounds*(this: BlendFuncRuledInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BlendFunc_RuledInv.hxx".}
proc isSolution*(this: var BlendFuncRuledInv; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BlendFunc_RuledInv.hxx".}
proc nbEquations*(this: BlendFuncRuledInv): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BlendFunc_RuledInv.hxx".}
proc value*(this: var BlendFuncRuledInv; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "BlendFunc_RuledInv.hxx".}
proc derivatives*(this: var BlendFuncRuledInv; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_RuledInv.hxx".}
proc values*(this: var BlendFuncRuledInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BlendFunc_RuledInv.hxx".}
