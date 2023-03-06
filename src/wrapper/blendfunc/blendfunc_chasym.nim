import ../tcolgp/tcolgp_types
import ../math/math_types
import ../gp/gp_types
import ../blend/blend_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import blendfunc_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types





##  Created on: 1998-06-02
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



proc newBlendFuncChAsym*(s1: Handle[Adaptor3dHSurface];
                        s2: Handle[Adaptor3dHSurface]; c: Handle[Adaptor3dHCurve]): BlendFuncChAsym {.
    cdecl, constructor, importcpp: "BlendFunc_ChAsym(@)", header: "BlendFunc_ChAsym.hxx".}
proc nbEquations*(this: BlendFuncChAsym): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BlendFunc_ChAsym.hxx".}
proc set*(this: var BlendFuncChAsym; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BlendFunc_ChAsym.hxx".}
proc set*(this: var BlendFuncChAsym; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BlendFunc_ChAsym.hxx".}
proc getTolerance*(this: BlendFuncChAsym; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_ChAsym.hxx".}
proc getBounds*(this: BlendFuncChAsym; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BlendFunc_ChAsym.hxx".}
proc isSolution*(this: var BlendFuncChAsym; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", header: "BlendFunc_ChAsym.hxx".}
proc getMinimalDistance*(this: BlendFuncChAsym): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", header: "BlendFunc_ChAsym.hxx".}
proc computeValues*(this: var BlendFuncChAsym; x: MathVector; degF: cint; degL: cint): bool {.
    cdecl, importcpp: "ComputeValues", header: "BlendFunc_ChAsym.hxx".}
proc value*(this: var BlendFuncChAsym; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "BlendFunc_ChAsym.hxx".}
proc derivatives*(this: var BlendFuncChAsym; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_ChAsym.hxx".}
proc values*(this: var BlendFuncChAsym; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BlendFunc_ChAsym.hxx".}
proc pointOnS1*(this: BlendFuncChAsym): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS1", header: "BlendFunc_ChAsym.hxx".}
proc pointOnS2*(this: BlendFuncChAsym): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS2", header: "BlendFunc_ChAsym.hxx".}
proc isTangencyPoint*(this: BlendFuncChAsym): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BlendFunc_ChAsym.hxx".}
proc tangentOnS1*(this: BlendFuncChAsym): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS1", header: "BlendFunc_ChAsym.hxx".}
proc tangent2dOnS1*(this: BlendFuncChAsym): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_ChAsym.hxx".}
proc tangentOnS2*(this: BlendFuncChAsym): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS2", header: "BlendFunc_ChAsym.hxx".}
proc tangent2dOnS2*(this: BlendFuncChAsym): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_ChAsym.hxx".}
proc twistOnS1*(this: BlendFuncChAsym): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS1", header: "BlendFunc_ChAsym.hxx".}
proc twistOnS2*(this: BlendFuncChAsym): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS2", header: "BlendFunc_ChAsym.hxx".}
proc tangent*(this: BlendFuncChAsym; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tgFirst: var VecObj; tgLast: var VecObj; normFirst: var VecObj; normLast: var VecObj) {.
    noSideEffect, cdecl, importcpp: "Tangent", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; param: cfloat; u1: cfloat; v1: cfloat;
             u2: cfloat; v2: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var LinObj) {.cdecl,
    importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc isRational*(this: BlendFuncChAsym): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BlendFunc_ChAsym.hxx".}
proc getSectionSize*(this: BlendFuncChAsym): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BlendFunc_ChAsym.hxx".}
proc getMinimalWeight*(this: BlendFuncChAsym; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "BlendFunc_ChAsym.hxx".}
proc nbIntervals*(this: BlendFuncChAsym; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "BlendFunc_ChAsym.hxx".}
proc intervals*(this: BlendFuncChAsym; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "BlendFunc_ChAsym.hxx".}
proc getShape*(this: var BlendFuncChAsym; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "BlendFunc_ChAsym.hxx".}
proc getTolerance*(this: BlendFuncChAsym; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_ChAsym.hxx".}
proc knots*(this: var BlendFuncChAsym; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "BlendFunc_ChAsym.hxx".}
proc mults*(this: var BlendFuncChAsym; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc resolution*(this: BlendFuncChAsym; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 header: "BlendFunc_ChAsym.hxx".}
proc set*(this: var BlendFuncChAsym; dist1: cfloat; angle: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", header: "BlendFunc_ChAsym.hxx".}


