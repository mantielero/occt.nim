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



proc newBlendFuncRuled*(s1: Handle[Adaptor3dHSurface];
                       s2: Handle[Adaptor3dHSurface]; c: Handle[Adaptor3dHCurve]): BlendFuncRuled {.
    cdecl, constructor, importcpp: "BlendFunc_Ruled(@)", header: "BlendFunc_Ruled.hxx".}
proc nbEquations*(this: BlendFuncRuled): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BlendFunc_Ruled.hxx".}
proc value*(this: var BlendFuncRuled; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "BlendFunc_Ruled.hxx".}
proc derivatives*(this: var BlendFuncRuled; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_Ruled.hxx".}
proc values*(this: var BlendFuncRuled; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BlendFunc_Ruled.hxx".}
proc set*(this: var BlendFuncRuled; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BlendFunc_Ruled.hxx".}
proc set*(this: var BlendFuncRuled; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BlendFunc_Ruled.hxx".}
proc getTolerance*(this: BlendFuncRuled; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_Ruled.hxx".}
proc getBounds*(this: BlendFuncRuled; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BlendFunc_Ruled.hxx".}
proc isSolution*(this: var BlendFuncRuled; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", header: "BlendFunc_Ruled.hxx".}
proc getMinimalDistance*(this: BlendFuncRuled): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", header: "BlendFunc_Ruled.hxx".}
proc pointOnS1*(this: BlendFuncRuled): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS1", header: "BlendFunc_Ruled.hxx".}
proc pointOnS2*(this: BlendFuncRuled): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS2", header: "BlendFunc_Ruled.hxx".}
proc isTangencyPoint*(this: BlendFuncRuled): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BlendFunc_Ruled.hxx".}
proc tangentOnS1*(this: BlendFuncRuled): gp_Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS1", header: "BlendFunc_Ruled.hxx".}
proc tangent2dOnS1*(this: BlendFuncRuled): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_Ruled.hxx".}
proc tangentOnS2*(this: BlendFuncRuled): gp_Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS2", header: "BlendFunc_Ruled.hxx".}
proc tangent2dOnS2*(this: BlendFuncRuled): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_Ruled.hxx".}
proc tangent*(this: BlendFuncRuled; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tgFirst: var gp_Vec; tgLast: var gp_Vec; normFirst: var gp_Vec; normLast: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "Tangent", header: "BlendFunc_Ruled.hxx".}
proc getSection*(this: var BlendFuncRuled; param: cfloat; u1: cfloat; v1: cfloat;
                u2: cfloat; v2: cfloat; tabP: var TColgpArray1OfPnt;
                tabV: var TColgpArray1OfVec): bool {.cdecl, importcpp: "GetSection",
    header: "BlendFunc_Ruled.hxx".}
proc isRational*(this: BlendFuncRuled): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BlendFunc_Ruled.hxx".}
proc getSectionSize*(this: BlendFuncRuled): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BlendFunc_Ruled.hxx".}
proc getMinimalWeight*(this: BlendFuncRuled; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "BlendFunc_Ruled.hxx".}
proc nbIntervals*(this: BlendFuncRuled; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "BlendFunc_Ruled.hxx".}
proc intervals*(this: BlendFuncRuled; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "BlendFunc_Ruled.hxx".}
proc getShape*(this: var BlendFuncRuled; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "BlendFunc_Ruled.hxx".}
proc getTolerance*(this: BlendFuncRuled; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_Ruled.hxx".}
proc knots*(this: var BlendFuncRuled; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "BlendFunc_Ruled.hxx".}
proc mults*(this: var BlendFuncRuled; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", header: "BlendFunc_Ruled.hxx".}
proc section*(this: var BlendFuncRuled; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BlendFunc_Ruled.hxx".}
proc section*(this: var BlendFuncRuled; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BlendFunc_Ruled.hxx".}
proc section*(this: var BlendFuncRuled; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Section", header: "BlendFunc_Ruled.hxx".}
proc axeRot*(this: var BlendFuncRuled; prm: cfloat): Ax1Obj {.cdecl, importcpp: "AxeRot",
    header: "BlendFunc_Ruled.hxx".}
proc resolution*(this: BlendFuncRuled; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 header: "BlendFunc_Ruled.hxx".}


