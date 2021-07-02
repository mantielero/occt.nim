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
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
discard "forward decl of gp_Ax1"
type
  BlendFuncConstRad* {.importcpp: "BlendFunc_ConstRad",
                      header: "BlendFunc_ConstRad.hxx", bycopy.} = object of BlendFunction


proc constructBlendFuncConstRad*(s1: Handle[Adaptor3dHSurface];
                                s2: Handle[Adaptor3dHSurface];
                                c: Handle[Adaptor3dHCurve]): BlendFuncConstRad {.
    constructor, importcpp: "BlendFunc_ConstRad(@)",
    header: "BlendFunc_ConstRad.hxx".}
proc nbEquations*(this: BlendFuncConstRad): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_ConstRad.hxx".}
proc value*(this: var BlendFuncConstRad; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BlendFunc_ConstRad.hxx".}
proc derivatives*(this: var BlendFuncConstRad; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BlendFunc_ConstRad.hxx".}
proc values*(this: var BlendFuncConstRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BlendFunc_ConstRad.hxx".}
proc set*(this: var BlendFuncConstRad; param: StandardReal) {.importcpp: "Set",
    header: "BlendFunc_ConstRad.hxx".}
proc set*(this: var BlendFuncConstRad; first: StandardReal; last: StandardReal) {.
    importcpp: "Set", header: "BlendFunc_ConstRad.hxx".}
proc getTolerance*(this: BlendFuncConstRad; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BlendFunc_ConstRad.hxx".}
proc getBounds*(this: BlendFuncConstRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_ConstRad.hxx".}
proc isSolution*(this: var BlendFuncConstRad; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "BlendFunc_ConstRad.hxx".}
proc getMinimalDistance*(this: BlendFuncConstRad): StandardReal {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_ConstRad.hxx".}
proc pointOnS1*(this: BlendFuncConstRad): GpPnt {.noSideEffect,
    importcpp: "PointOnS1", header: "BlendFunc_ConstRad.hxx".}
proc pointOnS2*(this: BlendFuncConstRad): GpPnt {.noSideEffect,
    importcpp: "PointOnS2", header: "BlendFunc_ConstRad.hxx".}
proc isTangencyPoint*(this: BlendFuncConstRad): StandardBoolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_ConstRad.hxx".}
proc tangentOnS1*(this: BlendFuncConstRad): GpVec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_ConstRad.hxx".}
proc tangent2dOnS1*(this: BlendFuncConstRad): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_ConstRad.hxx".}
proc tangentOnS2*(this: BlendFuncConstRad): GpVec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_ConstRad.hxx".}
proc tangent2dOnS2*(this: BlendFuncConstRad): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_ConstRad.hxx".}
proc tangent*(this: BlendFuncConstRad; u1: StandardReal; v1: StandardReal;
             u2: StandardReal; v2: StandardReal; tgFirst: var GpVec; tgLast: var GpVec;
             normFirst: var GpVec; normLast: var GpVec) {.noSideEffect,
    importcpp: "Tangent", header: "BlendFunc_ConstRad.hxx".}
proc twistOnS1*(this: BlendFuncConstRad): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS1", header: "BlendFunc_ConstRad.hxx".}
proc twistOnS2*(this: BlendFuncConstRad): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS2", header: "BlendFunc_ConstRad.hxx".}
proc set*(this: var BlendFuncConstRad; radius: StandardReal; choix: StandardInteger) {.
    importcpp: "Set", header: "BlendFunc_ConstRad.hxx".}
proc set*(this: var BlendFuncConstRad; typeSection: BlendFuncSectionShape) {.
    importcpp: "Set", header: "BlendFunc_ConstRad.hxx".}
proc section*(this: var BlendFuncConstRad; param: StandardReal; u1: StandardReal;
             v1: StandardReal; u2: StandardReal; v2: StandardReal;
             pdeb: var StandardReal; pfin: var StandardReal; c: var GpCirc) {.
    importcpp: "Section", header: "BlendFunc_ConstRad.hxx".}
proc isRational*(this: BlendFuncConstRad): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_ConstRad.hxx".}
proc getSectionSize*(this: BlendFuncConstRad): StandardReal {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_ConstRad.hxx".}
proc getMinimalWeight*(this: BlendFuncConstRad; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_ConstRad.hxx".}
proc nbIntervals*(this: BlendFuncConstRad; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_ConstRad.hxx".}
proc intervals*(this: BlendFuncConstRad; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_ConstRad.hxx".}
proc getShape*(this: var BlendFuncConstRad; nbPoles: var StandardInteger;
              nbKnots: var StandardInteger; degree: var StandardInteger;
              nbPoles2d: var StandardInteger) {.importcpp: "GetShape",
    header: "BlendFunc_ConstRad.hxx".}
proc getTolerance*(this: BlendFuncConstRad; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var MathVector; tol1D: var MathVector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_ConstRad.hxx".}
proc knots*(this: var BlendFuncConstRad; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_ConstRad.hxx".}
proc mults*(this: var BlendFuncConstRad; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_ConstRad.hxx".}
proc section*(this: var BlendFuncConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_ConstRad.hxx".}
proc section*(this: var BlendFuncConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_ConstRad.hxx".}
proc section*(this: var BlendFuncConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "BlendFunc_ConstRad.hxx".}
proc axeRot*(this: var BlendFuncConstRad; prm: StandardReal): GpAx1 {.
    importcpp: "AxeRot", header: "BlendFunc_ConstRad.hxx".}
proc resolution*(this: BlendFuncConstRad; iC2d: StandardInteger; tol: StandardReal;
                tolU: var StandardReal; tolV: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "BlendFunc_ConstRad.hxx".}

