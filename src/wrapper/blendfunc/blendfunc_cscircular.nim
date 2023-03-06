import ../tcolgp/tcolgp_types
import ../math/math_types
import ../gp/gp_types
import ../blend/blend_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import blendfunc_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types
import ../law/law_types





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



proc newBlendFuncCSCircular*(s: Handle[Adaptor3dHSurface];
                            c: Handle[Adaptor3dHCurve];
                            cGuide: Handle[Adaptor3dHCurve];
                            L: Handle[LawFunction]): BlendFuncCSCircular {.cdecl,
    constructor, importcpp: "BlendFunc_CSCircular(@)", header: "BlendFunc_CSCircular.hxx".}
proc nbVariables*(this: BlendFuncCSCircular): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "BlendFunc_CSCircular.hxx".}
proc nbEquations*(this: BlendFuncCSCircular): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BlendFunc_CSCircular.hxx".}
proc value*(this: var BlendFuncCSCircular; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "BlendFunc_CSCircular.hxx".}
proc derivatives*(this: var BlendFuncCSCircular; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_CSCircular.hxx".}
proc values*(this: var BlendFuncCSCircular; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BlendFunc_CSCircular.hxx".}
proc set*(this: var BlendFuncCSCircular; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BlendFunc_CSCircular.hxx".}
proc set*(this: var BlendFuncCSCircular; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BlendFunc_CSCircular.hxx".}
proc getTolerance*(this: BlendFuncCSCircular; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_CSCircular.hxx".}
proc getBounds*(this: BlendFuncCSCircular; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BlendFunc_CSCircular.hxx".}
proc isSolution*(this: var BlendFuncCSCircular; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BlendFunc_CSCircular.hxx".}
proc pointOnS*(this: BlendFuncCSCircular): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS", header: "BlendFunc_CSCircular.hxx".}
proc pointOnC*(this: BlendFuncCSCircular): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnC", header: "BlendFunc_CSCircular.hxx".}
proc pnt2d*(this: BlendFuncCSCircular): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2d", header: "BlendFunc_CSCircular.hxx".}
proc parameterOnC*(this: BlendFuncCSCircular): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC", header: "BlendFunc_CSCircular.hxx".}
proc isTangencyPoint*(this: BlendFuncCSCircular): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BlendFunc_CSCircular.hxx".}
proc tangentOnS*(this: BlendFuncCSCircular): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS", header: "BlendFunc_CSCircular.hxx".}
proc tangent2d*(this: BlendFuncCSCircular): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2d", header: "BlendFunc_CSCircular.hxx".}
proc tangentOnC*(this: BlendFuncCSCircular): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnC", header: "BlendFunc_CSCircular.hxx".}
proc tangent*(this: BlendFuncCSCircular; u: cfloat; v: cfloat; tgS: var VecObj;
             normS: var VecObj) {.noSideEffect, cdecl, importcpp: "Tangent",
                            header: "BlendFunc_CSCircular.hxx".}
proc set*(this: var BlendFuncCSCircular; radius: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", header: "BlendFunc_CSCircular.hxx".}
proc set*(this: var BlendFuncCSCircular; typeSection: BlendFuncSectionShape) {.cdecl,
    importcpp: "Set", header: "BlendFunc_CSCircular.hxx".}
proc section*(this: var BlendFuncCSCircular; param: cfloat; u: cfloat; v: cfloat;
             w: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var CircObj) {.cdecl,
    importcpp: "Section", header: "BlendFunc_CSCircular.hxx".}
proc section*(this: var BlendFuncCSCircular; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BlendFunc_CSCircular.hxx".}
proc getSection*(this: var BlendFuncCSCircular; param: cfloat; u: cfloat; v: cfloat;
                w: cfloat; tabP: var TColgpArray1OfPnt; tabV: var TColgpArray1OfVec): bool {.
    cdecl, importcpp: "GetSection", header: "BlendFunc_CSCircular.hxx".}
proc isRational*(this: BlendFuncCSCircular): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BlendFunc_CSCircular.hxx".}
proc getSectionSize*(this: BlendFuncCSCircular): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BlendFunc_CSCircular.hxx".}
proc getMinimalWeight*(this: BlendFuncCSCircular; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "BlendFunc_CSCircular.hxx".}
proc nbIntervals*(this: BlendFuncCSCircular; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "BlendFunc_CSCircular.hxx".}
proc intervals*(this: BlendFuncCSCircular; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "BlendFunc_CSCircular.hxx".}
proc getShape*(this: var BlendFuncCSCircular; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "BlendFunc_CSCircular.hxx".}
proc getTolerance*(this: BlendFuncCSCircular; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_CSCircular.hxx".}
proc knots*(this: var BlendFuncCSCircular; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "BlendFunc_CSCircular.hxx".}
proc mults*(this: var BlendFuncCSCircular; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", header: "BlendFunc_CSCircular.hxx".}
proc section*(this: var BlendFuncCSCircular; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BlendFunc_CSCircular.hxx".}
proc section*(this: var BlendFuncCSCircular; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    header: "BlendFunc_CSCircular.hxx".}
proc resolution*(this: BlendFuncCSCircular; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 header: "BlendFunc_CSCircular.hxx".}


