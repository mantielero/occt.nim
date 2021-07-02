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
proc nbEquations*(this: BlendFuncEvolRad): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_EvolRad.hxx".}
proc value*(this: var BlendFuncEvolRad; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BlendFunc_EvolRad.hxx".}
proc derivatives*(this: var BlendFuncEvolRad; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BlendFunc_EvolRad.hxx".}
proc values*(this: var BlendFuncEvolRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; param: StandardReal) {.importcpp: "Set",
    header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; first: StandardReal; last: StandardReal) {.
    importcpp: "Set", header: "BlendFunc_EvolRad.hxx".}
proc getTolerance*(this: BlendFuncEvolRad; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BlendFunc_EvolRad.hxx".}
proc getBounds*(this: BlendFuncEvolRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_EvolRad.hxx".}
proc isSolution*(this: var BlendFuncEvolRad; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "BlendFunc_EvolRad.hxx".}
proc getMinimalDistance*(this: BlendFuncEvolRad): StandardReal {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_EvolRad.hxx".}
proc pointOnS1*(this: BlendFuncEvolRad): GpPnt {.noSideEffect,
    importcpp: "PointOnS1", header: "BlendFunc_EvolRad.hxx".}
proc pointOnS2*(this: BlendFuncEvolRad): GpPnt {.noSideEffect,
    importcpp: "PointOnS2", header: "BlendFunc_EvolRad.hxx".}
proc isTangencyPoint*(this: BlendFuncEvolRad): StandardBoolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_EvolRad.hxx".}
proc tangentOnS1*(this: BlendFuncEvolRad): GpVec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_EvolRad.hxx".}
proc tangent2dOnS1*(this: BlendFuncEvolRad): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_EvolRad.hxx".}
proc tangentOnS2*(this: BlendFuncEvolRad): GpVec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_EvolRad.hxx".}
proc tangent2dOnS2*(this: BlendFuncEvolRad): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_EvolRad.hxx".}
proc tangent*(this: BlendFuncEvolRad; u1: StandardReal; v1: StandardReal;
             u2: StandardReal; v2: StandardReal; tgFirst: var GpVec; tgLast: var GpVec;
             normFirst: var GpVec; normLast: var GpVec) {.noSideEffect,
    importcpp: "Tangent", header: "BlendFunc_EvolRad.hxx".}
proc twistOnS1*(this: BlendFuncEvolRad): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS1", header: "BlendFunc_EvolRad.hxx".}
proc twistOnS2*(this: BlendFuncEvolRad): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS2", header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; choix: StandardInteger) {.importcpp: "Set",
    header: "BlendFunc_EvolRad.hxx".}
proc set*(this: var BlendFuncEvolRad; typeSection: BlendFuncSectionShape) {.
    importcpp: "Set", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; param: StandardReal; u1: StandardReal;
             v1: StandardReal; u2: StandardReal; v2: StandardReal;
             pdeb: var StandardReal; pfin: var StandardReal; c: var GpCirc) {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc isRational*(this: BlendFuncEvolRad): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_EvolRad.hxx".}
proc getSectionSize*(this: BlendFuncEvolRad): StandardReal {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_EvolRad.hxx".}
proc getMinimalWeight*(this: BlendFuncEvolRad; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_EvolRad.hxx".}
proc nbIntervals*(this: BlendFuncEvolRad; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_EvolRad.hxx".}
proc intervals*(this: BlendFuncEvolRad; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_EvolRad.hxx".}
proc getShape*(this: var BlendFuncEvolRad; nbPoles: var StandardInteger;
              nbKnots: var StandardInteger; degree: var StandardInteger;
              nbPoles2d: var StandardInteger) {.importcpp: "GetShape",
    header: "BlendFunc_EvolRad.hxx".}
proc getTolerance*(this: BlendFuncEvolRad; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var MathVector; tol1D: var MathVector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_EvolRad.hxx".}
proc knots*(this: var BlendFuncEvolRad; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_EvolRad.hxx".}
proc mults*(this: var BlendFuncEvolRad; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc section*(this: var BlendFuncEvolRad; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    importcpp: "Section", header: "BlendFunc_EvolRad.hxx".}
proc resolution*(this: BlendFuncEvolRad; iC2d: StandardInteger; tol: StandardReal;
                tolU: var StandardReal; tolV: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "BlendFunc_EvolRad.hxx".}

