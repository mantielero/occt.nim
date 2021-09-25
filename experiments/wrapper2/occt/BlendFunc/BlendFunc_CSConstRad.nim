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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BlendFuncCSConstRad* {.importcpp: "BlendFunc_CSConstRad",
                        header: "BlendFunc_CSConstRad.hxx", bycopy.} = object of BlendCSFunction


proc constructBlendFuncCSConstRad*(s: Handle[Adaptor3dHSurface];
                                  c: Handle[Adaptor3dHCurve];
                                  cGuide: Handle[Adaptor3dHCurve]): BlendFuncCSConstRad {.
    constructor, importcpp: "BlendFunc_CSConstRad(@)",
    header: "BlendFunc_CSConstRad.hxx".}
proc nbEquations*(this: BlendFuncCSConstRad): int {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_CSConstRad.hxx".}
proc value*(this: var BlendFuncCSConstRad; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BlendFunc_CSConstRad.hxx".}
proc derivatives*(this: var BlendFuncCSConstRad; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BlendFunc_CSConstRad.hxx".}
proc values*(this: var BlendFuncCSConstRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "BlendFunc_CSConstRad.hxx".}
proc set*(this: var BlendFuncCSConstRad; param: float) {.importcpp: "Set",
    header: "BlendFunc_CSConstRad.hxx".}
proc set*(this: var BlendFuncCSConstRad; first: float; last: float) {.importcpp: "Set",
    header: "BlendFunc_CSConstRad.hxx".}
proc getTolerance*(this: BlendFuncCSConstRad; tolerance: var MathVector; tol: float) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_CSConstRad.hxx".}
proc getBounds*(this: BlendFuncCSConstRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_CSConstRad.hxx".}
proc isSolution*(this: var BlendFuncCSConstRad; sol: MathVector; tol: float): bool {.
    importcpp: "IsSolution", header: "BlendFunc_CSConstRad.hxx".}
proc pointOnS*(this: BlendFuncCSConstRad): Pnt {.noSideEffect, importcpp: "PointOnS",
    header: "BlendFunc_CSConstRad.hxx".}
proc pointOnC*(this: BlendFuncCSConstRad): Pnt {.noSideEffect, importcpp: "PointOnC",
    header: "BlendFunc_CSConstRad.hxx".}
proc pnt2d*(this: BlendFuncCSConstRad): Pnt2d {.noSideEffect, importcpp: "Pnt2d",
    header: "BlendFunc_CSConstRad.hxx".}
proc parameterOnC*(this: BlendFuncCSConstRad): float {.noSideEffect,
    importcpp: "ParameterOnC", header: "BlendFunc_CSConstRad.hxx".}
proc isTangencyPoint*(this: BlendFuncCSConstRad): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_CSConstRad.hxx".}
proc tangentOnS*(this: BlendFuncCSConstRad): Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "BlendFunc_CSConstRad.hxx".}
proc tangent2d*(this: BlendFuncCSConstRad): Vec2d {.noSideEffect,
    importcpp: "Tangent2d", header: "BlendFunc_CSConstRad.hxx".}
proc tangentOnC*(this: BlendFuncCSConstRad): Vec {.noSideEffect,
    importcpp: "TangentOnC", header: "BlendFunc_CSConstRad.hxx".}
proc tangent*(this: BlendFuncCSConstRad; u: float; v: float; tgS: var Vec; normS: var Vec) {.
    noSideEffect, importcpp: "Tangent", header: "BlendFunc_CSConstRad.hxx".}
proc set*(this: var BlendFuncCSConstRad; radius: float; choix: int) {.importcpp: "Set",
    header: "BlendFunc_CSConstRad.hxx".}
proc set*(this: var BlendFuncCSConstRad; typeSection: BlendFuncSectionShape) {.
    importcpp: "Set", header: "BlendFunc_CSConstRad.hxx".}
proc section*(this: var BlendFuncCSConstRad; param: float; u: float; v: float; w: float;
             pdeb: var float; pfin: var float; c: var Circ) {.importcpp: "Section",
    header: "BlendFunc_CSConstRad.hxx".}
proc section*(this: var BlendFuncCSConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.importcpp: "Section",
    header: "BlendFunc_CSConstRad.hxx".}
proc getSection*(this: var BlendFuncCSConstRad; param: float; u: float; v: float;
                w: float; tabP: var TColgpArray1OfPnt; tabV: var TColgpArray1OfVec): bool {.
    importcpp: "GetSection", header: "BlendFunc_CSConstRad.hxx".}
proc isRational*(this: BlendFuncCSConstRad): bool {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_CSConstRad.hxx".}
proc getSectionSize*(this: BlendFuncCSConstRad): float {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_CSConstRad.hxx".}
proc getMinimalWeight*(this: BlendFuncCSConstRad; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_CSConstRad.hxx".}
proc nbIntervals*(this: BlendFuncCSConstRad; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "BlendFunc_CSConstRad.hxx".}
proc intervals*(this: BlendFuncCSConstRad; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_CSConstRad.hxx".}
proc getShape*(this: var BlendFuncCSConstRad; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.importcpp: "GetShape",
    header: "BlendFunc_CSConstRad.hxx".}
proc getTolerance*(this: BlendFuncCSConstRad; boundTol: float; surfTol: float;
                  angleTol: float; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_CSConstRad.hxx".}
proc knots*(this: var BlendFuncCSConstRad; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_CSConstRad.hxx".}
proc mults*(this: var BlendFuncCSConstRad; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_CSConstRad.hxx".}
proc section*(this: var BlendFuncCSConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "BlendFunc_CSConstRad.hxx".}
proc section*(this: var BlendFuncCSConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "BlendFunc_CSConstRad.hxx".}
proc resolution*(this: BlendFuncCSConstRad; iC2d: int; tol: float; tolU: var float;
                tolV: var float) {.noSideEffect, importcpp: "Resolution",
                                header: "BlendFunc_CSConstRad.hxx".}
