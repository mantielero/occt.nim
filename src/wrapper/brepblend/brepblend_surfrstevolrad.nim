import ../tcolgp/tcolgp_types
import brepblend_types
import ../math/math_types
import ../gp/gp_types
import ../blend/blend_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../adaptor2d/adaptor2d_types
import ../blendfunc/blendfunc_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types
import ../law/law_types





##  Created on: 1997-07-28
##  Created by: Jerome LEMONIER
##  Copyright (c) 1997-1999 Matra Datavision
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



proc newBRepBlendSurfRstEvolRad*(surf: Handle[Adaptor3dHSurface];
                                surfRst: Handle[Adaptor3dHSurface];
                                rst: Handle[Adaptor2dHCurve2d];
                                cGuide: Handle[Adaptor3dHCurve];
                                evol: Handle[LawFunction]): BRepBlendSurfRstEvolRad {.
    cdecl, constructor, importcpp: "BRepBlend_SurfRstEvolRad(@)", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc nbVariables*(this: BRepBlendSurfRstEvolRad): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc nbEquations*(this: BRepBlendSurfRstEvolRad): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc value*(this: var BRepBlendSurfRstEvolRad; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc derivatives*(this: var BRepBlendSurfRstEvolRad; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc values*(this: var BRepBlendSurfRstEvolRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; surfRef: Handle[Adaptor3dHSurface];
         rstRef: Handle[Adaptor2dHCurve2d]) {.cdecl, importcpp: "Set",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getTolerance*(this: BRepBlendSurfRstEvolRad; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "GetTolerance",
                               header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getBounds*(this: BRepBlendSurfRstEvolRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc isSolution*(this: var BRepBlendSurfRstEvolRad; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getMinimalDistance*(this: BRepBlendSurfRstEvolRad): cfloat {.noSideEffect,
    cdecl, importcpp: "GetMinimalDistance", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc pointOnS*(this: BRepBlendSurfRstEvolRad): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc pointOnRst*(this: BRepBlendSurfRstEvolRad): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc pnt2dOnS*(this: BRepBlendSurfRstEvolRad): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc pnt2dOnRst*(this: BRepBlendSurfRstEvolRad): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc parameterOnRst*(this: BRepBlendSurfRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc isTangencyPoint*(this: BRepBlendSurfRstEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc tangentOnS*(this: BRepBlendSurfRstEvolRad): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc tangent2dOnS*(this: BRepBlendSurfRstEvolRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc tangentOnRst*(this: BRepBlendSurfRstEvolRad): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc tangent2dOnRst*(this: BRepBlendSurfRstEvolRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc decroch*(this: BRepBlendSurfRstEvolRad; sol: MathVector; ns: var VecObj; tgS: var VecObj): bool {.
    noSideEffect, cdecl, importcpp: "Decroch", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; choix: cint) {.cdecl, importcpp: "Set",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc set*(this: var BRepBlendSurfRstEvolRad; typeSection: BlendFuncSectionShape) {.
    cdecl, importcpp: "Set", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc section*(this: var BRepBlendSurfRstEvolRad; param: cfloat; u: cfloat; v: cfloat;
             w: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var CircObj) {.cdecl,
    importcpp: "Section", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc isRational*(this: BRepBlendSurfRstEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getSectionSize*(this: BRepBlendSurfRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getMinimalWeight*(this: BRepBlendSurfRstEvolRad;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc nbIntervals*(this: BRepBlendSurfRstEvolRad; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc intervals*(this: BRepBlendSurfRstEvolRad; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getShape*(this: var BRepBlendSurfRstEvolRad; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc getTolerance*(this: BRepBlendSurfRstEvolRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc knots*(this: var BRepBlendSurfRstEvolRad; tKnots: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Knots", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc mults*(this: var BRepBlendSurfRstEvolRad; tMults: var TColStdArray1OfInteger) {.
    cdecl, importcpp: "Mults", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc section*(this: var BRepBlendSurfRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BRepBlend_SurfRstEvolRad.hxx".}
proc section*(this: var BRepBlendSurfRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc section*(this: var BRepBlendSurfRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    header: "BRepBlend_SurfRstEvolRad.hxx".}
proc resolution*(this: BRepBlendSurfRstEvolRad; iC2d: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "BRepBlend_SurfRstEvolRad.hxx".}


