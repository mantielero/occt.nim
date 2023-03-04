import extrema_types
import ../tkmath/math/math_types
import ../tkg2d/adaptor2d/adaptor2d_types
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

## !!!Ignored construct:  # _Extrema_CCLocFOfLocECC2d_HeaderFile [NewLine] # _Extrema_CCLocFOfLocECC2d_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < float . hxx > [NewLine] # < Pnt2dObj . hxx > [NewLine] # < Vec2dObj . hxx > [NewLine] # < TColStd_SequenceOfReal . hxx > [NewLine] # < Extrema_SequenceOfPOnCurv2d . hxx > [NewLine] # < int . hxx > [NewLine] # < Math_FunctionSetWithDerivatives . hxx > [NewLine] # < bool . hxx > [NewLine] # < Math_Vector . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of Pnt2dObj"
discard "forward decl of Vec2dObj"
discard "forward decl of Math_Matrix"

proc newExtrema_CCLocFOfLocECC2d*(thetol: cfloat = 1.0e-10): Extrema_CCLocFOfLocECC2d {.
    cdecl, constructor, importcpp: "Extrema_CCLocFOfLocECC2d(@)",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc newExtrema_CCLocFOfLocECC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d;
                                 thetol: cfloat = 1.0e-10): Extrema_CCLocFOfLocECC2d {.
    cdecl, constructor, importcpp: "Extrema_CCLocFOfLocECC2d(@)",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SetCurve*(this: var Extrema_CCLocFOfLocECC2d; theRank: cint;
              C1: Adaptor2d_Curve2d) {.cdecl, importcpp: "SetCurve",
                                     header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SetTolerance*(this: var Extrema_CCLocFOfLocECC2d; theTol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc NbVariables*(this: Extrema_CCLocFOfLocECC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc NbEquations*(this: Extrema_CCLocFOfLocECC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Value*(this: var Extrema_CCLocFOfLocECC2d; UV: Math_Vector; F: var Math_Vector): bool {.
    cdecl, importcpp: "Value", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Derivatives*(this: var Extrema_CCLocFOfLocECC2d; UV: Math_Vector;
                 DF: var Math_Matrix): bool {.cdecl, importcpp: "Derivatives",
    header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Values*(this: var Extrema_CCLocFOfLocECC2d; UV: Math_Vector; F: var Math_Vector;
            DF: var Math_Matrix): bool {.cdecl, importcpp: "Values",
                                     header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc GetStateNumber*(this: var Extrema_CCLocFOfLocECC2d): cint {.cdecl,
    importcpp: "GetStateNumber", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc NbExt*(this: Extrema_CCLocFOfLocECC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SquareDistance*(this: Extrema_CCLocFOfLocECC2d; N: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "SquareDistance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Points*(this: Extrema_CCLocFOfLocECC2d; N: cint; P1: var Extrema_POnCurv2d;
            P2: var Extrema_POnCurv2d) {.noSideEffect, cdecl, importcpp: "Points",
                                      header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc CurvePtr*(this: Extrema_CCLocFOfLocECC2d; theRank: cint): pointer {.noSideEffect,
    cdecl, importcpp: "CurvePtr", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc Tolerance*(this: Extrema_CCLocFOfLocECC2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SubIntervalInitialize*(this: var Extrema_CCLocFOfLocECC2d;
                           theUfirst: Math_Vector; theUlast: Math_Vector) {.cdecl,
    importcpp: "SubIntervalInitialize", header: "Extrema_CCLocFOfLocECC2d.hxx".}
proc SearchOfTolerance*(this: var Extrema_CCLocFOfLocECC2d; C: pointer): cfloat {.
    cdecl, importcpp: "SearchOfTolerance", header: "Extrema_CCLocFOfLocECC2d.hxx".}
## !!!Ignored construct:  # Curve1 Adaptor2d_Curve2d [NewLine] # Curve1_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # Tool1 Extrema_Curve2dTool [NewLine] # Tool1_hxx < Extrema_Curve2dTool . hxx > [NewLine] # Curve2 Adaptor2d_Curve2d [NewLine] # Curve2_hxx < Adaptor2d_Curve2d . hxx > [NewLine] # Tool2 Extrema_Curve2dTool [NewLine] # Tool2_hxx < Extrema_Curve2dTool . hxx > [NewLine] # POnC Extrema_POnCurv2d [NewLine] # POnC_hxx < Extrema_POnCurv2d . hxx > [NewLine] # Pnt Pnt2dObj [NewLine] # Pnt_hxx < Pnt2dObj . hxx > [NewLine] # Vec Vec2dObj [NewLine] # Vec_hxx < Vec2dObj . hxx > [NewLine] # Extrema_SeqPOnC Extrema_SequenceOfPOnCurv2d [NewLine] # Extrema_SeqPOnC_hxx < Extrema_SequenceOfPOnCurv2d . hxx > [NewLine] # Extrema_FuncExtCC Extrema_CCLocFOfLocECC2d [NewLine] # Extrema_FuncExtCC_hxx < Extrema_CCLocFOfLocECC2d . hxx > [NewLine] # < Extrema_FuncExtCC . lxx > [NewLine] # Curve1 [NewLine] # Curve1_hxx [NewLine] # Tool1 [NewLine] # Tool1_hxx [NewLine] # Curve2 [NewLine] # Curve2_hxx [NewLine] # Tool2 [NewLine] # Tool2_hxx [NewLine] # POnC [NewLine] # POnC_hxx [NewLine] # Pnt [NewLine] # Pnt_hxx [NewLine] # Vec [NewLine] # Vec_hxx [NewLine] # Extrema_SeqPOnC [NewLine] # Extrema_SeqPOnC_hxx [NewLine] # Extrema_FuncExtCC [NewLine] # Extrema_FuncExtCC_hxx [NewLine] #  _Extrema_CCLocFOfLocECC2d_HeaderFile
## Error: did not expect <!!!
