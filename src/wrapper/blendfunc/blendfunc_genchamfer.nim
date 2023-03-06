import ../../tkmath/tcolgp/tcolgp_types
import ../../tkmath/math/math_types
import ../../tkmath/gp/gp_types
import ../blend/blend_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import blendfunc_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types





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



proc newBlendFuncGenChamfer*(s1: Handle[Adaptor3dHSurface];
                            s2: Handle[Adaptor3dHSurface];
                            cg: Handle[Adaptor3dHCurve]): BlendFuncGenChamfer {.
    cdecl, constructor, importcpp: "BlendFunc_GenChamfer(@)", header: "BlendFunc_GenChamfer.hxx".}
proc nbEquations*(this: BlendFuncGenChamfer): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BlendFunc_GenChamfer.hxx".}
proc values*(this: var BlendFuncGenChamfer; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BlendFunc_GenChamfer.hxx".}
proc set*(this: var BlendFuncGenChamfer; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BlendFunc_GenChamfer.hxx".}
proc set*(this: var BlendFuncGenChamfer; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BlendFunc_GenChamfer.hxx".}
proc getTolerance*(this: BlendFuncGenChamfer; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_GenChamfer.hxx".}
proc getBounds*(this: BlendFuncGenChamfer; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BlendFunc_GenChamfer.hxx".}
proc getMinimalDistance*(this: BlendFuncGenChamfer): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", header: "BlendFunc_GenChamfer.hxx".}
proc set*(this: var BlendFuncGenChamfer; dist1: cfloat; dist2: cfloat; choix: cint) {.
    cdecl, importcpp: "Set", header: "BlendFunc_GenChamfer.hxx".}
proc isRational*(this: BlendFuncGenChamfer): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BlendFunc_GenChamfer.hxx".}
proc getMinimalWeight*(this: BlendFuncGenChamfer; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "BlendFunc_GenChamfer.hxx".}
proc nbIntervals*(this: BlendFuncGenChamfer; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "BlendFunc_GenChamfer.hxx".}
proc intervals*(this: BlendFuncGenChamfer; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "BlendFunc_GenChamfer.hxx".}
proc getShape*(this: var BlendFuncGenChamfer; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "BlendFunc_GenChamfer.hxx".}
proc getTolerance*(this: BlendFuncGenChamfer; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_GenChamfer.hxx".}
proc knots*(this: var BlendFuncGenChamfer; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "BlendFunc_GenChamfer.hxx".}
proc mults*(this: var BlendFuncGenChamfer; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; param: cfloat; u1: cfloat; v1: cfloat;
             u2: cfloat; v2: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var LinObj) {.cdecl,
    importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    header: "BlendFunc_GenChamfer.hxx".}
proc resolution*(this: BlendFuncGenChamfer; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 header: "BlendFunc_GenChamfer.hxx".}


