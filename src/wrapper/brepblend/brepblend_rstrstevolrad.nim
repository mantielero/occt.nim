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



proc newBRepBlendRstRstEvolRad*(surf1: Handle[Adaptor3dHSurface];
                               rst1: Handle[Adaptor2dHCurve2d];
                               surf2: Handle[Adaptor3dHSurface];
                               rst2: Handle[Adaptor2dHCurve2d];
                               cGuide: Handle[Adaptor3dHCurve];
                               evol: Handle[LawFunction]): BRepBlendRstRstEvolRad {.
    cdecl, constructor, importcpp: "BRepBlend_RstRstEvolRad(@)", header: "BRepBlend_RstRstEvolRad.hxx".}
proc nbVariables*(this: BRepBlendRstRstEvolRad): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "BRepBlend_RstRstEvolRad.hxx".}
proc nbEquations*(this: BRepBlendRstRstEvolRad): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BRepBlend_RstRstEvolRad.hxx".}
proc value*(this: var BRepBlendRstRstEvolRad; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "BRepBlend_RstRstEvolRad.hxx".}
proc derivatives*(this: var BRepBlendRstRstEvolRad; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BRepBlend_RstRstEvolRad.hxx".}
proc values*(this: var BRepBlendRstRstEvolRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; surfRef1: Handle[Adaptor3dHSurface];
         rstRef1: Handle[Adaptor2dHCurve2d]; surfRef2: Handle[Adaptor3dHSurface];
         rstRef2: Handle[Adaptor2dHCurve2d]) {.cdecl, importcpp: "Set",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BRepBlend_RstRstEvolRad.hxx".}
proc getTolerance*(this: BRepBlendRstRstEvolRad; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "GetTolerance",
                               header: "BRepBlend_RstRstEvolRad.hxx".}
proc getBounds*(this: BRepBlendRstRstEvolRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BRepBlend_RstRstEvolRad.hxx".}
proc isSolution*(this: var BRepBlendRstRstEvolRad; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BRepBlend_RstRstEvolRad.hxx".}
proc getMinimalDistance*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", header: "BRepBlend_RstRstEvolRad.hxx".}
proc pointOnRst1*(this: BRepBlendRstRstEvolRad): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc pointOnRst2*(this: BRepBlendRstRstEvolRad): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc pnt2dOnRst1*(this: BRepBlendRstRstEvolRad): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc pnt2dOnRst2*(this: BRepBlendRstRstEvolRad): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc parameterOnRst1*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc parameterOnRst2*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc isTangencyPoint*(this: BRepBlendRstRstEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BRepBlend_RstRstEvolRad.hxx".}
proc tangentOnRst1*(this: BRepBlendRstRstEvolRad): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc tangent2dOnRst1*(this: BRepBlendRstRstEvolRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc tangentOnRst2*(this: BRepBlendRstRstEvolRad): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc tangent2dOnRst2*(this: BRepBlendRstRstEvolRad): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc decroch*(this: BRepBlendRstRstEvolRad; sol: MathVector; nRst1: var VecObj;
             tgRst1: var VecObj; nRst2: var VecObj; tgRst2: var VecObj): BlendDecrochStatus {.
    noSideEffect, cdecl, importcpp: "Decroch", header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; choix: cint) {.cdecl, importcpp: "Set",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; typeSection: BlendFuncSectionShape) {.
    cdecl, importcpp: "Set", header: "BRepBlend_RstRstEvolRad.hxx".}
proc centerCircleRst1Rst2*(this: BRepBlendRstRstEvolRad; ptRst1: PntObj; ptRst2: PntObj;
                          np: VecObj; center: var PntObj; vdMed: var VecObj): bool {.noSideEffect,
    cdecl, importcpp: "CenterCircleRst1Rst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc section*(this: var BRepBlendRstRstEvolRad; param: cfloat; u: cfloat; v: cfloat;
             pdeb: var cfloat; pfin: var cfloat; c: var CircObj) {.cdecl,
    importcpp: "Section", header: "BRepBlend_RstRstEvolRad.hxx".}
proc isRational*(this: BRepBlendRstRstEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BRepBlend_RstRstEvolRad.hxx".}
proc getSectionSize*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BRepBlend_RstRstEvolRad.hxx".}
proc getMinimalWeight*(this: BRepBlendRstRstEvolRad;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", header: "BRepBlend_RstRstEvolRad.hxx".}
proc nbIntervals*(this: BRepBlendRstRstEvolRad; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "BRepBlend_RstRstEvolRad.hxx".}
proc intervals*(this: BRepBlendRstRstEvolRad; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "BRepBlend_RstRstEvolRad.hxx".}
proc getShape*(this: var BRepBlendRstRstEvolRad; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc getTolerance*(this: BRepBlendRstRstEvolRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BRepBlend_RstRstEvolRad.hxx".}
proc knots*(this: var BRepBlendRstRstEvolRad; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "BRepBlend_RstRstEvolRad.hxx".}
proc mults*(this: var BRepBlendRstRstEvolRad; tMults: var TColStdArray1OfInteger) {.
    cdecl, importcpp: "Mults", header: "BRepBlend_RstRstEvolRad.hxx".}
proc section*(this: var BRepBlendRstRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BRepBlend_RstRstEvolRad.hxx".}
proc section*(this: var BRepBlendRstRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc section*(this: var BRepBlendRstRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc resolution*(this: BRepBlendRstRstEvolRad; iC2d: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "BRepBlend_RstRstEvolRad.hxx".}


