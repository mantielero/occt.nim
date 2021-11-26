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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BlendFuncEvolRad* {.importcpp: "BlendFunc_EvolRad",
                     header: "BlendFunc_EvolRad.hxx", bycopy.} = object of BlendFunction


proc newBlendFuncEvolRad*(s1: Handle[Adaptor3dHSurface];
                         s2: Handle[Adaptor3dHSurface];
                         c: Handle[Adaptor3dHCurve]; law: Handle[LawFunction]): BlendFuncEvolRad {.
    cdecl, constructor, importcpp: "BlendFunc_EvolRad(@)", dynlib: tkfillet.}
proc nbEquations*(this: BlendFuncEvolRad): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkfillet.}
proc value*(this: var BlendFuncEvolRad; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", dynlib: tkfillet.}
proc derivatives*(this: var BlendFuncEvolRad; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkfillet.}
proc values*(this: var BlendFuncEvolRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkfillet.}
proc set*(this: var BlendFuncEvolRad; param: cfloat) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BlendFuncEvolRad; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc getTolerance*(this: BlendFuncEvolRad; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc getBounds*(this: BlendFuncEvolRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", dynlib: tkfillet.}
proc isSolution*(this: var BlendFuncEvolRad; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", dynlib: tkfillet.}
proc getMinimalDistance*(this: BlendFuncEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", dynlib: tkfillet.}
proc pointOnS1*(this: BlendFuncEvolRad): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS1", dynlib: tkfillet.}
proc pointOnS2*(this: BlendFuncEvolRad): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS2", dynlib: tkfillet.}
proc isTangencyPoint*(this: BlendFuncEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", dynlib: tkfillet.}
proc tangentOnS1*(this: BlendFuncEvolRad): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS1", dynlib: tkfillet.}
proc tangent2dOnS1*(this: BlendFuncEvolRad): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", dynlib: tkfillet.}
proc tangentOnS2*(this: BlendFuncEvolRad): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS2", dynlib: tkfillet.}
proc tangent2dOnS2*(this: BlendFuncEvolRad): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", dynlib: tkfillet.}
proc tangent*(this: BlendFuncEvolRad; u1: cfloat; v1: cfloat; u2: cfloat; v2: cfloat;
             tgFirst: var Vec; tgLast: var Vec; normFirst: var Vec; normLast: var Vec) {.
    noSideEffect, cdecl, importcpp: "Tangent", dynlib: tkfillet.}
proc twistOnS1*(this: BlendFuncEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS1", dynlib: tkfillet.}
proc twistOnS2*(this: BlendFuncEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS2", dynlib: tkfillet.}
proc set*(this: var BlendFuncEvolRad; choix: cint) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BlendFuncEvolRad; typeSection: BlendFuncSectionShape) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc section*(this: var BlendFuncEvolRad; param: cfloat; u1: cfloat; v1: cfloat;
             u2: cfloat; v2: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var Circ) {.
    cdecl, importcpp: "Section", dynlib: tkfillet.}
proc isRational*(this: BlendFuncEvolRad): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkfillet.}
proc getSectionSize*(this: BlendFuncEvolRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", dynlib: tkfillet.}
proc getMinimalWeight*(this: BlendFuncEvolRad; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", dynlib: tkfillet.}
proc nbIntervals*(this: BlendFuncEvolRad; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", dynlib: tkfillet.}
proc intervals*(this: BlendFuncEvolRad; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkfillet.}
proc getShape*(this: var BlendFuncEvolRad; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    dynlib: tkfillet.}
proc getTolerance*(this: BlendFuncEvolRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc knots*(this: var BlendFuncEvolRad; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", dynlib: tkfillet.}
proc mults*(this: var BlendFuncEvolRad; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", dynlib: tkfillet.}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", dynlib: tkfillet.}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Section", dynlib: tkfillet.}
proc resolution*(this: BlendFuncEvolRad; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 dynlib: tkfillet.}