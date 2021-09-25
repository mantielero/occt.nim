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


proc constructBlendFuncEvolRad*(s1: Handle[Adaptor3dHSurface];
                               s2: Handle[Adaptor3dHSurface];
                               c: Handle[Adaptor3dHCurve];
                               law: Handle[LawFunction]): BlendFuncEvolRad {.
    constructor, importcpp: "BlendFunc_EvolRad(@)", header: "BlendFunc_EvolRad.hxx".}
proc nbEquations*(this: BlendFuncEvolRad): int {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_EvolRad.hxx".}
proc value*(this: var BlendFuncEvolRad; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BlendFunc_EvolRad.hxx".}
proc derivatives*(this: var BlendFuncEvolRad; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BlendFunc_EvolRad.hxx".}
proc values*(this: var BlendFuncEvolRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; param: float) {.importcpp: "Set",
    header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; first: float; last: float) {.importcpp: "Set",
    header: "BlendFunc_EvolRad.hxx".}
proc getTolerance*(this: BlendFuncEvolRad; tolerance: var MathVector; tol: float) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_EvolRad.hxx".}
proc getBounds*(this: BlendFuncEvolRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_EvolRad.hxx".}
proc isSolution*(this: var BlendFuncEvolRad; sol: MathVector; tol: float): bool {.
    importcpp: "IsSolution", header: "BlendFunc_EvolRad.hxx".}
proc getMinimalDistance*(this: BlendFuncEvolRad): float {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_EvolRad.hxx".}
proc pointOnS1*(this: BlendFuncEvolRad): Pnt {.noSideEffect, importcpp: "PointOnS1",
    header: "BlendFunc_EvolRad.hxx".}
proc pointOnS2*(this: BlendFuncEvolRad): Pnt {.noSideEffect, importcpp: "PointOnS2",
    header: "BlendFunc_EvolRad.hxx".}
proc isTangencyPoint*(this: BlendFuncEvolRad): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_EvolRad.hxx".}
proc tangentOnS1*(this: BlendFuncEvolRad): Vec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_EvolRad.hxx".}
proc tangent2dOnS1*(this: BlendFuncEvolRad): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_EvolRad.hxx".}
proc tangentOnS2*(this: BlendFuncEvolRad): Vec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_EvolRad.hxx".}
proc tangent2dOnS2*(this: BlendFuncEvolRad): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_EvolRad.hxx".}
proc tangent*(this: BlendFuncEvolRad; u1: float; v1: float; u2: float; v2: float;
             tgFirst: var Vec; tgLast: var Vec; normFirst: var Vec; normLast: var Vec) {.
    noSideEffect, importcpp: "Tangent", header: "BlendFunc_EvolRad.hxx".}
proc twistOnS1*(this: BlendFuncEvolRad): bool {.noSideEffect, importcpp: "TwistOnS1",
    header: "BlendFunc_EvolRad.hxx".}
proc twistOnS2*(this: BlendFuncEvolRad): bool {.noSideEffect, importcpp: "TwistOnS2",
    header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; choix: int) {.importcpp: "Set",
    header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; typeSection: BlendFuncSectionShape) {.
    importcpp: "Set", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; param: float; u1: float; v1: float; u2: float;
             v2: float; pdeb: var float; pfin: var float; c: var Circ) {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc isRational*(this: BlendFuncEvolRad): bool {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_EvolRad.hxx".}
proc getSectionSize*(this: BlendFuncEvolRad): float {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_EvolRad.hxx".}
proc getMinimalWeight*(this: BlendFuncEvolRad; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_EvolRad.hxx".}
proc nbIntervals*(this: BlendFuncEvolRad; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "BlendFunc_EvolRad.hxx".}
proc intervals*(this: BlendFuncEvolRad; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_EvolRad.hxx".}
proc getShape*(this: var BlendFuncEvolRad; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.importcpp: "GetShape",
    header: "BlendFunc_EvolRad.hxx".}
proc getTolerance*(this: BlendFuncEvolRad; boundTol: float; surfTol: float;
                  angleTol: float; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_EvolRad.hxx".}
proc knots*(this: var BlendFuncEvolRad; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_EvolRad.hxx".}
proc mults*(this: var BlendFuncEvolRad; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.importcpp: "Section",
    header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc resolution*(this: BlendFuncEvolRad; iC2d: int; tol: float; tolU: var float;
                tolV: var float) {.noSideEffect, importcpp: "Resolution",
                                header: "BlendFunc_EvolRad.hxx".}
