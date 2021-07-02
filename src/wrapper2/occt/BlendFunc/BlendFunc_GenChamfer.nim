##  Created by: Julia GERASIMOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  BlendFuncGenChamfer* {.importcpp: "BlendFunc_GenChamfer",
                        header: "BlendFunc_GenChamfer.hxx", bycopy.} = object of BlendFunction


proc constructBlendFuncGenChamfer*(s1: Handle[Adaptor3dHSurface];
                                  s2: Handle[Adaptor3dHSurface];
                                  cg: Handle[Adaptor3dHCurve]): BlendFuncGenChamfer {.
    constructor, importcpp: "BlendFunc_GenChamfer(@)",
    header: "BlendFunc_GenChamfer.hxx".}
proc nbEquations*(this: BlendFuncGenChamfer): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_GenChamfer.hxx".}
proc values*(this: var BlendFuncGenChamfer; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BlendFunc_GenChamfer.hxx".}
proc set*(this: var BlendFuncGenChamfer; param: StandardReal) {.importcpp: "Set",
    header: "BlendFunc_GenChamfer.hxx".}
proc set*(this: var BlendFuncGenChamfer; first: StandardReal; last: StandardReal) {.
    importcpp: "Set", header: "BlendFunc_GenChamfer.hxx".}
proc getTolerance*(this: BlendFuncGenChamfer; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BlendFunc_GenChamfer.hxx".}
proc getBounds*(this: BlendFuncGenChamfer; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_GenChamfer.hxx".}
proc getMinimalDistance*(this: BlendFuncGenChamfer): StandardReal {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_GenChamfer.hxx".}
proc set*(this: var BlendFuncGenChamfer; dist1: StandardReal; dist2: StandardReal;
         choix: StandardInteger) {.importcpp: "Set",
                                 header: "BlendFunc_GenChamfer.hxx".}
proc isRational*(this: BlendFuncGenChamfer): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_GenChamfer.hxx".}
proc getMinimalWeight*(this: BlendFuncGenChamfer; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_GenChamfer.hxx".}
proc nbIntervals*(this: BlendFuncGenChamfer; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "BlendFunc_GenChamfer.hxx".}
proc intervals*(this: BlendFuncGenChamfer; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_GenChamfer.hxx".}
proc getShape*(this: var BlendFuncGenChamfer; nbPoles: var StandardInteger;
              nbKnots: var StandardInteger; degree: var StandardInteger;
              nbPoles2d: var StandardInteger) {.importcpp: "GetShape",
    header: "BlendFunc_GenChamfer.hxx".}
proc getTolerance*(this: BlendFuncGenChamfer; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var MathVector; tol1D: var MathVector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BlendFunc_GenChamfer.hxx".}
proc knots*(this: var BlendFuncGenChamfer; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_GenChamfer.hxx".}
proc mults*(this: var BlendFuncGenChamfer; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; param: StandardReal; u1: StandardReal;
             v1: StandardReal; u2: StandardReal; v2: StandardReal;
             pdeb: var StandardReal; pfin: var StandardReal; c: var GpLin) {.
    importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "BlendFunc_GenChamfer.hxx".}
proc resolution*(this: BlendFuncGenChamfer; iC2d: StandardInteger; tol: StandardReal;
                tolU: var StandardReal; tolV: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "BlendFunc_GenChamfer.hxx".}

