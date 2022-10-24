import blend_types

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

discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"


proc nbVariables*(this: BlendSurfRstFunction): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Blend_SurfRstFunction.hxx".}
proc nbEquations*(this: BlendSurfRstFunction): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "Blend_SurfRstFunction.hxx".}
proc value*(this: var BlendSurfRstFunction; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "Blend_SurfRstFunction.hxx".}
proc derivatives*(this: var BlendSurfRstFunction; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "Blend_SurfRstFunction.hxx".}
proc values*(this: var BlendSurfRstFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "Blend_SurfRstFunction.hxx".}
proc set*(this: var BlendSurfRstFunction; param: cfloat) {.cdecl, importcpp: "Set",
    header: "Blend_SurfRstFunction.hxx".}
proc set*(this: var BlendSurfRstFunction; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", header: "Blend_SurfRstFunction.hxx".}
proc getTolerance*(this: BlendSurfRstFunction; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "Blend_SurfRstFunction.hxx".}
proc getBounds*(this: BlendSurfRstFunction; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "Blend_SurfRstFunction.hxx".}
proc isSolution*(this: var BlendSurfRstFunction; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "Blend_SurfRstFunction.hxx".}
proc getMinimalDistance*(this: BlendSurfRstFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", header: "Blend_SurfRstFunction.hxx".}
proc pnt1*(this: BlendSurfRstFunction): PntObj {.noSideEffect, cdecl, importcpp: "Pnt1",
    header: "Blend_SurfRstFunction.hxx".}
proc pnt2*(this: BlendSurfRstFunction): PntObj {.noSideEffect, cdecl, importcpp: "Pnt2",
    header: "Blend_SurfRstFunction.hxx".}
proc pointOnS*(this: BlendSurfRstFunction): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnS", header: "Blend_SurfRstFunction.hxx".}
proc pointOnRst*(this: BlendSurfRstFunction): PntObj {.noSideEffect, cdecl,
    importcpp: "PointOnRst", header: "Blend_SurfRstFunction.hxx".}
proc pnt2dOnS*(this: BlendSurfRstFunction): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnS", header: "Blend_SurfRstFunction.hxx".}
proc pnt2dOnRst*(this: BlendSurfRstFunction): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst", header: "Blend_SurfRstFunction.hxx".}
proc parameterOnRst*(this: BlendSurfRstFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst", header: "Blend_SurfRstFunction.hxx".}
proc isTangencyPoint*(this: BlendSurfRstFunction): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "Blend_SurfRstFunction.hxx".}
proc tangentOnS*(this: BlendSurfRstFunction): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnS", header: "Blend_SurfRstFunction.hxx".}
proc tangent2dOnS*(this: BlendSurfRstFunction): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS", header: "Blend_SurfRstFunction.hxx".}
proc tangentOnRst*(this: BlendSurfRstFunction): VecObj {.noSideEffect, cdecl,
    importcpp: "TangentOnRst", header: "Blend_SurfRstFunction.hxx".}
proc tangent2dOnRst*(this: BlendSurfRstFunction): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst", header: "Blend_SurfRstFunction.hxx".}
proc decroch*(this: BlendSurfRstFunction; sol: MathVector; ns: var VecObj; tgS: var VecObj): bool {.
    noSideEffect, cdecl, importcpp: "Decroch", header: "Blend_SurfRstFunction.hxx".}
proc isRational*(this: BlendSurfRstFunction): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", header: "Blend_SurfRstFunction.hxx".}
proc getSectionSize*(this: BlendSurfRstFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", header: "Blend_SurfRstFunction.hxx".}
proc getMinimalWeight*(this: BlendSurfRstFunction; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "GetMinimalWeight", header: "Blend_SurfRstFunction.hxx".}
proc nbIntervals*(this: BlendSurfRstFunction; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "Blend_SurfRstFunction.hxx".}
proc intervals*(this: BlendSurfRstFunction; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                header: "Blend_SurfRstFunction.hxx".}
proc getShape*(this: var BlendSurfRstFunction; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    header: "Blend_SurfRstFunction.hxx".}
proc getTolerance*(this: BlendSurfRstFunction; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", header: "Blend_SurfRstFunction.hxx".}
proc knots*(this: var BlendSurfRstFunction; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", header: "Blend_SurfRstFunction.hxx".}
proc mults*(this: var BlendSurfRstFunction; tMults: var TColStdArray1OfInteger) {.
    cdecl, importcpp: "Mults", header: "Blend_SurfRstFunction.hxx".}
proc section*(this: var BlendSurfRstFunction; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", header: "Blend_SurfRstFunction.hxx".}
proc section*(this: var BlendSurfRstFunction; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    header: "Blend_SurfRstFunction.hxx".}
proc section*(this: var BlendSurfRstFunction; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    header: "Blend_SurfRstFunction.hxx".}
