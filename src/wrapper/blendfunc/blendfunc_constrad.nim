import ../tcolgp/tcolgp_types
import ../math/math_types
import ../gp/gp_types
import ../blend/blend_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import blendfunc_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types





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



proc newBlendFuncConstRad*(s1: Handle[Adaptor3dHSurface];
                          s2: Handle[Adaptor3dHSurface];
                          c: Handle[Adaptor3dHCurve]): BlendFuncConstRad {.cdecl,
    constructor, importcpp: "BlendFunc_ConstRad(@)", header: "BlendFunc_ConstRad.hxx".}
proc nbEquations*(this: BlendFuncConstRad): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BlendFunc_ConstRad.hxx".}
proc value*(this: var BlendFuncConstRad; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "BlendFunc_ConstRad.hxx".}
proc derivatives*(this: var BlendFuncConstRad; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_ConstRad.hxx".}
proc values*(this: var BlendFuncConstRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BlendFunc_ConstRad.hxx".}
proc set*(this: var BlendFuncConstRad; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BlendFunc_ConstRad.hxx".}
proc set*(this: var BlendFuncConstRad; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BlendFunc_ConstRad.hxx".}
proc getTolerance*(this: BlendFuncConstRad; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_ConstRad.hxx".}
proc getBounds*(this: BlendFuncConstRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BlendFunc_ConstRad.hxx".}
proc isSolution*(this: var BlendFuncConstRad; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BlendFunc_ConstRad.hxx".}
proc getMinimalDistance*(this: BlendFuncConstRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", header: "BlendFunc_ConstRad.hxx".}
proc pointOnS1*(this: BlendFuncConstRad): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS1", header: "BlendFunc_ConstRad.hxx".}
proc pointOnS2*(this: BlendFuncConstRad): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS2", header: "BlendFunc_ConstRad.hxx".}
proc isTangencyPoint*(this: BlendFuncConstRad): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BlendFunc_ConstRad.hxx".}
proc tangentOnS1*(this: BlendFuncConstRad): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS1", header: "BlendFunc_ConstRad.hxx".}
proc tangent2dOnS1*(this: BlendFuncConstRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_ConstRad.hxx".}
proc tangentOnS2*(this: BlendFuncConstRad): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS2", header: "BlendFunc_ConstRad.hxx".}
proc tangent2dOnS2*(this: BlendFuncConstRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_ConstRad.hxx".}
proc tangent*(this: BlendFuncConstRad; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tgFirst: var VecObj; tgLast: var VecObj; normFirst: var VecObj; normLast: var VecObj) {.
    noSideEffect, cdecl, importcpp: "Tangent", header: "BlendFunc_ConstRad.hxx".}
proc twistOnS1*(this: BlendFuncConstRad): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS1", header: "BlendFunc_ConstRad.hxx".}
proc twistOnS2*(this: BlendFuncConstRad): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS2", header: "BlendFunc_ConstRad.hxx".}
proc set*(this: var BlendFuncConstRad; radius: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", header: "BlendFunc_ConstRad.hxx".}
proc set*(this: var BlendFuncConstRad; typeSection: BlendFuncSectionShape) {.cdecl,
    importcpp: "Set", header: "BlendFunc_ConstRad.hxx".}
proc section*(this: var BlendFuncConstRad; param: cfloat; u1: cfloat; v1: cfloat;
             u2: cfloat; v2: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var CircObj) {.
    cdecl, importcpp: "Section", header: "BlendFunc_ConstRad.hxx".}
proc isRational*(this: BlendFuncConstRad): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BlendFunc_ConstRad.hxx".}
proc getSectionSize*(this: BlendFuncConstRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BlendFunc_ConstRad.hxx".}
proc getMinimalWeight*(this: BlendFuncConstRad; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "BlendFunc_ConstRad.hxx".}
proc nbIntervals*(this: BlendFuncConstRad; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "BlendFunc_ConstRad.hxx".}
proc intervals*(this: BlendFuncConstRad; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "BlendFunc_ConstRad.hxx".}
proc getShape*(this: var BlendFuncConstRad; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "BlendFunc_ConstRad.hxx".}
proc getTolerance*(this: BlendFuncConstRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_ConstRad.hxx".}
proc knots*(this: var BlendFuncConstRad; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "BlendFunc_ConstRad.hxx".}
proc mults*(this: var BlendFuncConstRad; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", header: "BlendFunc_ConstRad.hxx".}
proc section*(this: var BlendFuncConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BlendFunc_ConstRad.hxx".}
proc section*(this: var BlendFuncConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BlendFunc_ConstRad.hxx".}
proc section*(this: var BlendFuncConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    header: "BlendFunc_ConstRad.hxx".}
proc axeRot*(this: var BlendFuncConstRad; prm: cfloat): Ax1Obj {.cdecl,
    importcpp: "AxeRot", header: "BlendFunc_ConstRad.hxx".}
proc resolution*(this: BlendFuncConstRad; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 header: "BlendFunc_ConstRad.hxx".}


