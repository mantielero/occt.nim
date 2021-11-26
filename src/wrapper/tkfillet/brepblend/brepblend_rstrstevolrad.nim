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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BRepBlendRstRstEvolRad* {.importcpp: "BRepBlend_RstRstEvolRad",
                           header: "BRepBlend_RstRstEvolRad.hxx", bycopy.} = object of BlendRstRstFunction


proc newBRepBlendRstRstEvolRad*(surf1: Handle[Adaptor3dHSurface];
                               rst1: Handle[Adaptor2dHCurve2d];
                               surf2: Handle[Adaptor3dHSurface];
                               rst2: Handle[Adaptor2dHCurve2d];
                               cGuide: Handle[Adaptor3dHCurve];
                               evol: Handle[LawFunction]): BRepBlendRstRstEvolRad {.
    cdecl, constructor, importcpp: "BRepBlend_RstRstEvolRad(@)", dynlib: tkfillet.}
proc nbVariables*(this: BRepBlendRstRstEvolRad): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkfillet.}
proc nbEquations*(this: BRepBlendRstRstEvolRad): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkfillet.}
proc value*(this: var BRepBlendRstRstEvolRad; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", dynlib: tkfillet.}
proc derivatives*(this: var BRepBlendRstRstEvolRad; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkfillet.}
proc values*(this: var BRepBlendRstRstEvolRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkfillet.}
proc set*(this: var BRepBlendRstRstEvolRad; surfRef1: Handle[Adaptor3dHSurface];
         rstRef1: Handle[Adaptor2dHCurve2d]; surfRef2: Handle[Adaptor3dHSurface];
         rstRef2: Handle[Adaptor2dHCurve2d]) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BRepBlendRstRstEvolRad; param: cfloat) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BRepBlendRstRstEvolRad; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc getTolerance*(this: BRepBlendRstRstEvolRad; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "GetTolerance",
                               dynlib: tkfillet.}
proc getBounds*(this: BRepBlendRstRstEvolRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", dynlib: tkfillet.}
proc isSolution*(this: var BRepBlendRstRstEvolRad; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", dynlib: tkfillet.}
proc getMinimalDistance*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", dynlib: tkfillet.}
proc pointOnRst1*(this: BRepBlendRstRstEvolRad): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnRst1", dynlib: tkfillet.}
proc pointOnRst2*(this: BRepBlendRstRstEvolRad): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnRst2", dynlib: tkfillet.}
proc pnt2dOnRst1*(this: BRepBlendRstRstEvolRad): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst1", dynlib: tkfillet.}
proc pnt2dOnRst2*(this: BRepBlendRstRstEvolRad): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst2", dynlib: tkfillet.}
proc parameterOnRst1*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst1", dynlib: tkfillet.}
proc parameterOnRst2*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst2", dynlib: tkfillet.}
proc isTangencyPoint*(this: BRepBlendRstRstEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", dynlib: tkfillet.}
proc tangentOnRst1*(this: BRepBlendRstRstEvolRad): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnRst1", dynlib: tkfillet.}
proc tangent2dOnRst1*(this: BRepBlendRstRstEvolRad): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst1", dynlib: tkfillet.}
proc tangentOnRst2*(this: BRepBlendRstRstEvolRad): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnRst2", dynlib: tkfillet.}
proc tangent2dOnRst2*(this: BRepBlendRstRstEvolRad): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst2", dynlib: tkfillet.}
proc decroch*(this: BRepBlendRstRstEvolRad; sol: MathVector; nRst1: var Vec;
             tgRst1: var Vec; nRst2: var Vec; tgRst2: var Vec): BlendDecrochStatus {.
    noSideEffect, cdecl, importcpp: "Decroch", dynlib: tkfillet.}
proc set*(this: var BRepBlendRstRstEvolRad; choix: cint) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BRepBlendRstRstEvolRad; typeSection: BlendFuncSectionShape) {.
    cdecl, importcpp: "Set", dynlib: tkfillet.}
proc centerCircleRst1Rst2*(this: BRepBlendRstRstEvolRad; ptRst1: Pnt; ptRst2: Pnt;
                          np: Vec; center: var Pnt; vdMed: var Vec): bool {.noSideEffect,
    cdecl, importcpp: "CenterCircleRst1Rst2", dynlib: tkfillet.}
proc section*(this: var BRepBlendRstRstEvolRad; param: cfloat; u: cfloat; v: cfloat;
             pdeb: var cfloat; pfin: var cfloat; c: var Circ) {.cdecl,
    importcpp: "Section", dynlib: tkfillet.}
proc isRational*(this: BRepBlendRstRstEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkfillet.}
proc getSectionSize*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", dynlib: tkfillet.}
proc getMinimalWeight*(this: BRepBlendRstRstEvolRad;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", dynlib: tkfillet.}
proc nbIntervals*(this: BRepBlendRstRstEvolRad; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkfillet.}
proc intervals*(this: BRepBlendRstRstEvolRad; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkfillet.}
proc getShape*(this: var BRepBlendRstRstEvolRad; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    dynlib: tkfillet.}
proc getTolerance*(this: BRepBlendRstRstEvolRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc knots*(this: var BRepBlendRstRstEvolRad; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", dynlib: tkfillet.}
proc mults*(this: var BRepBlendRstRstEvolRad; tMults: var TColStdArray1OfInteger) {.
    cdecl, importcpp: "Mults", dynlib: tkfillet.}
proc section*(this: var BRepBlendRstRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", dynlib: tkfillet.}
proc section*(this: var BRepBlendRstRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc section*(this: var BRepBlendRstRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc resolution*(this: BRepBlendRstRstEvolRad; iC2d: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkfillet.}