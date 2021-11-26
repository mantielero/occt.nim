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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of math_Matrix"
type
  ExtremaCCLocFOfLocECC* {.importcpp: "Extrema_CCLocFOfLocECC",
                          header: "Extrema_CCLocFOfLocECC.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc newExtremaCCLocFOfLocECC*(thetol: cfloat = 1.0e-10): ExtremaCCLocFOfLocECC {.
    cdecl, constructor, importcpp: "Extrema_CCLocFOfLocECC(@)", dynlib: tkgeombase.}
proc newExtremaCCLocFOfLocECC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve;
                              thetol: cfloat = 1.0e-10): ExtremaCCLocFOfLocECC {.
    cdecl, constructor, importcpp: "Extrema_CCLocFOfLocECC(@)", dynlib: tkgeombase.}
proc setCurve*(this: var ExtremaCCLocFOfLocECC; theRank: cint; c1: Adaptor3dCurve) {.
    cdecl, importcpp: "SetCurve", dynlib: tkgeombase.}
proc setTolerance*(this: var ExtremaCCLocFOfLocECC; theTol: cfloat) {.cdecl,
    importcpp: "SetTolerance", dynlib: tkgeombase.}
proc nbVariables*(this: ExtremaCCLocFOfLocECC): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkgeombase.}
proc nbEquations*(this: ExtremaCCLocFOfLocECC): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkgeombase.}
proc value*(this: var ExtremaCCLocFOfLocECC; uv: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", dynlib: tkgeombase.}
proc derivatives*(this: var ExtremaCCLocFOfLocECC; uv: MathVector; df: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkgeombase.}
proc values*(this: var ExtremaCCLocFOfLocECC; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkgeombase.}
proc getStateNumber*(this: var ExtremaCCLocFOfLocECC): cint {.cdecl,
    importcpp: "GetStateNumber", dynlib: tkgeombase.}
proc nbExt*(this: ExtremaCCLocFOfLocECC): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaCCLocFOfLocECC; n: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "SquareDistance", dynlib: tkgeombase.}
proc points*(this: ExtremaCCLocFOfLocECC; n: cint; p1: var ExtremaPOnCurv;
            p2: var ExtremaPOnCurv) {.noSideEffect, cdecl, importcpp: "Points",
                                   dynlib: tkgeombase.}
proc curvePtr*(this: ExtremaCCLocFOfLocECC; theRank: cint): pointer {.noSideEffect,
    cdecl, importcpp: "CurvePtr", dynlib: tkgeombase.}
proc tolerance*(this: ExtremaCCLocFOfLocECC): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", dynlib: tkgeombase.}
proc subIntervalInitialize*(this: var ExtremaCCLocFOfLocECC; theUfirst: MathVector;
                           theUlast: MathVector) {.cdecl,
    importcpp: "SubIntervalInitialize", dynlib: tkgeombase.}
proc searchOfTolerance*(this: var ExtremaCCLocFOfLocECC; c: pointer): cfloat {.cdecl,
    importcpp: "SearchOfTolerance", dynlib: tkgeombase.}
##  #define Curve1 Adaptor3d_Curve
##  #define Curve1_hxx <Adaptor3d_Curve.hxx>
##  #define Tool1 Extrema_CurveTool
##  #define Tool1_hxx <Extrema_CurveTool.hxx>
##  #define Curve2 Adaptor3d_Curve
##  #define Curve2_hxx <Adaptor3d_Curve.hxx>
##  #define Tool2 Extrema_CurveTool
##  #define Tool2_hxx <Extrema_CurveTool.hxx>
##  #define POnC Extrema_POnCurv
##  #define POnC_hxx <Extrema_POnCurv.hxx>
##  #define Pnt gp_Pnt
##  #define Pnt_hxx <gp_Pnt.hxx>
##  #define Vec gp_Vec
##  #define Vec_hxx <gp_Vec.hxx>
##  #define Extrema_SeqPOnC Extrema_SequenceOfPOnCurv
##  #define Extrema_SeqPOnC_hxx <Extrema_SequenceOfPOnCurv.hxx>
##  #define Extrema_FuncExtCC Extrema_CCLocFOfLocECC
##  #define Extrema_FuncExtCC_hxx <Extrema_CCLocFOfLocECC.hxx>
