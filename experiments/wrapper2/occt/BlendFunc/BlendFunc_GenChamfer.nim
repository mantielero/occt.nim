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
proc nbEquations*(this: BlendFuncGenChamfer): int {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_GenChamfer.hxx".}
proc values*(this: var BlendFuncGenChamfer; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "BlendFunc_GenChamfer.hxx".}
proc set*(this: var BlendFuncGenChamfer; param: float) {.importcpp: "Set",
    header: "BlendFunc_GenChamfer.hxx".}
proc set*(this: var BlendFuncGenChamfer; first: float; last: float) {.importcpp: "Set",
    header: "BlendFunc_GenChamfer.hxx".}
proc getTolerance*(this: BlendFuncGenChamfer; tolerance: var MathVector; tol: float) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_GenChamfer.hxx".}
proc getBounds*(this: BlendFuncGenChamfer; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_GenChamfer.hxx".}
proc getMinimalDistance*(this: BlendFuncGenChamfer): float {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_GenChamfer.hxx".}
proc set*(this: var BlendFuncGenChamfer; dist1: float; dist2: float; choix: int) {.
    importcpp: "Set", header: "BlendFunc_GenChamfer.hxx".}
proc isRational*(this: BlendFuncGenChamfer): bool {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_GenChamfer.hxx".}
proc getMinimalWeight*(this: BlendFuncGenChamfer; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_GenChamfer.hxx".}
proc nbIntervals*(this: BlendFuncGenChamfer; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "BlendFunc_GenChamfer.hxx".}
proc intervals*(this: BlendFuncGenChamfer; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_GenChamfer.hxx".}
proc getShape*(this: var BlendFuncGenChamfer; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.importcpp: "GetShape",
    header: "BlendFunc_GenChamfer.hxx".}
proc getTolerance*(this: BlendFuncGenChamfer; boundTol: float; surfTol: float;
                  angleTol: float; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_GenChamfer.hxx".}
proc knots*(this: var BlendFuncGenChamfer; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_GenChamfer.hxx".}
proc mults*(this: var BlendFuncGenChamfer; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; param: float; u1: float; v1: float;
             u2: float; v2: float; pdeb: var float; pfin: var float; c: var Lin) {.
    importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.importcpp: "Section",
    header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "BlendFunc_GenChamfer.hxx".}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "BlendFunc_GenChamfer.hxx".}
proc resolution*(this: BlendFuncGenChamfer; iC2d: int; tol: float; tolU: var float;
                tolV: var float) {.noSideEffect, importcpp: "Resolution",
                                header: "BlendFunc_GenChamfer.hxx".}
