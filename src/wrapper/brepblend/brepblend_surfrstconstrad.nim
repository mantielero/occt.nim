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





##  Created on: 1997-02-06
##  Created by: Laurent BOURESCHE
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



proc newBRepBlendSurfRstConstRad*(surf: Handle[Adaptor3dHSurface];
                                 surfRst: Handle[Adaptor3dHSurface];
                                 rst: Handle[Adaptor2dHCurve2d];
                                 cGuide: Handle[Adaptor3dHCurve]): BRepBlendSurfRstConstRad {.
    cdecl, constructor, importcpp: "BRepBlend_SurfRstConstRad(@)", header: "BRepBlend_SurfRstConstRad.hxx".}
proc nbVariables*(this: BRepBlendSurfRstConstRad): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "BRepBlend_SurfRstConstRad.hxx".}
proc nbEquations*(this: BRepBlendSurfRstConstRad): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BRepBlend_SurfRstConstRad.hxx".}
proc value*(this: var BRepBlendSurfRstConstRad; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "BRepBlend_SurfRstConstRad.hxx".}
proc derivatives*(this: var BRepBlendSurfRstConstRad; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BRepBlend_SurfRstConstRad.hxx".}
proc values*(this: var BRepBlendSurfRstConstRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; surfRef: Handle[Adaptor3dHSurface];
         rstRef: Handle[Adaptor2dHCurve2d]) {.cdecl, importcpp: "Set",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BRepBlend_SurfRstConstRad.hxx".}
proc getTolerance*(this: BRepBlendSurfRstConstRad; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "GetTolerance",
                               header: "BRepBlend_SurfRstConstRad.hxx".}
proc getBounds*(this: BRepBlendSurfRstConstRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BRepBlend_SurfRstConstRad.hxx".}
proc isSolution*(this: var BRepBlendSurfRstConstRad; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BRepBlend_SurfRstConstRad.hxx".}
proc getMinimalDistance*(this: BRepBlendSurfRstConstRad): cfloat {.noSideEffect,
    cdecl, importcpp: "GetMinimalDistance", header: "BRepBlend_SurfRstConstRad.hxx".}
proc pointOnS*(this: BRepBlendSurfRstConstRad): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS", header: "BRepBlend_SurfRstConstRad.hxx".}
proc pointOnRst*(this: BRepBlendSurfRstConstRad): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc pnt2dOnS*(this: BRepBlendSurfRstConstRad): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnS", header: "BRepBlend_SurfRstConstRad.hxx".}
proc pnt2dOnRst*(this: BRepBlendSurfRstConstRad): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc parameterOnRst*(this: BRepBlendSurfRstConstRad): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc isTangencyPoint*(this: BRepBlendSurfRstConstRad): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BRepBlend_SurfRstConstRad.hxx".}
proc tangentOnS*(this: BRepBlendSurfRstConstRad): gp_Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS", header: "BRepBlend_SurfRstConstRad.hxx".}
proc tangent2dOnS*(this: BRepBlendSurfRstConstRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS", header: "BRepBlend_SurfRstConstRad.hxx".}
proc tangentOnRst*(this: BRepBlendSurfRstConstRad): gp_Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc tangent2dOnRst*(this: BRepBlendSurfRstConstRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc decroch*(this: BRepBlendSurfRstConstRad; sol: MathVector; ns: var gp_Vec; tgS: var gp_Vec): bool {.
    noSideEffect, cdecl, importcpp: "Decroch", header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; radius: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; typeSection: BlendFuncSectionShape) {.
    cdecl, importcpp: "Set", header: "BRepBlend_SurfRstConstRad.hxx".}
proc section*(this: var BRepBlendSurfRstConstRad; param: cfloat; u: cfloat; v: cfloat;
             w: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var CircObj) {.cdecl,
    importcpp: "Section", header: "BRepBlend_SurfRstConstRad.hxx".}
proc isRational*(this: BRepBlendSurfRstConstRad): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BRepBlend_SurfRstConstRad.hxx".}
proc getSectionSize*(this: BRepBlendSurfRstConstRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BRepBlend_SurfRstConstRad.hxx".}
proc getMinimalWeight*(this: BRepBlendSurfRstConstRad;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", header: "BRepBlend_SurfRstConstRad.hxx".}
proc nbIntervals*(this: BRepBlendSurfRstConstRad; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", header: "BRepBlend_SurfRstConstRad.hxx".}
proc intervals*(this: BRepBlendSurfRstConstRad; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "BRepBlend_SurfRstConstRad.hxx".}
proc getShape*(this: var BRepBlendSurfRstConstRad; nbPoles: var cint;
              nbKnots: var cint; degree: var cint; nbPoles2d: var cint) {.cdecl,
    importcpp: "GetShape", header: "BRepBlend_SurfRstConstRad.hxx".}
proc getTolerance*(this: BRepBlendSurfRstConstRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BRepBlend_SurfRstConstRad.hxx".}
proc knots*(this: var BRepBlendSurfRstConstRad; tKnots: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Knots", header: "BRepBlend_SurfRstConstRad.hxx".}
proc mults*(this: var BRepBlendSurfRstConstRad; tMults: var TColStdArray1OfInteger) {.
    cdecl, importcpp: "Mults", header: "BRepBlend_SurfRstConstRad.hxx".}
proc section*(this: var BRepBlendSurfRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BRepBlend_SurfRstConstRad.hxx".}
proc section*(this: var BRepBlendSurfRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc section*(this: var BRepBlendSurfRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc resolution*(this: BRepBlendSurfRstConstRad; iC2d: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "BRepBlend_SurfRstConstRad.hxx".}


