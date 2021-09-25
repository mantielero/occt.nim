##  Created on: 1995-01-04
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BlendFuncCSCircular* {.importcpp: "BlendFunc_CSCircular",
                        header: "BlendFunc_CSCircular.hxx", bycopy.} = object of BlendCSFunction ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## function
                                                                                          ## for
                                                                                          ## a
                                                                                          ## circular
                                                                                          ## blending
                                                                                          ## between
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## curve
                                                                                          ## <C>
                                                                                          ## and
                                                                                          ## a
                                                                                          ## surface
                                                                                          ## <S>.
                                                                                          ## The
                                                                                          ## direction
                                                                                          ## of
                                                                                          ##
                                                                                          ## !
                                                                                          ## the
                                                                                          ## planes
                                                                                          ## are
                                                                                          ## given
                                                                                          ## by
                                                                                          ## <CGuide>.
                                                                                          ## The
                                                                                          ## position
                                                                                          ## of
                                                                                          ##
                                                                                          ## !
                                                                                          ## the
                                                                                          ## plane
                                                                                          ## is
                                                                                          ## determined
                                                                                          ## on
                                                                                          ## the
                                                                                          ## curve
                                                                                          ## <C>.
                                                                                          ## <L>
                                                                                          ##
                                                                                          ## !
                                                                                          ## defines
                                                                                          ## the
                                                                                          ## change
                                                                                          ## of
                                                                                          ## parameter
                                                                                          ## between
                                                                                          ## <C>
                                                                                          ## and
                                                                                          ##
                                                                                          ## !
                                                                                          ## <CGuide>.
                                                                                          ## So,
                                                                                          ## the
                                                                                          ## planes
                                                                                          ## are
                                                                                          ## defined
                                                                                          ## as
                                                                                          ## described
                                                                                          ##
                                                                                          ## !
                                                                                          ## below
                                                                                          ## :
                                                                                          ##
                                                                                          ## !
                                                                                          ## t
                                                                                          ## is
                                                                                          ## the
                                                                                          ## current
                                                                                          ## parameter
                                                                                          ## on
                                                                                          ## the
                                                                                          ## guide
                                                                                          ## line.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Pguide
                                                                                          ## =
                                                                                          ## C(L(t));
                                                                                          ## Nguide
                                                                                          ## =
                                                                                          ## CGuide'(t)/||CGuide'(t)||


proc constructBlendFuncCSCircular*(s: Handle[Adaptor3dHSurface];
                                  c: Handle[Adaptor3dHCurve];
                                  cGuide: Handle[Adaptor3dHCurve];
                                  L: Handle[LawFunction]): BlendFuncCSCircular {.
    constructor, importcpp: "BlendFunc_CSCircular(@)",
    header: "BlendFunc_CSCircular.hxx".}
proc nbVariables*(this: BlendFuncCSCircular): int {.noSideEffect,
    importcpp: "NbVariables", header: "BlendFunc_CSCircular.hxx".}
