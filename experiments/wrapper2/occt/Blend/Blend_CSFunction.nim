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

discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"
type
  BlendCSFunction* {.importcpp: "Blend_CSFunction", header: "Blend_CSFunction.hxx",
                    bycopy.} = object of BlendAppFunction ## ! Returns 3 (default value). Can be redefined.


proc nbVariables*(this: BlendCSFunction): int {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_CSFunction.hxx".}
proc nbEquations*(this: BlendCSFunction): int {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_CSFunction.hxx".}
proc value*(this: var BlendCSFunction; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Blend_CSFunction.hxx".}
proc derivatives*(this: var BlendCSFunction; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "Blend_CSFunction.hxx".}
proc values*(this: var BlendCSFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "Blend_CSFunction.hxx".}
proc set*(this: var BlendCSFunction; param: float) {.importcpp: "Set",
    header: "Blend_CSFunction.hxx".}
proc set*(this: var BlendCSFunction; first: float; last: float) {.importcpp: "Set",
    header: "Blend_CSFunction.hxx".}
proc getTolerance*(this: BlendCSFunction; tolerance: var MathVector; tol: float) {.
    noSideEffect, importcpp: "GetTolerance", header: "Blend_CSFunction.hxx".}
proc getBounds*(this: BlendCSFunction; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "Blend_CSFunction.hxx".}
proc isSolution*(this: var BlendCSFunction; sol: MathVector; tol: float): bool {.
    importcpp: "IsSolution", header: "Blend_CSFunction.hxx".}
proc getMinimalDistance*(this: BlendCSFunction): float {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "Blend_CSFunction.hxx".}
proc pnt1*(this: BlendCSFunction): Pnt {.noSideEffect, importcpp: "Pnt1",
                                     header: "Blend_CSFunction.hxx".}
proc pnt2*(this: BlendCSFunction): Pnt {.noSideEffect, importcpp: "Pnt2",
                                     header: "Blend_CSFunction.hxx".}
proc pointOnS*(this: BlendCSFunction): Pnt {.noSideEffect, importcpp: "PointOnS",
    header: "Blend_CSFunction.hxx".}
proc pointOnC*(this: BlendCSFunction): Pnt {.noSideEffect, importcpp: "PointOnC",
    header: "Blend_CSFunction.hxx".}
proc pnt2d*(this: BlendCSFunction): Pnt2d {.noSideEffect, importcpp: "Pnt2d",
                                        header: "Blend_CSFunction.hxx".}
proc parameterOnC*(this: BlendCSFunction): float {.noSideEffect,
    importcpp: "ParameterOnC", header: "Blend_CSFunction.hxx".}
proc isTangencyPoint*(this: BlendCSFunction): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "Blend_CSFunction.hxx".}
proc tangentOnS*(this: BlendCSFunction): Vec {.noSideEffect, importcpp: "TangentOnS",
    header: "Blend_CSFunction.hxx".}
proc tangent2d*(this: BlendCSFunction): Vec2d {.noSideEffect, importcpp: "Tangent2d",
    header: "Blend_CSFunction.hxx".}
proc tangentOnC*(this: BlendCSFunction): Vec {.noSideEffect, importcpp: "TangentOnC",
    header: "Blend_CSFunction.hxx".}
proc tangent*(this: BlendCSFunction; u: float; v: float; tgS: var Vec; normS: var Vec) {.
    noSideEffect, importcpp: "Tangent", header: "Blend_CSFunction.hxx".}
proc getShape*(this: var BlendCSFunction; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.importcpp: "GetShape",
    header: "Blend_CSFunction.hxx".}
proc getTolerance*(this: BlendCSFunction; boundTol: float; surfTol: float;
                  angleTol: float; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, importcpp: "GetTolerance", header: "Blend_CSFunction.hxx".}
proc knots*(this: var BlendCSFunction; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "Blend_CSFunction.hxx".}
proc mults*(this: var BlendCSFunction; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "Blend_CSFunction.hxx".}
proc section*(this: var BlendCSFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.importcpp: "Section",
    header: "Blend_CSFunction.hxx".}
proc section*(this: var BlendCSFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    importcpp: "Section", header: "Blend_CSFunction.hxx".}
proc section*(this: var BlendCSFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "Blend_CSFunction.hxx".}
