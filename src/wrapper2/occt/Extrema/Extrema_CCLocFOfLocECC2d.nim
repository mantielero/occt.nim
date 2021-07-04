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

## !!!Ignored construct:  # _Extrema_CCLocFOfLocECC2d_HeaderFile [NewLine] # _Extrema_CCLocFOfLocECC2d_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../gp/gp_Pnt2d.hxx [NewLine] # ../gp/gp_Vec2d.hxx [NewLine] # ../TColStd/TColStd_SequenceOfReal.hxx [NewLine] # Extrema_SequenceOfPOnCurv2d.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../math/math_FunctionSetWithDerivatives.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of math_Matrix"
type
  Extrema_CCLocFOfLocECC2d* {.importcpp: "Extrema_CCLocFOfLocECC2d",
                             header: "Extrema_CCLocFOfLocECC2d.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructExtrema_CCLocFOfLocECC2d*(thetol: Standard_Real = 1.0e-10): Extrema_CCLocFOfLocECC2d {.
    constructor, importcpp: "Extrema_CCLocFOfLocECC2d(@)",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc constructExtrema_CCLocFOfLocECC2d*(C1: Adaptor2d_Curve2d;
                                       C2: Adaptor2d_Curve2d;
                                       thetol: Standard_Real = 1.0e-10): Extrema_CCLocFOfLocECC2d {.
    constructor, importcpp: "Extrema_CCLocFOfLocECC2d(@)",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SetCurve*(this: var Extrema_CCLocFOfLocECC2d; theRank: Standard_Integer;
              C1: Adaptor2d_Curve2d) {.importcpp: "SetCurve",
                                     header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SetTolerance*(this: var Extrema_CCLocFOfLocECC2d; theTol: Standard_Real) {.
    importcpp: "SetTolerance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc NbVariables*(this: Extrema_CCLocFOfLocECC2d): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc NbEquations*(this: Extrema_CCLocFOfLocECC2d): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Value*(this: var Extrema_CCLocFOfLocECC2d; UV: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Derivatives*(this: var Extrema_CCLocFOfLocECC2d; UV: math_Vector;
                 DF: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Values*(this: var Extrema_CCLocFOfLocECC2d; UV: math_Vector; F: var math_Vector;
            DF: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc GetStateNumber*(this: var Extrema_CCLocFOfLocECC2d): Standard_Integer {.
    importcpp: "GetStateNumber", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc NbExt*(this: Extrema_CCLocFOfLocECC2d): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SquareDistance*(this: Extrema_CCLocFOfLocECC2d; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Points*(this: Extrema_CCLocFOfLocECC2d; N: Standard_Integer;
            P1: var Extrema_POnCurv2d; P2: var Extrema_POnCurv2d) {.noSideEffect,
    importcpp: "Points", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc CurvePtr*(this: Extrema_CCLocFOfLocECC2d; theRank: Standard_Integer): Standard_Address {.
    noSideEffect, importcpp: "CurvePtr", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Tolerance*(this: Extrema_CCLocFOfLocECC2d): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SubIntervalInitialize*(this: var Extrema_CCLocFOfLocECC2d;
                           theUfirst: math_Vector; theUlast: math_Vector) {.
    importcpp: "SubIntervalInitialize", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SearchOfTolerance*(this: var Extrema_CCLocFOfLocECC2d; C: Standard_Address): Standard_Real {.
    importcpp: "SearchOfTolerance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
## !!!Ignored construct:  # Curve1 Adaptor2d_Curve2d [NewLine] # Curve1_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # Tool1 Extrema_Curve2dTool [NewLine] # Tool1_hxx < Extrema_Curve2dTool . hxx > [NewLine] # Curve2 Adaptor2d_Curve2d [NewLine] # Curve2_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # Tool2 Extrema_Curve2dTool [NewLine] # Tool2_hxx < Extrema_Curve2dTool . hxx > [NewLine] # POnC Extrema_POnCurv2d [NewLine] # POnC_hxx < Extrema_POnCurv2d . hxx > [NewLine] # Pnt gp_Pnt2d [NewLine] # Pnt_hxx < gp_Pnt2d . hxx > [NewLine] # Vec gp_Vec2d [NewLine] # Vec_hxx < gp_Vec2d . hxx > [NewLine] # Extrema_SeqPOnC Extrema_SequenceOfPOnCurv2d [NewLine] # Extrema_SeqPOnC_hxx < Extrema_SequenceOfPOnCurv2d . hxx > [NewLine] # Extrema_FuncExtCC Extrema_CCLocFOfLocECC2d [NewLine] # Extrema_FuncExtCC_hxx < Extrema_CCLocFOfLocECC2d . hxx > [NewLine] # < Extrema_FuncExtCC . lxx > [NewLine] # Curve1 [NewLine] # Curve1_hxx [NewLine] # Tool1 [NewLine] # Tool1_hxx [NewLine] # Curve2 [NewLine] # Curve2_hxx [NewLine] # Tool2 [NewLine] # Tool2_hxx [NewLine] # POnC [NewLine] # POnC_hxx [NewLine] # Pnt [NewLine] # Pnt_hxx [NewLine] # Vec [NewLine] # Vec_hxx [NewLine] # Extrema_SeqPOnC [NewLine] # Extrema_SeqPOnC_hxx [NewLine] # Extrema_FuncExtCC [NewLine] # Extrema_FuncExtCC_hxx [NewLine] #  _Extrema_CCLocFOfLocECC2d_HeaderFile [NewLine]
## Error: did not expect <!!!
