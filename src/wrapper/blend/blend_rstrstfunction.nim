import ../tcolgp/tcolgp_types
import ../math/math_types
import ../gp/gp_types
import blend_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types





##  Created by: Jacques  GOUSSARD Author:    Laurent    BOURESCHE --
##  Copyright (c) 1997-1999 Matra Datavision
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



proc nbVariables*(this: BlendRstRstFunction): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Blend_RstRstFunction.hxx".}
proc nbEquations*(this: BlendRstRstFunction): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "Blend_RstRstFunction.hxx".}
proc value*(this: var BlendRstRstFunction; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "Blend_RstRstFunction.hxx".}
proc derivatives*(this: var BlendRstRstFunction; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "Blend_RstRstFunction.hxx".}
proc values*(this: var BlendRstRstFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "Blend_RstRstFunction.hxx".}
proc set*(this: var BlendRstRstFunction; param: cfloat) {.cdecl, importcpp: "Set",
    header: "Blend_RstRstFunction.hxx".}
proc set*(this: var BlendRstRstFunction; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "Blend_RstRstFunction.hxx".}
proc getTolerance*(this: BlendRstRstFunction; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "Blend_RstRstFunction.hxx".}
proc getBounds*(this: BlendRstRstFunction; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "Blend_RstRstFunction.hxx".}
proc isSolution*(this: var BlendRstRstFunction; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "Blend_RstRstFunction.hxx".}
proc getMinimalDistance*(this: BlendRstRstFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", header: "Blend_RstRstFunction.hxx".}
proc pnt1*(this: BlendRstRstFunction): PntObj {.noSideEffect, cdecl, importcpp: "Pnt1",
    header: "Blend_RstRstFunction.hxx".}
proc pnt2*(this: BlendRstRstFunction): PntObj {.noSideEffect, cdecl, importcpp: "Pnt2",
    header: "Blend_RstRstFunction.hxx".}
proc pointOnRst1*(this: BlendRstRstFunction): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnRst1", header: "Blend_RstRstFunction.hxx".}
proc pointOnRst2*(this: BlendRstRstFunction): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnRst2", header: "Blend_RstRstFunction.hxx".}
proc pnt2dOnRst1*(this: BlendRstRstFunction): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst1", header: "Blend_RstRstFunction.hxx".}
proc pnt2dOnRst2*(this: BlendRstRstFunction): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst2", header: "Blend_RstRstFunction.hxx".}
proc parameterOnRst1*(this: BlendRstRstFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst1", header: "Blend_RstRstFunction.hxx".}
proc parameterOnRst2*(this: BlendRstRstFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst2", header: "Blend_RstRstFunction.hxx".}
proc isTangencyPoint*(this: BlendRstRstFunction): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "Blend_RstRstFunction.hxx".}
proc tangentOnRst1*(this: BlendRstRstFunction): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnRst1", header: "Blend_RstRstFunction.hxx".}
proc tangent2dOnRst1*(this: BlendRstRstFunction): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst1", header: "Blend_RstRstFunction.hxx".}
proc tangentOnRst2*(this: BlendRstRstFunction): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnRst2", header: "Blend_RstRstFunction.hxx".}
proc tangent2dOnRst2*(this: BlendRstRstFunction): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst2", header: "Blend_RstRstFunction.hxx".}
proc decroch*(this: BlendRstRstFunction; sol: MathVector; nRst1: var VecObj;
             tgRst1: var VecObj; nRst2: var VecObj; tgRst2: var VecObj): BlendDecrochStatus {.
    noSideEffect, cdecl, importcpp: "Decroch", header: "Blend_RstRstFunction.hxx".}
proc isRational*(this: BlendRstRstFunction): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Blend_RstRstFunction.hxx".}
proc getSectionSize*(this: BlendRstRstFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "Blend_RstRstFunction.hxx".}
proc getMinimalWeight*(this: BlendRstRstFunction; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "Blend_RstRstFunction.hxx".}
proc nbIntervals*(this: BlendRstRstFunction; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "Blend_RstRstFunction.hxx".}
proc intervals*(this: BlendRstRstFunction; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Blend_RstRstFunction.hxx".}
proc getShape*(this: var BlendRstRstFunction; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "Blend_RstRstFunction.hxx".}
proc getTolerance*(this: BlendRstRstFunction; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "Blend_RstRstFunction.hxx".}
proc knots*(this: var BlendRstRstFunction; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "Blend_RstRstFunction.hxx".}
proc mults*(this: var BlendRstRstFunction; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", header: "Blend_RstRstFunction.hxx".}
proc section*(this: var BlendRstRstFunction; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    header: "Blend_RstRstFunction.hxx".}
proc section*(this: var BlendRstRstFunction; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "Blend_RstRstFunction.hxx".}
proc section*(this: var BlendRstRstFunction; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "Blend_RstRstFunction.hxx".}


