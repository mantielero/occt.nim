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
type
  BlendRstRstFunction* {.importcpp: "Blend_RstRstFunction",
                        header: "Blend_RstRstFunction.hxx", bycopy.} = object of BlendAppFunction ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## 2
                                                                                           ## (default
                                                                                           ## value).
                                                                                           ## Can
                                                                                           ## be
                                                                                           ## redefined.


proc nbVariables*(this: BlendRstRstFunction): int {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_RstRstFunction.hxx".}
proc nbEquations*(this: BlendRstRstFunction): int {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_RstRstFunction.hxx".}
proc value*(this: var BlendRstRstFunction; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Blend_RstRstFunction.hxx".}
proc derivatives*(this: var BlendRstRstFunction; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "Blend_RstRstFunction.hxx".}
proc values*(this: var BlendRstRstFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "Blend_RstRstFunction.hxx".}
proc set*(this: var BlendRstRstFunction; param: float) {.importcpp: "Set",
    header: "Blend_RstRstFunction.hxx".}
proc set*(this: var BlendRstRstFunction; first: float; last: float) {.importcpp: "Set",
    header: "Blend_RstRstFunction.hxx".}
proc getTolerance*(this: BlendRstRstFunction; tolerance: var MathVector; tol: float) {.
    noSideEffect, importcpp: "GetTolerance", header: "Blend_RstRstFunction.hxx".}
proc getBounds*(this: BlendRstRstFunction; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "Blend_RstRstFunction.hxx".}
proc isSolution*(this: var BlendRstRstFunction; sol: MathVector; tol: float): bool {.
    importcpp: "IsSolution", header: "Blend_RstRstFunction.hxx".}
proc getMinimalDistance*(this: BlendRstRstFunction): float {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "Blend_RstRstFunction.hxx".}
proc pnt1*(this: BlendRstRstFunction): Pnt {.noSideEffect, importcpp: "Pnt1",
    header: "Blend_RstRstFunction.hxx".}
proc pnt2*(this: BlendRstRstFunction): Pnt {.noSideEffect, importcpp: "Pnt2",
    header: "Blend_RstRstFunction.hxx".}
proc pointOnRst1*(this: BlendRstRstFunction): Pnt {.noSideEffect,
    importcpp: "PointOnRst1", header: "Blend_RstRstFunction.hxx".}
proc pointOnRst2*(this: BlendRstRstFunction): Pnt {.noSideEffect,
    importcpp: "PointOnRst2", header: "Blend_RstRstFunction.hxx".}
proc pnt2dOnRst1*(this: BlendRstRstFunction): Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst1", header: "Blend_RstRstFunction.hxx".}
proc pnt2dOnRst2*(this: BlendRstRstFunction): Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst2", header: "Blend_RstRstFunction.hxx".}
proc parameterOnRst1*(this: BlendRstRstFunction): float {.noSideEffect,
    importcpp: "ParameterOnRst1", header: "Blend_RstRstFunction.hxx".}
proc parameterOnRst2*(this: BlendRstRstFunction): float {.noSideEffect,
    importcpp: "ParameterOnRst2", header: "Blend_RstRstFunction.hxx".}
proc isTangencyPoint*(this: BlendRstRstFunction): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "Blend_RstRstFunction.hxx".}
proc tangentOnRst1*(this: BlendRstRstFunction): Vec {.noSideEffect,
    importcpp: "TangentOnRst1", header: "Blend_RstRstFunction.hxx".}
proc tangent2dOnRst1*(this: BlendRstRstFunction): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst1", header: "Blend_RstRstFunction.hxx".}
proc tangentOnRst2*(this: BlendRstRstFunction): Vec {.noSideEffect,
    importcpp: "TangentOnRst2", header: "Blend_RstRstFunction.hxx".}
proc tangent2dOnRst2*(this: BlendRstRstFunction): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst2", header: "Blend_RstRstFunction.hxx".}
proc decroch*(this: BlendRstRstFunction; sol: MathVector; nRst1: var Vec;
             tgRst1: var Vec; nRst2: var Vec; tgRst2: var Vec): BlendDecrochStatus {.
    noSideEffect, importcpp: "Decroch", header: "Blend_RstRstFunction.hxx".}
proc isRational*(this: BlendRstRstFunction): bool {.noSideEffect,
    importcpp: "IsRational", header: "Blend_RstRstFunction.hxx".}
proc getSectionSize*(this: BlendRstRstFunction): float {.noSideEffect,
    importcpp: "GetSectionSize", header: "Blend_RstRstFunction.hxx".}
proc getMinimalWeight*(this: BlendRstRstFunction; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "Blend_RstRstFunction.hxx".}
proc nbIntervals*(this: BlendRstRstFunction; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "Blend_RstRstFunction.hxx".}
proc intervals*(this: BlendRstRstFunction; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Blend_RstRstFunction.hxx".}
proc getShape*(this: var BlendRstRstFunction; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.importcpp: "GetShape",
    header: "Blend_RstRstFunction.hxx".}
proc getTolerance*(this: BlendRstRstFunction; boundTol: float; surfTol: float;
                  angleTol: float; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, importcpp: "GetTolerance", header: "Blend_RstRstFunction.hxx".}
proc knots*(this: var BlendRstRstFunction; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "Blend_RstRstFunction.hxx".}
proc mults*(this: var BlendRstRstFunction; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "Blend_RstRstFunction.hxx".}
proc section*(this: var BlendRstRstFunction; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "Blend_RstRstFunction.hxx".}
proc section*(this: var BlendRstRstFunction; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "Blend_RstRstFunction.hxx".}
proc section*(this: var BlendRstRstFunction; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.importcpp: "Section",
    header: "Blend_RstRstFunction.hxx".}
