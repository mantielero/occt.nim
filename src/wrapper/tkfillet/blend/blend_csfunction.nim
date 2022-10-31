import ../../tkmath/tcolgp/tcolgp_types
import ../../tkmath/math/math_types
import ../../tkmath/gp/gp_types
import blend_types
import ../../tkernel/tcolstd/tcolstd_types





##  Created on: 1993-09-13
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



proc nbVariables*(this: BlendCSFunction): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Blend_CSFunction.hxx".}
proc nbEquations*(this: BlendCSFunction): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "Blend_CSFunction.hxx".}
proc value*(this: var BlendCSFunction; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "Blend_CSFunction.hxx".}
proc derivatives*(this: var BlendCSFunction; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "Blend_CSFunction.hxx".}
proc values*(this: var BlendCSFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "Blend_CSFunction.hxx".}
proc set*(this: var BlendCSFunction; param: cfloat) {.cdecl, importcpp: "Set",
    header: "Blend_CSFunction.hxx".}
proc set*(this: var BlendCSFunction; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "Blend_CSFunction.hxx".}
proc getTolerance*(this: BlendCSFunction; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "Blend_CSFunction.hxx".}
proc getBounds*(this: BlendCSFunction; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "Blend_CSFunction.hxx".}
proc isSolution*(this: var BlendCSFunction; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", header: "Blend_CSFunction.hxx".}
proc getMinimalDistance*(this: BlendCSFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", header: "Blend_CSFunction.hxx".}
proc pnt1*(this: BlendCSFunction): PntObj {.noSideEffect, cdecl, importcpp: "Pnt1",
                                     header: "Blend_CSFunction.hxx".}
proc pnt2*(this: BlendCSFunction): PntObj {.noSideEffect, cdecl, importcpp: "Pnt2",
                                     header: "Blend_CSFunction.hxx".}
proc pointOnS*(this: BlendCSFunction): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS", header: "Blend_CSFunction.hxx".}
proc pointOnC*(this: BlendCSFunction): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnC", header: "Blend_CSFunction.hxx".}
proc pnt2d*(this: BlendCSFunction): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Pnt2d",
                                        header: "Blend_CSFunction.hxx".}
proc parameterOnC*(this: BlendCSFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC", header: "Blend_CSFunction.hxx".}
proc isTangencyPoint*(this: BlendCSFunction): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "Blend_CSFunction.hxx".}
proc tangentOnS*(this: BlendCSFunction): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS", header: "Blend_CSFunction.hxx".}
proc tangent2d*(this: BlendCSFunction): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2d", header: "Blend_CSFunction.hxx".}
proc tangentOnC*(this: BlendCSFunction): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnC", header: "Blend_CSFunction.hxx".}
proc tangent*(this: BlendCSFunction; u: cfloat; v: cfloat; tgS: var VecObj; normS: var VecObj) {.
    noSideEffect, cdecl, importcpp: "Tangent", header: "Blend_CSFunction.hxx".}
proc getShape*(this: var BlendCSFunction; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "Blend_CSFunction.hxx".}
proc getTolerance*(this: BlendCSFunction; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "Blend_CSFunction.hxx".}
proc knots*(this: var BlendCSFunction; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "Blend_CSFunction.hxx".}
proc mults*(this: var BlendCSFunction; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", header: "Blend_CSFunction.hxx".}
proc section*(this: var BlendCSFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "Blend_CSFunction.hxx".}
proc section*(this: var BlendCSFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Section", header: "Blend_CSFunction.hxx".}
proc section*(this: var BlendCSFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "Blend_CSFunction.hxx".}


