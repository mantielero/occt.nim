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

## !!!Ignored construct:  # _Extrema_CCLocFOfLocECC_HeaderFile [NewLine] # _Extrema_CCLocFOfLocECC_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < TColStd_SequenceOfReal . hxx > [NewLine] # < Extrema_SequenceOfPOnCurv . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < math_FunctionSetWithDerivatives . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < math_Vector . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of math_Matrix"
type
  ExtremaCCLocFOfLocECC* {.importcpp: "Extrema_CCLocFOfLocECC",
                          header: "Extrema_CCLocFOfLocECC.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructExtremaCCLocFOfLocECC*(thetol: float = 1.0e-10): ExtremaCCLocFOfLocECC {.
    constructor, importcpp: "Extrema_CCLocFOfLocECC(@)",
    header: "Extrema_CCLocFOfLocECC.hxx".}
proc constructExtremaCCLocFOfLocECC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve;
                                    thetol: float = 1.0e-10): ExtremaCCLocFOfLocECC {.
    constructor, importcpp: "Extrema_CCLocFOfLocECC(@)",
    header: "Extrema_CCLocFOfLocECC.hxx".}
proc setCurve*(this: var ExtremaCCLocFOfLocECC; theRank: int; c1: Adaptor3dCurve) {.
    importcpp: "SetCurve", header: "Extrema_CCLocFOfLocECC.hxx".}
proc setTolerance*(this: var ExtremaCCLocFOfLocECC; theTol: float) {.
    importcpp: "SetTolerance", header: "Extrema_CCLocFOfLocECC.hxx".}
proc nbVariables*(this: ExtremaCCLocFOfLocECC): int {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_CCLocFOfLocECC.hxx".}
proc nbEquations*(this: ExtremaCCLocFOfLocECC): int {.noSideEffect,
    importcpp: "NbEquations", header: "Extrema_CCLocFOfLocECC.hxx".}
proc value*(this: var ExtremaCCLocFOfLocECC; uv: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Extrema_CCLocFOfLocECC.hxx".}
proc derivatives*(this: var ExtremaCCLocFOfLocECC; uv: MathVector; df: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "Extrema_CCLocFOfLocECC.hxx".}
proc values*(this: var ExtremaCCLocFOfLocECC; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.importcpp: "Values",
                                    header: "Extrema_CCLocFOfLocECC.hxx".}
proc getStateNumber*(this: var ExtremaCCLocFOfLocECC): int {.
    importcpp: "GetStateNumber", header: "Extrema_CCLocFOfLocECC.hxx".}
proc nbExt*(this: ExtremaCCLocFOfLocECC): int {.noSideEffect, importcpp: "NbExt",
    header: "Extrema_CCLocFOfLocECC.hxx".}
proc squareDistance*(this: ExtremaCCLocFOfLocECC; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_CCLocFOfLocECC.hxx".}
proc points*(this: ExtremaCCLocFOfLocECC; n: int; p1: var ExtremaPOnCurv;
            p2: var ExtremaPOnCurv) {.noSideEffect, importcpp: "Points",
                                   header: "Extrema_CCLocFOfLocECC.hxx".}
proc curvePtr*(this: ExtremaCCLocFOfLocECC; theRank: int): StandardAddress {.
    noSideEffect, importcpp: "CurvePtr", header: "Extrema_CCLocFOfLocECC.hxx".}
proc tolerance*(this: ExtremaCCLocFOfLocECC): float {.noSideEffect,
    importcpp: "Tolerance", header: "Extrema_CCLocFOfLocECC.hxx".}
proc subIntervalInitialize*(this: var ExtremaCCLocFOfLocECC; theUfirst: MathVector;
                           theUlast: MathVector) {.
    importcpp: "SubIntervalInitialize", header: "Extrema_CCLocFOfLocECC.hxx".}
proc searchOfTolerance*(this: var ExtremaCCLocFOfLocECC; c: StandardAddress): float {.
    importcpp: "SearchOfTolerance", header: "Extrema_CCLocFOfLocECC.hxx".}
## !!!Ignored construct:  # Curve1 Adaptor3d_Curve [NewLine] # Curve1_hxx < Adaptor3d_Curve . hxx > [NewLine] # Tool1 Extrema_CurveTool [NewLine] # Tool1_hxx < Extrema_CurveTool . hxx > [NewLine] # Curve2 Adaptor3d_Curve [NewLine] # Curve2_hxx < Adaptor3d_Curve . hxx > [NewLine] # Tool2 Extrema_CurveTool [NewLine] # Tool2_hxx < Extrema_CurveTool . hxx > [NewLine] # POnC Extrema_POnCurv [NewLine] # POnC_hxx < Extrema_POnCurv . hxx > [NewLine] # Pnt gp_Pnt [NewLine] # Pnt_hxx < gp_Pnt . hxx > [NewLine] # Vec gp_Vec [NewLine] # Vec_hxx < gp_Vec . hxx > [NewLine] # Extrema_SeqPOnC Extrema_SequenceOfPOnCurv [NewLine] # Extrema_SeqPOnC_hxx < Extrema_SequenceOfPOnCurv . hxx > [NewLine] # Extrema_FuncExtCC Extrema_CCLocFOfLocECC [NewLine] # Extrema_FuncExtCC_hxx < Extrema_CCLocFOfLocECC . hxx > [NewLine] # < Extrema_FuncExtCC . lxx > [NewLine] # Curve1 [NewLine] # Curve1_hxx [NewLine] # Tool1 [NewLine] # Tool1_hxx [NewLine] # Curve2 [NewLine] # Curve2_hxx [NewLine] # Tool2 [NewLine] # Tool2_hxx [NewLine] # POnC [NewLine] # POnC_hxx [NewLine] # Pnt [NewLine] # Pnt_hxx [NewLine] # Vec [NewLine] # Vec_hxx [NewLine] # Extrema_SeqPOnC [NewLine] # Extrema_SeqPOnC_hxx [NewLine] # Extrema_FuncExtCC [NewLine] # Extrema_FuncExtCC_hxx [NewLine] #  _Extrema_CCLocFOfLocECC_HeaderFile
## Error: did not expect <!!!

