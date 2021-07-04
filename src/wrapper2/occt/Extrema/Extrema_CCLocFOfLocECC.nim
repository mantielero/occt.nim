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

## !!!Ignored construct:  # _Extrema_CCLocFOfLocECC_HeaderFile [NewLine] # _Extrema_CCLocFOfLocECC_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../TColStd/TColStd_SequenceOfReal.hxx [NewLine] # Extrema_SequenceOfPOnCurv.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../math/math_FunctionSetWithDerivatives.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of math_Matrix"
type
  Extrema_CCLocFOfLocECC* {.importcpp: "Extrema_CCLocFOfLocECC",
                           header: "Extrema_CCLocFOfLocECC.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructExtrema_CCLocFOfLocECC*(thetol: Standard_Real = 1.0e-10): Extrema_CCLocFOfLocECC {.
    constructor, importcpp: "Extrema_CCLocFOfLocECC(@)",
    header: "Extrema_CCLocFOfLocECC.hxx".}
proc constructExtrema_CCLocFOfLocECC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve;
                                     thetol: Standard_Real = 1.0e-10): Extrema_CCLocFOfLocECC {.
    constructor, importcpp: "Extrema_CCLocFOfLocECC(@)",
    header: "Extrema_CCLocFOfLocECC.hxx".}
proc SetCurve*(this: var Extrema_CCLocFOfLocECC; theRank: Standard_Integer;
              C1: Adaptor3d_Curve) {.importcpp: "SetCurve",
                                   header: "Extrema_CCLocFOfLocECC.hxx".}
proc SetTolerance*(this: var Extrema_CCLocFOfLocECC; theTol: Standard_Real) {.
    importcpp: "SetTolerance", header: "Extrema_CCLocFOfLocECC.hxx".}
proc NbVariables*(this: Extrema_CCLocFOfLocECC): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_CCLocFOfLocECC.hxx".}
proc NbEquations*(this: Extrema_CCLocFOfLocECC): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Extrema_CCLocFOfLocECC.hxx".}
proc Value*(this: var Extrema_CCLocFOfLocECC; UV: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Extrema_CCLocFOfLocECC.hxx".}
proc Derivatives*(this: var Extrema_CCLocFOfLocECC; UV: math_Vector;
                 DF: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "Extrema_CCLocFOfLocECC.hxx".}
proc Values*(this: var Extrema_CCLocFOfLocECC; UV: math_Vector; F: var math_Vector;
            DF: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Extrema_CCLocFOfLocECC.hxx".}
proc GetStateNumber*(this: var Extrema_CCLocFOfLocECC): Standard_Integer {.
    importcpp: "GetStateNumber", header: "Extrema_CCLocFOfLocECC.hxx".}
proc NbExt*(this: Extrema_CCLocFOfLocECC): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_CCLocFOfLocECC.hxx".}
proc SquareDistance*(this: Extrema_CCLocFOfLocECC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_CCLocFOfLocECC.hxx".}
proc Points*(this: Extrema_CCLocFOfLocECC; N: Standard_Integer;
            P1: var Extrema_POnCurv; P2: var Extrema_POnCurv) {.noSideEffect,
    importcpp: "Points", header: "Extrema_CCLocFOfLocECC.hxx".}
proc CurvePtr*(this: Extrema_CCLocFOfLocECC; theRank: Standard_Integer): Standard_Address {.
    noSideEffect, importcpp: "CurvePtr", header: "Extrema_CCLocFOfLocECC.hxx".}
proc Tolerance*(this: Extrema_CCLocFOfLocECC): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "Extrema_CCLocFOfLocECC.hxx".}
proc SubIntervalInitialize*(this: var Extrema_CCLocFOfLocECC;
                           theUfirst: math_Vector; theUlast: math_Vector) {.
    importcpp: "SubIntervalInitialize", header: "Extrema_CCLocFOfLocECC.hxx".}
proc SearchOfTolerance*(this: var Extrema_CCLocFOfLocECC; C: Standard_Address): Standard_Real {.
    importcpp: "SearchOfTolerance", header: "Extrema_CCLocFOfLocECC.hxx".}
## !!!Ignored construct:  # Curve1 Adaptor3d_Curve [NewLine] # Curve1_hxx < Adaptor3d_Curve . hxx > [NewLine] # Tool1 Extrema_CurveTool [NewLine] # Tool1_hxx < Extrema_CurveTool . hxx > [NewLine] # Curve2 Adaptor3d_Curve [NewLine] # Curve2_hxx < Adaptor3d_Curve . hxx > [NewLine] # Tool2 Extrema_CurveTool [NewLine] # Tool2_hxx < Extrema_CurveTool . hxx > [NewLine] # POnC Extrema_POnCurv [NewLine] # POnC_hxx < Extrema_POnCurv . hxx > [NewLine] # Pnt gp_Pnt [NewLine] # Pnt_hxx < gp_Pnt . hxx > [NewLine] # Vec gp_Vec [NewLine] # Vec_hxx < gp_Vec . hxx > [NewLine] # Extrema_SeqPOnC Extrema_SequenceOfPOnCurv [NewLine] # Extrema_SeqPOnC_hxx < Extrema_SequenceOfPOnCurv . hxx > [NewLine] # Extrema_FuncExtCC Extrema_CCLocFOfLocECC [NewLine] # Extrema_FuncExtCC_hxx < Extrema_CCLocFOfLocECC . hxx > [NewLine] # < Extrema_FuncExtCC . lxx > [NewLine] # Curve1 [NewLine] # Curve1_hxx [NewLine] # Tool1 [NewLine] # Tool1_hxx [NewLine] # Curve2 [NewLine] # Curve2_hxx [NewLine] # Tool2 [NewLine] # Tool2_hxx [NewLine] # POnC [NewLine] # POnC_hxx [NewLine] # Pnt [NewLine] # Pnt_hxx [NewLine] # Vec [NewLine] # Vec_hxx [NewLine] # Extrema_SeqPOnC [NewLine] # Extrema_SeqPOnC_hxx [NewLine] # Extrema_FuncExtCC [NewLine] # Extrema_FuncExtCC_hxx [NewLine] #  _Extrema_CCLocFOfLocECC_HeaderFile [NewLine]
## Error: did not expect <!!!
