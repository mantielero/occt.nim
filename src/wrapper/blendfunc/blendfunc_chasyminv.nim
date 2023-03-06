import ../math/math_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../adaptor2d/adaptor2d_types
import blendfunc_types





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



proc newBlendFuncChAsymInv*(s1: Handle[Adaptor3dHSurface];
                           s2: Handle[Adaptor3dHSurface];
                           c: Handle[Adaptor3dHCurve]): BlendFuncChAsymInv {.cdecl,
    constructor, importcpp: "BlendFunc_ChAsymInv(@)", header: "BlendFunc_ChAsymInv.hxx".}
proc set*(this: var BlendFuncChAsymInv; onFirst: bool;
         cOnSurf: Handle[Adaptor2dHCurve2d]) {.cdecl, importcpp: "Set",
    header: "BlendFunc_ChAsymInv.hxx".}
proc getTolerance*(this: BlendFuncChAsymInv; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_ChAsymInv.hxx".}
proc getBounds*(this: BlendFuncChAsymInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BlendFunc_ChAsymInv.hxx".}
proc isSolution*(this: var BlendFuncChAsymInv; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BlendFunc_ChAsymInv.hxx".}
proc nbEquations*(this: BlendFuncChAsymInv): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BlendFunc_ChAsymInv.hxx".}
proc computeValues*(this: var BlendFuncChAsymInv; x: MathVector; degF: cint; degL: cint): bool {.
    cdecl, importcpp: "ComputeValues", header: "BlendFunc_ChAsymInv.hxx".}
proc value*(this: var BlendFuncChAsymInv; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "BlendFunc_ChAsymInv.hxx".}
proc derivatives*(this: var BlendFuncChAsymInv; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_ChAsymInv.hxx".}
proc values*(this: var BlendFuncChAsymInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BlendFunc_ChAsymInv.hxx".}
proc set*(this: var BlendFuncChAsymInv; dist1: cfloat; angle: cfloat; choix: cint) {.
    cdecl, importcpp: "Set", header: "BlendFunc_ChAsymInv.hxx".}


