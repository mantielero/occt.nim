##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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

## !!!Ignored construct:  # _Extrema_CCLocFOfLocECC2d_HeaderFile [NewLine] # _Extrema_CCLocFOfLocECC2d_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < gp_Pnt2d . hxx > [NewLine] # < gp_Vec2d . hxx > [NewLine] # < TColStd_SequenceOfReal . hxx > [NewLine] # < Extrema_SequenceOfPOnCurv2d . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < math_FunctionSetWithDerivatives . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < math_Vector . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of math_Matrix"
type
  ExtremaCCLocFOfLocECC2d* {.importcpp: "Extrema_CCLocFOfLocECC2d",
                            header: "Extrema_CCLocFOfLocECC2d.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructExtremaCCLocFOfLocECC2d*(thetol: float = 1.0e-10): ExtremaCCLocFOfLocECC2d {.
    constructor, importcpp: "Extrema_CCLocFOfLocECC2d(@)",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc constructExtremaCCLocFOfLocECC2d*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
                                      thetol: float = 1.0e-10): ExtremaCCLocFOfLocECC2d {.
    constructor, importcpp: "Extrema_CCLocFOfLocECC2d(@)",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc setCurve*(this: var ExtremaCCLocFOfLocECC2d; theRank: int; c1: Adaptor2dCurve2d) {.
    importcpp: "SetCurve", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc setTolerance*(this: var ExtremaCCLocFOfLocECC2d; theTol: float) {.
    importcpp: "SetTolerance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc nbVariables*(this: ExtremaCCLocFOfLocECC2d): int {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc nbEquations*(this: ExtremaCCLocFOfLocECC2d): int {.noSideEffect,
    importcpp: "NbEquations", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc value*(this: var ExtremaCCLocFOfLocECC2d; uv: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc derivatives*(this: var ExtremaCCLocFOfLocECC2d; uv: MathVector;
                 df: var MathMatrix): bool {.importcpp: "Derivatives",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc values*(this: var ExtremaCCLocFOfLocECC2d; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.importcpp: "Values",
                                    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc getStateNumber*(this: var ExtremaCCLocFOfLocECC2d): int {.
    importcpp: "GetStateNumber", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc nbExt*(this: ExtremaCCLocFOfLocECC2d): int {.noSideEffect, importcpp: "NbExt",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc squareDistance*(this: ExtremaCCLocFOfLocECC2d; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc points*(this: ExtremaCCLocFOfLocECC2d; n: int; p1: var ExtremaPOnCurv2d;
            p2: var ExtremaPOnCurv2d) {.noSideEffect, importcpp: "Points",
                                     header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc curvePtr*(this: ExtremaCCLocFOfLocECC2d; theRank: int): StandardAddress {.
    noSideEffect, importcpp: "CurvePtr", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc tolerance*(this: ExtremaCCLocFOfLocECC2d): float {.noSideEffect,
    importcpp: "Tolerance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc subIntervalInitialize*(this: var ExtremaCCLocFOfLocECC2d;
                           theUfirst: MathVector; theUlast: MathVector) {.
    importcpp: "SubIntervalInitialize", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc searchOfTolerance*(this: var ExtremaCCLocFOfLocECC2d; c: StandardAddress): float {.
    importcpp: "SearchOfTolerance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
## !!!Ignored construct:  # Curve1 Adaptor2d_Curve2d [NewLine] # Curve1_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # Tool1 Extrema_Curve2dTool [NewLine] # Tool1_hxx < Extrema_Curve2dTool . hxx > [NewLine] # Curve2 Adaptor2d_Curve2d [NewLine] # Curve2_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # Tool2 Extrema_Curve2dTool [NewLine] # Tool2_hxx < Extrema_Curve2dTool . hxx > [NewLine] # POnC Extrema_POnCurv2d [NewLine] # POnC_hxx < Extrema_POnCurv2d . hxx > [NewLine] # Pnt gp_Pnt2d [NewLine] # Pnt_hxx < gp_Pnt2d . hxx > [NewLine] # Vec gp_Vec2d [NewLine] # Vec_hxx < gp_Vec2d . hxx > [NewLine] # Extrema_SeqPOnC Extrema_SequenceOfPOnCurv2d [NewLine] # Extrema_SeqPOnC_hxx < Extrema_SequenceOfPOnCurv2d . hxx > [NewLine] # Extrema_FuncExtCC Extrema_CCLocFOfLocECC2d [NewLine] # Extrema_FuncExtCC_hxx < Extrema_CCLocFOfLocECC2d . hxx > [NewLine] # < Extrema_FuncExtCC . lxx > [NewLine] # Curve1 [NewLine] # Curve1_hxx [NewLine] # Tool1 [NewLine] # Tool1_hxx [NewLine] # Curve2 [NewLine] # Curve2_hxx [NewLine] # Tool2 [NewLine] # Tool2_hxx [NewLine] # POnC [NewLine] # POnC_hxx [NewLine] # Pnt [NewLine] # Pnt_hxx [NewLine] # Vec [NewLine] # Vec_hxx [NewLine] # Extrema_SeqPOnC [NewLine] # Extrema_SeqPOnC_hxx [NewLine] # Extrema_FuncExtCC [NewLine] # Extrema_FuncExtCC_hxx [NewLine] #  _Extrema_CCLocFOfLocECC2d_HeaderFile
## Error: did not expect <!!!














































