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
discard "forward decl of Blend_Point"
type
  BlendAppFunction* {.importcpp: "Blend_AppFunction",
                     header: "Blend_AppFunction.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                   ## !
                                                                                                   ## returns
                                                                                                   ## the
                                                                                                   ## number
                                                                                                   ## of
                                                                                                   ## variables
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## function.


proc nbVariables*(this: BlendAppFunction): cint {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_AppFunction.hxx".}
proc nbEquations*(this: BlendAppFunction): cint {.noSideEffect,
    importcpp: "NbEquations", header: "Blend_AppFunction.hxx".}
proc value*(this: var BlendAppFunction; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Blend_AppFunction.hxx".}
proc derivatives*(this: var BlendAppFunction; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "Blend_AppFunction.hxx".}
proc values*(this: var BlendAppFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "Blend_AppFunction.hxx".}
proc set*(this: var BlendAppFunction; param: cfloat) {.importcpp: "Set",
    header: "Blend_AppFunction.hxx".}
proc set*(this: var BlendAppFunction; first: cfloat; last: cfloat) {.importcpp: "Set",
    header: "Blend_AppFunction.hxx".}
proc getTolerance*(this: BlendAppFunction; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, importcpp: "GetTolerance", header: "Blend_AppFunction.hxx".}
proc getBounds*(this: BlendAppFunction; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "Blend_AppFunction.hxx".}
proc isSolution*(this: var BlendAppFunction; sol: MathVector; tol: cfloat): bool {.
    importcpp: "IsSolution", header: "Blend_AppFunction.hxx".}
proc getMinimalDistance*(this: BlendAppFunction): cfloat {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "Blend_AppFunction.hxx".}
proc pnt1*(this: BlendAppFunction): Pnt {.noSideEffect, importcpp: "Pnt1",
                                      header: "Blend_AppFunction.hxx".}
proc pnt2*(this: BlendAppFunction): Pnt {.noSideEffect, importcpp: "Pnt2",
                                      header: "Blend_AppFunction.hxx".}
proc isRational*(this: BlendAppFunction): bool {.noSideEffect,
    importcpp: "IsRational", header: "Blend_AppFunction.hxx".}
proc getSectionSize*(this: BlendAppFunction): cfloat {.noSideEffect,
    importcpp: "GetSectionSize", header: "Blend_AppFunction.hxx".}
proc getMinimalWeight*(this: BlendAppFunction; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "Blend_AppFunction.hxx".}
proc nbIntervals*(this: BlendAppFunction; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "Blend_AppFunction.hxx".}
proc intervals*(this: BlendAppFunction; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Blend_AppFunction.hxx".}
proc getShape*(this: var BlendAppFunction; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.importcpp: "GetShape",
    header: "Blend_AppFunction.hxx".}
proc getTolerance*(this: BlendAppFunction; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, importcpp: "GetTolerance", header: "Blend_AppFunction.hxx".}
proc knots*(this: var BlendAppFunction; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "Blend_AppFunction.hxx".}
proc mults*(this: var BlendAppFunction; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "Blend_AppFunction.hxx".}
proc section*(this: var BlendAppFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.importcpp: "Section",
    header: "Blend_AppFunction.hxx".}
proc section*(this: var BlendAppFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    importcpp: "Section", header: "Blend_AppFunction.hxx".}
proc section*(this: var BlendAppFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "Blend_AppFunction.hxx".}
proc resolution*(this: BlendAppFunction; iC2d: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, importcpp: "Resolution",
                                 header: "Blend_AppFunction.hxx".}
proc parameter*(this: BlendAppFunction; p: BlendPoint): cfloat {.noSideEffect,
    importcpp: "Parameter", header: "Blend_AppFunction.hxx".}

























