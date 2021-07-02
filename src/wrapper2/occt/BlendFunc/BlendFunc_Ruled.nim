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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"
discard "forward decl of gp_Ax1"
type
  BlendFuncRuled* {.importcpp: "BlendFunc_Ruled", header: "BlendFunc_Ruled.hxx",
                   bycopy.} = object of BlendFunction


proc constructBlendFuncRuled*(s1: Handle[Adaptor3dHSurface];
                             s2: Handle[Adaptor3dHSurface];
                             c: Handle[Adaptor3dHCurve]): BlendFuncRuled {.
    constructor, importcpp: "BlendFunc_Ruled(@)", header: "BlendFunc_Ruled.hxx".}
proc nbEquations*(this: BlendFuncRuled): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_Ruled.hxx".}
proc value*(this: var BlendFuncRuled; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BlendFunc_Ruled.hxx".}
proc derivatives*(this: var BlendFuncRuled; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BlendFunc_Ruled.hxx".}
proc values*(this: var BlendFuncRuled; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BlendFunc_Ruled.hxx".}
proc set*(this: var BlendFuncRuled; param: StandardReal) {.importcpp: "Set",
    header: "BlendFunc_Ruled.hxx".}
proc set*(this: var BlendFuncRuled; first: StandardReal; last: StandardReal) {.
    importcpp: "Set", header: "BlendFunc_Ruled.hxx".}
proc getTolerance*(this: BlendFuncRuled; tolerance: var MathVector; tol: StandardReal) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_Ruled.hxx".}
proc getBounds*(this: BlendFuncRuled; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_Ruled.hxx".}
proc isSolution*(this: var BlendFuncRuled; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "BlendFunc_Ruled.hxx".}
proc getMinimalDistance*(this: BlendFuncRuled): StandardReal {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_Ruled.hxx".}
proc pointOnS1*(this: BlendFuncRuled): GpPnt {.noSideEffect, importcpp: "PointOnS1",
    header: "BlendFunc_Ruled.hxx".}
proc pointOnS2*(this: BlendFuncRuled): GpPnt {.noSideEffect, importcpp: "PointOnS2",
    header: "BlendFunc_Ruled.hxx".}
proc isTangencyPoint*(this: BlendFuncRuled): StandardBoolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_Ruled.hxx".}
proc tangentOnS1*(this: BlendFuncRuled): GpVec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_Ruled.hxx".}
proc tangent2dOnS1*(this: BlendFuncRuled): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_Ruled.hxx".}
proc tangentOnS2*(this: BlendFuncRuled): GpVec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_Ruled.hxx".}
proc tangent2dOnS2*(this: BlendFuncRuled): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_Ruled.hxx".}
proc tangent*(this: BlendFuncRuled; u1: StandardReal; v1: StandardReal;
             u2: StandardReal; v2: StandardReal; tgFirst: var GpVec; tgLast: var GpVec;
             normFirst: var GpVec; normLast: var GpVec) {.noSideEffect,
    importcpp: "Tangent", header: "BlendFunc_Ruled.hxx".}
proc getSection*(this: var BlendFuncRuled; param: StandardReal; u1: StandardReal;
                v1: StandardReal; u2: StandardReal; v2: StandardReal;
                tabP: var TColgpArray1OfPnt; tabV: var TColgpArray1OfVec): StandardBoolean {.
    importcpp: "GetSection", header: "BlendFunc_Ruled.hxx".}
proc isRational*(this: BlendFuncRuled): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_Ruled.hxx".}
proc getSectionSize*(this: BlendFuncRuled): StandardReal {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_Ruled.hxx".}
proc getMinimalWeight*(this: BlendFuncRuled; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_Ruled.hxx".}
proc nbIntervals*(this: BlendFuncRuled; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_Ruled.hxx".}
proc intervals*(this: BlendFuncRuled; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_Ruled.hxx".}
proc getShape*(this: var BlendFuncRuled; nbPoles: var StandardInteger;
              nbKnots: var StandardInteger; degree: var StandardInteger;
              nbPoles2d: var StandardInteger) {.importcpp: "GetShape",
    header: "BlendFunc_Ruled.hxx".}
proc getTolerance*(this: BlendFuncRuled; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var MathVector; tol1D: var MathVector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_Ruled.hxx".}
proc knots*(this: var BlendFuncRuled; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_Ruled.hxx".}
proc mults*(this: var BlendFuncRuled; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_Ruled.hxx".}
proc section*(this: var BlendFuncRuled; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_Ruled.hxx".}
proc section*(this: var BlendFuncRuled; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_Ruled.hxx".}
proc section*(this: var BlendFuncRuled; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    importcpp: "Section", header: "BlendFunc_Ruled.hxx".}
proc axeRot*(this: var BlendFuncRuled; prm: StandardReal): GpAx1 {.importcpp: "AxeRot",
    header: "BlendFunc_Ruled.hxx".}
proc resolution*(this: BlendFuncRuled; iC2d: StandardInteger; tol: StandardReal;
                tolU: var StandardReal; tolV: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "BlendFunc_Ruled.hxx".}