proc nbEquations*(this: BlendFuncCSCircular): int {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_CSCircular.hxx".}
proc value*(this: var BlendFuncCSCircular; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BlendFunc_CSCircular.hxx".}
proc derivatives*(this: var BlendFuncCSCircular; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BlendFunc_CSCircular.hxx".}
proc values*(this: var BlendFuncCSCircular; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "BlendFunc_CSCircular.hxx".}
proc set*(this: var BlendFuncCSCircular; param: float) {.importcpp: "Set",
    header: "BlendFunc_CSCircular.hxx".}
proc set*(this: var BlendFuncCSCircular; first: float; last: float) {.importcpp: "Set",
    header: "BlendFunc_CSCircular.hxx".}
proc getTolerance*(this: BlendFuncCSCircular; tolerance: var MathVector; tol: float) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_CSCircular.hxx".}
proc getBounds*(this: BlendFuncCSCircular; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_CSCircular.hxx".}
proc isSolution*(this: var BlendFuncCSCircular; sol: MathVector; tol: float): bool {.
    importcpp: "IsSolution", header: "BlendFunc_CSCircular.hxx".}
proc pointOnS*(this: BlendFuncCSCircular): Pnt {.noSideEffect, importcpp: "PointOnS",
    header: "BlendFunc_CSCircular.hxx".}
proc pointOnC*(this: BlendFuncCSCircular): Pnt {.noSideEffect, importcpp: "PointOnC",
    header: "BlendFunc_CSCircular.hxx".}
proc pnt2d*(this: BlendFuncCSCircular): Pnt2d {.noSideEffect, importcpp: "Pnt2d",
    header: "BlendFunc_CSCircular.hxx".}
proc parameterOnC*(this: BlendFuncCSCircular): float {.noSideEffect,
    importcpp: "ParameterOnC", header: "BlendFunc_CSCircular.hxx".}
proc isTangencyPoint*(this: BlendFuncCSCircular): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_CSCircular.hxx".}
proc tangentOnS*(this: BlendFuncCSCircular): Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "BlendFunc_CSCircular.hxx".}
proc tangent2d*(this: BlendFuncCSCircular): Vec2d {.noSideEffect,
    importcpp: "Tangent2d", header: "BlendFunc_CSCircular.hxx".}
proc tangentOnC*(this: BlendFuncCSCircular): Vec {.noSideEffect,
    importcpp: "TangentOnC", header: "BlendFunc_CSCircular.hxx".}
proc tangent*(this: BlendFuncCSCircular; u: float; v: float; tgS: var Vec; normS: var Vec) {.
    noSideEffect, importcpp: "Tangent", header: "BlendFunc_CSCircular.hxx".}
proc set*(this: var BlendFuncCSCircular; radius: float; choix: int) {.importcpp: "Set",
    header: "BlendFunc_CSCircular.hxx".}
proc set*(this: var BlendFuncCSCircular; typeSection: BlendFuncSectionShape) {.
    importcpp: "Set", header: "BlendFunc_CSCircular.hxx".}
proc section*(this: var BlendFuncCSCircular; param: float; u: float; v: float; w: float;
             pdeb: var float; pfin: var float; c: var Circ) {.importcpp: "Section",
    header: "BlendFunc_CSCircular.hxx".}
proc section*(this: var BlendFuncCSCircular; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.importcpp: "Section",
    header: "BlendFunc_CSCircular.hxx".}
proc getSection*(this: var BlendFuncCSCircular; param: float; u: float; v: float;
                w: float; tabP: var TColgpArray1OfPnt; tabV: var TColgpArray1OfVec): bool {.
    importcpp: "GetSection", header: "BlendFunc_CSCircular.hxx".}
proc isRational*(this: BlendFuncCSCircular): bool {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_CSCircular.hxx".}
proc getSectionSize*(this: BlendFuncCSCircular): float {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_CSCircular.hxx".}
proc getMinimalWeight*(this: BlendFuncCSCircular; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_CSCircular.hxx".}
proc nbIntervals*(this: BlendFuncCSCircular; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "BlendFunc_CSCircular.hxx".}
proc intervals*(this: BlendFuncCSCircular; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_CSCircular.hxx".}
proc getShape*(this: var BlendFuncCSCircular; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.importcpp: "GetShape",
    header: "BlendFunc_CSCircular.hxx".}
proc getTolerance*(this: BlendFuncCSCircular; boundTol: float; surfTol: float;
                  angleTol: float; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_CSCircular.hxx".}
proc knots*(this: var BlendFuncCSCircular; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_CSCircular.hxx".}
proc mults*(this: var BlendFuncCSCircular; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_CSCircular.hxx".}
proc section*(this: var BlendFuncCSCircular; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "BlendFunc_CSCircular.hxx".}
proc section*(this: var BlendFuncCSCircular; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "BlendFunc_CSCircular.hxx".}
proc resolution*(this: BlendFuncCSCircular; iC2d: int; tol: float; tolU: var float;
                tolV: var float) {.noSideEffect, importcpp: "Resolution",
                                header: "BlendFunc_CSCircular.hxx".}
