##  Created on: 1998-06-02
##  Created by: Philippe NOUAILLE
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of gp_Lin"
discard "forward decl of Blend_Point"
type
  BlendFuncChAsym* {.importcpp: "BlendFunc_ChAsym", header: "BlendFunc_ChAsym.hxx",
                    bycopy.} = object of BlendFunction


proc constructBlendFuncChAsym*(s1: Handle[Adaptor3dHSurface];
                              s2: Handle[Adaptor3dHSurface];
                              c: Handle[Adaptor3dHCurve]): BlendFuncChAsym {.
    constructor, importcpp: "BlendFunc_ChAsym(@)", header: "BlendFunc_ChAsym.hxx".}
proc nbEquations*(this: BlendFuncChAsym): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_ChAsym.hxx".}
proc set*(this: var BlendFuncChAsym; param: StandardReal) {.importcpp: "Set",
    header: "BlendFunc_ChAsym.hxx".}
proc set*(this: var BlendFuncChAsym; first: StandardReal; last: StandardReal) {.
    importcpp: "Set", header: "BlendFunc_ChAsym.hxx".}
proc getTolerance*(this: BlendFuncChAsym; tolerance: var MathVector; tol: StandardReal) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_ChAsym.hxx".}
proc getBounds*(this: BlendFuncChAsym; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_ChAsym.hxx".}
proc isSolution*(this: var BlendFuncChAsym; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "BlendFunc_ChAsym.hxx".}
proc getMinimalDistance*(this: BlendFuncChAsym): StandardReal {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_ChAsym.hxx".}
proc computeValues*(this: var BlendFuncChAsym; x: MathVector; degF: StandardInteger;
                   degL: StandardInteger): StandardBoolean {.
    importcpp: "ComputeValues", header: "BlendFunc_ChAsym.hxx".}
proc value*(this: var BlendFuncChAsym; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BlendFunc_ChAsym.hxx".}
proc derivatives*(this: var BlendFuncChAsym; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BlendFunc_ChAsym.hxx".}
proc values*(this: var BlendFuncChAsym; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BlendFunc_ChAsym.hxx".}
proc pointOnS1*(this: BlendFuncChAsym): GpPnt {.noSideEffect, importcpp: "PointOnS1",
    header: "BlendFunc_ChAsym.hxx".}
proc pointOnS2*(this: BlendFuncChAsym): GpPnt {.noSideEffect, importcpp: "PointOnS2",
    header: "BlendFunc_ChAsym.hxx".}
proc isTangencyPoint*(this: BlendFuncChAsym): StandardBoolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_ChAsym.hxx".}
proc tangentOnS1*(this: BlendFuncChAsym): GpVec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_ChAsym.hxx".}
proc tangent2dOnS1*(this: BlendFuncChAsym): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_ChAsym.hxx".}
proc tangentOnS2*(this: BlendFuncChAsym): GpVec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_ChAsym.hxx".}
proc tangent2dOnS2*(this: BlendFuncChAsym): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_ChAsym.hxx".}
proc twistOnS1*(this: BlendFuncChAsym): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS1", header: "BlendFunc_ChAsym.hxx".}
proc twistOnS2*(this: BlendFuncChAsym): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS2", header: "BlendFunc_ChAsym.hxx".}
proc tangent*(this: BlendFuncChAsym; u1: StandardReal; v1: StandardReal;
             u2: StandardReal; v2: StandardReal; tgFirst: var GpVec; tgLast: var GpVec;
             normFirst: var GpVec; normLast: var GpVec) {.noSideEffect,
    importcpp: "Tangent", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; param: StandardReal; u1: StandardReal;
             v1: StandardReal; u2: StandardReal; v2: StandardReal;
             pdeb: var StandardReal; pfin: var StandardReal; c: var GpLin) {.
    importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc isRational*(this: BlendFuncChAsym): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_ChAsym.hxx".}
proc getSectionSize*(this: BlendFuncChAsym): StandardReal {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_ChAsym.hxx".}
proc getMinimalWeight*(this: BlendFuncChAsym; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_ChAsym.hxx".}
proc nbIntervals*(this: BlendFuncChAsym; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_ChAsym.hxx".}
proc intervals*(this: BlendFuncChAsym; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_ChAsym.hxx".}
proc getShape*(this: var BlendFuncChAsym; nbPoles: var StandardInteger;
              nbKnots: var StandardInteger; degree: var StandardInteger;
              nbPoles2d: var StandardInteger) {.importcpp: "GetShape",
    header: "BlendFunc_ChAsym.hxx".}
proc getTolerance*(this: BlendFuncChAsym; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var MathVector; tol1D: var MathVector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_ChAsym.hxx".}
proc knots*(this: var BlendFuncChAsym; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_ChAsym.hxx".}
proc mults*(this: var BlendFuncChAsym; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc resolution*(this: BlendFuncChAsym; iC2d: StandardInteger; tol: StandardReal;
                tolU: var StandardReal; tolV: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "BlendFunc_ChAsym.hxx".}
proc set*(this: var BlendFuncChAsym; dist1: StandardReal; angle: StandardReal;
         choix: StandardInteger) {.importcpp: "Set", header: "BlendFunc_ChAsym.hxx".}

