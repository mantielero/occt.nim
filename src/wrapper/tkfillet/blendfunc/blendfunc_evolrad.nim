import ../../tkmath/tcolgp/tcolgp_types
import ../../tkmath/math/math_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import blendfunc_types
import ../../tkernel/tcolstd/tcolstd_types
import ../tkfillet/blend/blend_types
import ../../tkmath/geomabs/geomabs_types
import ../../tkgeomalgo/law/law_types



##  Created on: 1993-12-20
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



proc newBlendFuncEvolRad*(s1: Handle[Adaptor3dHSurface];
                         s2: Handle[Adaptor3dHSurface];
                         c: Handle[Adaptor3dHCurve]; law: Handle[LawFunction]): BlendFuncEvolRad {.
    cdecl, constructor, importcpp: "BlendFunc_EvolRad(@)", header: "BlendFunc_EvolRad.hxx".}
proc nbEquations*(this: BlendFuncEvolRad): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BlendFunc_EvolRad.hxx".}
proc value*(this: var BlendFuncEvolRad; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "BlendFunc_EvolRad.hxx".}
proc derivatives*(this: var BlendFuncEvolRad; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_EvolRad.hxx".}
proc values*(this: var BlendFuncEvolRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BlendFunc_EvolRad.hxx".}
proc getTolerance*(this: BlendFuncEvolRad; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_EvolRad.hxx".}
proc getBounds*(this: BlendFuncEvolRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BlendFunc_EvolRad.hxx".}
proc isSolution*(this: var BlendFuncEvolRad; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", header: "BlendFunc_EvolRad.hxx".}
proc getMinimalDistance*(this: BlendFuncEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", header: "BlendFunc_EvolRad.hxx".}
proc pointOnS1*(this: BlendFuncEvolRad): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS1", header: "BlendFunc_EvolRad.hxx".}
proc pointOnS2*(this: BlendFuncEvolRad): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS2", header: "BlendFunc_EvolRad.hxx".}
proc isTangencyPoint*(this: BlendFuncEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BlendFunc_EvolRad.hxx".}
proc tangentOnS1*(this: BlendFuncEvolRad): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS1", header: "BlendFunc_EvolRad.hxx".}
proc tangent2dOnS1*(this: BlendFuncEvolRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_EvolRad.hxx".}
proc tangentOnS2*(this: BlendFuncEvolRad): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS2", header: "BlendFunc_EvolRad.hxx".}
proc tangent2dOnS2*(this: BlendFuncEvolRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_EvolRad.hxx".}
proc tangent*(this: BlendFuncEvolRad; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tgFirst: var VecObj; tgLast: var VecObj; normFirst: var VecObj; normLast: var VecObj) {.
    noSideEffect, cdecl, importcpp: "Tangent", header: "BlendFunc_EvolRad.hxx".}
proc twistOnS1*(this: BlendFuncEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS1", header: "BlendFunc_EvolRad.hxx".}
proc twistOnS2*(this: BlendFuncEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS2", header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; choix: cint) {.cdecl, importcpp: "Set",
    header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; typeSection: BlendFuncSectionShape) {.cdecl,
    importcpp: "Set", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; param: cfloat; u1: cfloat; v1: cfloat;
             u2: cfloat; v2: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var CircObj) {.
    cdecl, importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc isRational*(this: BlendFuncEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BlendFunc_EvolRad.hxx".}
proc getSectionSize*(this: BlendFuncEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BlendFunc_EvolRad.hxx".}
proc getMinimalWeight*(this: BlendFuncEvolRad; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "BlendFunc_EvolRad.hxx".}
proc nbIntervals*(this: BlendFuncEvolRad; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "BlendFunc_EvolRad.hxx".}
proc intervals*(this: BlendFuncEvolRad; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "BlendFunc_EvolRad.hxx".}
proc getShape*(this: var BlendFuncEvolRad; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "BlendFunc_EvolRad.hxx".}
proc getTolerance*(this: BlendFuncEvolRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_EvolRad.hxx".}
proc knots*(this: var BlendFuncEvolRad; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "BlendFunc_EvolRad.hxx".}
proc mults*(this: var BlendFuncEvolRad; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc resolution*(this: BlendFuncEvolRad; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 header: "BlendFunc_EvolRad.hxx".}

