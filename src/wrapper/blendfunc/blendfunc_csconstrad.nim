import ../tcolgp/tcolgp_types
import ../math/math_types
import ../gp/gp_types
import ../blend/blend_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import blendfunc_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types





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



proc newBlendFuncCSConstRad*(s: Handle[Adaptor3dHSurface];
                            c: Handle[Adaptor3dHCurve];
                            cGuide: Handle[Adaptor3dHCurve]): BlendFuncCSConstRad {.
    cdecl, constructor, importcpp: "BlendFunc_CSConstRad(@)", header: "BlendFunc_CSConstRad.hxx".}
proc nbEquations*(this: BlendFuncCSConstRad): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BlendFunc_CSConstRad.hxx".}
proc value*(this: var BlendFuncCSConstRad; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "BlendFunc_CSConstRad.hxx".}
proc derivatives*(this: var BlendFuncCSConstRad; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_CSConstRad.hxx".}
proc values*(this: var BlendFuncCSConstRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BlendFunc_CSConstRad.hxx".}
proc set*(this: var BlendFuncCSConstRad; param: cfloat) {.cdecl, importcpp: "Set",
    header: "BlendFunc_CSConstRad.hxx".}
proc set*(this: var BlendFuncCSConstRad; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "BlendFunc_CSConstRad.hxx".}
proc getTolerance*(this: BlendFuncCSConstRad; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_CSConstRad.hxx".}
proc getBounds*(this: BlendFuncCSConstRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BlendFunc_CSConstRad.hxx".}
proc isSolution*(this: var BlendFuncCSConstRad; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BlendFunc_CSConstRad.hxx".}
proc pointOnS*(this: BlendFuncCSConstRad): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS", header: "BlendFunc_CSConstRad.hxx".}
proc pointOnC*(this: BlendFuncCSConstRad): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnC", header: "BlendFunc_CSConstRad.hxx".}
proc pnt2d*(this: BlendFuncCSConstRad): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Pnt2d", header: "BlendFunc_CSConstRad.hxx".}
proc parameterOnC*(this: BlendFuncCSConstRad): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC", header: "BlendFunc_CSConstRad.hxx".}
proc isTangencyPoint*(this: BlendFuncCSConstRad): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "BlendFunc_CSConstRad.hxx".}
proc tangentOnS*(this: BlendFuncCSConstRad): gp_Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS", header: "BlendFunc_CSConstRad.hxx".}
proc tangent2d*(this: BlendFuncCSConstRad): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2d", header: "BlendFunc_CSConstRad.hxx".}
proc tangentOnC*(this: BlendFuncCSConstRad): gp_Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnC", header: "BlendFunc_CSConstRad.hxx".}
proc tangent*(this: BlendFuncCSConstRad; u: cfloat; v: cfloat; tgS: var gp_Vec;
             normS: var gp_Vec) {.noSideEffect, cdecl, importcpp: "Tangent",
                            header: "BlendFunc_CSConstRad.hxx".}
proc set*(this: var BlendFuncCSConstRad; radius: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", header: "BlendFunc_CSConstRad.hxx".}
proc set*(this: var BlendFuncCSConstRad; typeSection: BlendFuncSectionShape) {.cdecl,
    importcpp: "Set", header: "BlendFunc_CSConstRad.hxx".}
proc section*(this: var BlendFuncCSConstRad; param: cfloat; u: cfloat; v: cfloat;
             w: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var gp_Circ) {.cdecl,
    importcpp: "Section", header: "BlendFunc_CSConstRad.hxx".}
proc section*(this: var BlendFuncCSConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "BlendFunc_CSConstRad.hxx".}
proc getSection*(this: var BlendFuncCSConstRad; param: cfloat; u: cfloat; v: cfloat;
                w: cfloat; tabP: var TColgpArray1OfPnt; tabV: var TColgpArray1OfVec): bool {.
    cdecl, importcpp: "GetSection", header: "BlendFunc_CSConstRad.hxx".}
proc isRational*(this: BlendFuncCSConstRad): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "BlendFunc_CSConstRad.hxx".}
proc getSectionSize*(this: BlendFuncCSConstRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "BlendFunc_CSConstRad.hxx".}
proc getMinimalWeight*(this: BlendFuncCSConstRad; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "BlendFunc_CSConstRad.hxx".}
proc nbIntervals*(this: BlendFuncCSConstRad; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "BlendFunc_CSConstRad.hxx".}
proc intervals*(this: BlendFuncCSConstRad; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "BlendFunc_CSConstRad.hxx".}
proc getShape*(this: var BlendFuncCSConstRad; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "BlendFunc_CSConstRad.hxx".}
proc getTolerance*(this: BlendFuncCSConstRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "BlendFunc_CSConstRad.hxx".}
proc knots*(this: var BlendFuncCSConstRad; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "BlendFunc_CSConstRad.hxx".}
proc mults*(this: var BlendFuncCSConstRad; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", header: "BlendFunc_CSConstRad.hxx".}
proc section*(this: var BlendFuncCSConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "BlendFunc_CSConstRad.hxx".}
proc section*(this: var BlendFuncCSConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    header: "BlendFunc_CSConstRad.hxx".}
proc resolution*(this: BlendFuncCSConstRad; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 header: "BlendFunc_CSConstRad.hxx".}


