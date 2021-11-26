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


proc newBlendFuncCSCircular*(s: Handle[Adaptor3dHSurface];
                            c: Handle[Adaptor3dHCurve];
                            cGuide: Handle[Adaptor3dHCurve];
                            L: Handle[LawFunction]): BlendFuncCSCircular {.cdecl,
    constructor, importcpp: "BlendFunc_CSCircular(@)", dynlib: tkfillet.}
proc nbVariables*(this: BlendFuncCSCircular): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkfillet.}
proc nbEquations*(this: BlendFuncCSCircular): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkfillet.}
proc value*(this: var BlendFuncCSCircular; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", dynlib: tkfillet.}
proc derivatives*(this: var BlendFuncCSCircular; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkfillet.}
proc values*(this: var BlendFuncCSCircular; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkfillet.}
proc set*(this: var BlendFuncCSCircular; param: cfloat) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BlendFuncCSCircular; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc getTolerance*(this: BlendFuncCSCircular; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc getBounds*(this: BlendFuncCSCircular; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", dynlib: tkfillet.}
proc isSolution*(this: var BlendFuncCSCircular; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", dynlib: tkfillet.}
proc pointOnS*(this: BlendFuncCSCircular): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS", dynlib: tkfillet.}
proc pointOnC*(this: BlendFuncCSCircular): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnC", dynlib: tkfillet.}
proc pnt2d*(this: BlendFuncCSCircular): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Pnt2d", dynlib: tkfillet.}
proc parameterOnC*(this: BlendFuncCSCircular): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC", dynlib: tkfillet.}
proc isTangencyPoint*(this: BlendFuncCSCircular): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", dynlib: tkfillet.}
proc tangentOnS*(this: BlendFuncCSCircular): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS", dynlib: tkfillet.}
proc tangent2d*(this: BlendFuncCSCircular): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2d", dynlib: tkfillet.}
proc tangentOnC*(this: BlendFuncCSCircular): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnC", dynlib: tkfillet.}
proc tangent*(this: BlendFuncCSCircular; u: cfloat; v: cfloat; tgS: var Vec;
             normS: var Vec) {.noSideEffect, cdecl, importcpp: "Tangent",
                            dynlib: tkfillet.}
proc set*(this: var BlendFuncCSCircular; radius: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc set*(this: var BlendFuncCSCircular; typeSection: BlendFuncSectionShape) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc section*(this: var BlendFuncCSCircular; param: cfloat; u: cfloat; v: cfloat;
             w: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var Circ) {.cdecl,
    importcpp: "Section", dynlib: tkfillet.}
proc section*(this: var BlendFuncCSCircular; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc getSection*(this: var BlendFuncCSCircular; param: cfloat; u: cfloat; v: cfloat;
                w: cfloat; tabP: var TColgpArray1OfPnt; tabV: var TColgpArray1OfVec): bool {.
    cdecl, importcpp: "GetSection", dynlib: tkfillet.}
proc isRational*(this: BlendFuncCSCircular): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkfillet.}
proc getSectionSize*(this: BlendFuncCSCircular): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", dynlib: tkfillet.}
proc getMinimalWeight*(this: BlendFuncCSCircular; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", dynlib: tkfillet.}
proc nbIntervals*(this: BlendFuncCSCircular; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkfillet.}
proc intervals*(this: BlendFuncCSCircular; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkfillet.}
proc getShape*(this: var BlendFuncCSCircular; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    dynlib: tkfillet.}
proc getTolerance*(this: BlendFuncCSCircular; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc knots*(this: var BlendFuncCSCircular; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", dynlib: tkfillet.}
proc mults*(this: var BlendFuncCSCircular; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", dynlib: tkfillet.}
proc section*(this: var BlendFuncCSCircular; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", dynlib: tkfillet.}
proc section*(this: var BlendFuncCSCircular; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc resolution*(this: BlendFuncCSCircular; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 dynlib: tkfillet.}