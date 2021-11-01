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


proc newBlendFuncGenChamfer*(s1: Handle[Adaptor3dHSurface];
                            s2: Handle[Adaptor3dHSurface];
                            cg: Handle[Adaptor3dHCurve]): BlendFuncGenChamfer {.
    cdecl, constructor, importcpp: "BlendFunc_GenChamfer(@)", dynlib: tkfillet.}
proc nbEquations*(this: BlendFuncGenChamfer): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkfillet.}
proc values*(this: var BlendFuncGenChamfer; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkfillet.}
proc set*(this: var BlendFuncGenChamfer; param: cfloat) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BlendFuncGenChamfer; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc getTolerance*(this: BlendFuncGenChamfer; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc getBounds*(this: BlendFuncGenChamfer; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", dynlib: tkfillet.}
proc getMinimalDistance*(this: BlendFuncGenChamfer): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", dynlib: tkfillet.}
proc set*(this: var BlendFuncGenChamfer; dist1: cfloat; dist2: cfloat; choix: cint) {.
    cdecl, importcpp: "Set", dynlib: tkfillet.}
proc isRational*(this: BlendFuncGenChamfer): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkfillet.}
proc getMinimalWeight*(this: BlendFuncGenChamfer; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", dynlib: tkfillet.}
proc nbIntervals*(this: BlendFuncGenChamfer; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkfillet.}
proc intervals*(this: BlendFuncGenChamfer; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkfillet.}
proc getShape*(this: var BlendFuncGenChamfer; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    dynlib: tkfillet.}
proc getTolerance*(this: BlendFuncGenChamfer; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc knots*(this: var BlendFuncGenChamfer; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", dynlib: tkfillet.}
proc mults*(this: var BlendFuncGenChamfer; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", dynlib: tkfillet.}
proc section*(this: var BlendFuncGenChamfer; param: cfloat; u1: cfloat; v1: cfloat;
             u2: cfloat; v2: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var Lin) {.cdecl,
    importcpp: "Section", dynlib: tkfillet.}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", dynlib: tkfillet.}
proc section*(this: var BlendFuncGenChamfer; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc resolution*(this: BlendFuncGenChamfer; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 dynlib: tkfillet.}