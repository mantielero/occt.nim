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
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of math_Matrix"
type
  ExtremaCCLocFOfLocECC2d* {.importcpp: "Extrema_CCLocFOfLocECC2d",
                            header: "Extrema_CCLocFOfLocECC2d.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc newExtremaCCLocFOfLocECC2d*(thetol: cfloat = 1.0e-10): ExtremaCCLocFOfLocECC2d {.
    cdecl, constructor, importcpp: "Extrema_CCLocFOfLocECC2d(@)", dynlib: tkgeombase.}
proc newExtremaCCLocFOfLocECC2d*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d;
                                thetol: cfloat = 1.0e-10): ExtremaCCLocFOfLocECC2d {.
    cdecl, constructor, importcpp: "Extrema_CCLocFOfLocECC2d(@)", dynlib: tkgeombase.}
proc setCurve*(this: var ExtremaCCLocFOfLocECC2d; theRank: cint; c1: Adaptor2dCurve2d) {.
    cdecl, importcpp: "SetCurve", dynlib: tkgeombase.}
proc setTolerance*(this: var ExtremaCCLocFOfLocECC2d; theTol: cfloat) {.cdecl,
    importcpp: "SetTolerance", dynlib: tkgeombase.}
proc nbVariables*(this: ExtremaCCLocFOfLocECC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkgeombase.}
proc nbEquations*(this: ExtremaCCLocFOfLocECC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkgeombase.}
proc value*(this: var ExtremaCCLocFOfLocECC2d; uv: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", dynlib: tkgeombase.}
proc derivatives*(this: var ExtremaCCLocFOfLocECC2d; uv: MathVector;
                 df: var MathMatrix): bool {.cdecl, importcpp: "Derivatives",
    dynlib: tkgeombase.}
proc values*(this: var ExtremaCCLocFOfLocECC2d; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkgeombase.}
proc getStateNumber*(this: var ExtremaCCLocFOfLocECC2d): cint {.cdecl,
    importcpp: "GetStateNumber", dynlib: tkgeombase.}
proc nbExt*(this: ExtremaCCLocFOfLocECC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaCCLocFOfLocECC2d; n: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "SquareDistance", dynlib: tkgeombase.}
proc points*(this: ExtremaCCLocFOfLocECC2d; n: cint; p1: var ExtremaPOnCurv2d;
            p2: var ExtremaPOnCurv2d) {.noSideEffect, cdecl, importcpp: "Points",
                                     dynlib: tkgeombase.}
proc curvePtr*(this: ExtremaCCLocFOfLocECC2d; theRank: cint): pointer {.noSideEffect,
    cdecl, importcpp: "CurvePtr", dynlib: tkgeombase.}
proc tolerance*(this: ExtremaCCLocFOfLocECC2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", dynlib: tkgeombase.}
proc subIntervalInitialize*(this: var ExtremaCCLocFOfLocECC2d;
                           theUfirst: MathVector; theUlast: MathVector) {.cdecl,
    importcpp: "SubIntervalInitialize", dynlib: tkgeombase.}
proc searchOfTolerance*(this: var ExtremaCCLocFOfLocECC2d; c: pointer): cfloat {.cdecl,
    importcpp: "SearchOfTolerance", dynlib: tkgeombase.}
##  #define Curve1 Adaptor2d_Curve2d
##  #define Curve1_hxx <Adaptor2d_Curve2d.hxx>
##  #define Tool1 Extrema_Curve2dTool
##  #define Tool1_hxx <Extrema_Curve2dTool.hxx>
##  #define Curve2 Adaptor2d_Curve2d
##  #define Curve2_hxx <Adaptor2d_Curve2d.hxx>
##  #define Tool2 Extrema_Curve2dTool
##  #define Tool2_hxx <Extrema_Curve2dTool.hxx>
##  #define POnC Extrema_POnCurv2d
##  #define POnC_hxx <Extrema_POnCurv2d.hxx>
##  #define Pnt gp_Pnt2d
##  #define Pnt_hxx <gp_Pnt2d.hxx>
##  #define Vec gp_Vec2d
##  #define Vec_hxx <gp_Vec2d.hxx>
##  #define Extrema_SeqPOnC Extrema_SequenceOfPOnCurv2d
##  #define Extrema_SeqPOnC_hxx <Extrema_SequenceOfPOnCurv2d.hxx>
##  #define Extrema_FuncExtCC Extrema_CCLocFOfLocECC2d
##  #define Extrema_FuncExtCC_hxx <Extrema_CCLocFOfLocECC2d.hxx>
