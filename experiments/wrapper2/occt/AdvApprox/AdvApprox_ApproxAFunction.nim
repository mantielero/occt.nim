##  Created on: 1995-05-29
##  Created by: Xavier BENVENISTE
##  Copyright (c) 1995-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfReal, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HArray2OfReal, ../TColgp/TColgp_HArray2OfPnt2d,
  ../TColgp/TColgp_HArray2OfPnt, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_Address, AdvApprox_EvaluatorFunction,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_Array1OfReal,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfPnt,
  ../Standard/Standard_OStream

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of AdvApprox_Cutting"
type
  AdvApprox_ApproxAFunction* {.importcpp: "AdvApprox_ApproxAFunction",
                              header: "AdvApprox_ApproxAFunction.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Constructs
                                                                                    ## approximator
                                                                                    ## tool.
                                                                                    ##
                                                                                    ## !
                                                                                    ##
                                                                                    ## !
                                                                                    ## Warning:
                                                                                    ##
                                                                                    ## !
                                                                                    ## the
                                                                                    ## Func
                                                                                    ## should
                                                                                    ## be
                                                                                    ## valid
                                                                                    ## reference
                                                                                    ## to
                                                                                    ## object
                                                                                    ## of
                                                                                    ## type
                                                                                    ##
                                                                                    ## !
                                                                                    ## inherited
                                                                                    ## from
                                                                                    ## class
                                                                                    ## EvaluatorFunction
                                                                                    ## from
                                                                                    ## Approx
                                                                                    ##
                                                                                    ## !
                                                                                    ## with
                                                                                    ## life
                                                                                    ## time
                                                                                    ## longer
                                                                                    ## than
                                                                                    ## that
                                                                                    ## of
                                                                                    ## the
                                                                                    ## approximator
                                                                                    ## tool;
                                                                                    ##
                                                                                    ## !
                                                                                    ##
                                                                                    ## !
                                                                                    ## the
                                                                                    ## result
                                                                                    ## should
                                                                                    ## be
                                                                                    ## formatted
                                                                                    ## in
                                                                                    ## the
                                                                                    ## following
                                                                                    ## way
                                                                                    ## :
                                                                                    ##
                                                                                    ## !
                                                                                    ## <--Num1DSS-->
                                                                                    ## <--2
                                                                                    ## *
                                                                                    ## Num2DSS-->
                                                                                    ## <--3
                                                                                    ## *
                                                                                    ## Num3DSS-->
                                                                                    ##
                                                                                    ## !
                                                                                    ## R[0]
                                                                                    ## ....
                                                                                    ## R[Num1DSS].....
                                                                                    ## R[Dimension-1]
                                                                                    ##
                                                                                    ## !
                                                                                    ##
                                                                                    ## !
                                                                                    ## the
                                                                                    ## order
                                                                                    ## in
                                                                                    ## which
                                                                                    ## each
                                                                                    ## Subspace
                                                                                    ## appears
                                                                                    ## should
                                                                                    ## be
                                                                                    ## consistent
                                                                                    ##
                                                                                    ## !
                                                                                    ## with
                                                                                    ## the
                                                                                    ## tolerances
                                                                                    ## given
                                                                                    ## in
                                                                                    ## the
                                                                                    ## create
                                                                                    ## function
                                                                                    ## and
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## results
                                                                                    ## will
                                                                                    ## be
                                                                                    ## given
                                                                                    ## in
                                                                                    ## that
                                                                                    ## order
                                                                                    ## as
                                                                                    ## well
                                                                                    ## that
                                                                                    ## is
                                                                                    ## :
                                                                                    ##
                                                                                    ## !
                                                                                    ## Curve2d(n)
                                                                                    ## will
                                                                                    ## correspond
                                                                                    ## to
                                                                                    ## the
                                                                                    ## nth
                                                                                    ## entry
                                                                                    ##
                                                                                    ## !
                                                                                    ## described
                                                                                    ## by
                                                                                    ## Num2DSS,
                                                                                    ## Curve(n)
                                                                                    ## will
                                                                                    ## correspond
                                                                                    ## to
                                                                                    ##
                                                                                    ## !
                                                                                    ## the
                                                                                    ## nth
                                                                                    ## entry
                                                                                    ## described
                                                                                    ## by
                                                                                    ## Num3DSS
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## same
                                                                                    ## type
                                                                                    ## of
                                                                                    ## schema
                                                                                    ## applies
                                                                                    ## to
                                                                                    ## the
                                                                                    ## Poles1d,
                                                                                    ## Poles2d
                                                                                    ## and
                                                                                    ##
                                                                                    ## !
                                                                                    ## Poles.


proc constructAdvApprox_ApproxAFunction*(Num1DSS: Standard_Integer;
                                        Num2DSS: Standard_Integer;
                                        Num3DSS: Standard_Integer;
                                        OneDTol: handle[TColStd_HArray1OfReal];
                                        TwoDTol: handle[TColStd_HArray1OfReal];
    ThreeDTol: handle[TColStd_HArray1OfReal]; First: Standard_Real;
                                        Last: Standard_Real;
                                        Continuity: GeomAbs_Shape;
                                        MaxDeg: Standard_Integer;
                                        MaxSeg: Standard_Integer;
                                        Func: AdvApprox_EvaluatorFunction): AdvApprox_ApproxAFunction {.
    constructor, importcpp: "AdvApprox_ApproxAFunction(@)",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc constructAdvApprox_ApproxAFunction*(Num1DSS: Standard_Integer;
                                        Num2DSS: Standard_Integer;
                                        Num3DSS: Standard_Integer;
                                        OneDTol: handle[TColStd_HArray1OfReal];
                                        TwoDTol: handle[TColStd_HArray1OfReal];
    ThreeDTol: handle[TColStd_HArray1OfReal]; First: Standard_Real;
                                        Last: Standard_Real;
                                        Continuity: GeomAbs_Shape;
                                        MaxDeg: Standard_Integer;
                                        MaxSeg: Standard_Integer;
                                        Func: AdvApprox_EvaluatorFunction;
                                        CutTool: AdvApprox_Cutting): AdvApprox_ApproxAFunction {.
    constructor, importcpp: "AdvApprox_ApproxAFunction(@)",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc Approximation*(TotalDimension: Standard_Integer; TotalNumSS: Standard_Integer;
                   LocalDimension: TColStd_Array1OfInteger; First: Standard_Real;
                   Last: Standard_Real;
                   Evaluator: var AdvApprox_EvaluatorFunction;
                   CutTool: AdvApprox_Cutting; ContinuityOrder: Standard_Integer;
                   NumMaxCoeffs: Standard_Integer; MaxSegments: Standard_Integer;
                   TolerancesArray: TColStd_Array1OfReal;
                   code_precis: Standard_Integer; NumCurves: var Standard_Integer;
                   NumCoeffPerCurveArray: var TColStd_Array1OfInteger;
                   LocalCoefficientArray: var TColStd_Array1OfReal;
                   IntervalsArray: var TColStd_Array1OfReal;
                   ErrorMaxArray: var TColStd_Array1OfReal;
                   AverageErrorArray: var TColStd_Array1OfReal;
                   ErrorCode: var Standard_Integer) {.
    importcpp: "AdvApprox_ApproxAFunction::Approximation(@)",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc IsDone*(this: AdvApprox_ApproxAFunction): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "AdvApprox_ApproxAFunction.hxx".}
proc HasResult*(this: AdvApprox_ApproxAFunction): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "AdvApprox_ApproxAFunction.hxx".}
proc Poles1d*(this: AdvApprox_ApproxAFunction): handle[TColStd_HArray2OfReal] {.
    noSideEffect, importcpp: "Poles1d", header: "AdvApprox_ApproxAFunction.hxx".}
proc Poles2d*(this: AdvApprox_ApproxAFunction): handle[TColgp_HArray2OfPnt2d] {.
    noSideEffect, importcpp: "Poles2d", header: "AdvApprox_ApproxAFunction.hxx".}
proc Poles*(this: AdvApprox_ApproxAFunction): handle[TColgp_HArray2OfPnt] {.
    noSideEffect, importcpp: "Poles", header: "AdvApprox_ApproxAFunction.hxx".}
proc NbPoles*(this: AdvApprox_ApproxAFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "AdvApprox_ApproxAFunction.hxx".}
proc Poles1d*(this: AdvApprox_ApproxAFunction; Index: Standard_Integer;
             P: var TColStd_Array1OfReal) {.noSideEffect, importcpp: "Poles1d",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc Poles2d*(this: AdvApprox_ApproxAFunction; Index: Standard_Integer;
             P: var TColgp_Array1OfPnt2d) {.noSideEffect, importcpp: "Poles2d",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc Poles*(this: AdvApprox_ApproxAFunction; Index: Standard_Integer;
           P: var TColgp_Array1OfPnt) {.noSideEffect, importcpp: "Poles",
                                     header: "AdvApprox_ApproxAFunction.hxx".}
proc Degree*(this: AdvApprox_ApproxAFunction): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "AdvApprox_ApproxAFunction.hxx".}
proc NbKnots*(this: AdvApprox_ApproxAFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "AdvApprox_ApproxAFunction.hxx".}
proc NumSubSpaces*(this: AdvApprox_ApproxAFunction; Dimension: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NumSubSpaces",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc Knots*(this: AdvApprox_ApproxAFunction): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "Knots", header: "AdvApprox_ApproxAFunction.hxx".}
proc Multiplicities*(this: AdvApprox_ApproxAFunction): handle[
    TColStd_HArray1OfInteger] {.noSideEffect, importcpp: "Multiplicities",
                               header: "AdvApprox_ApproxAFunction.hxx".}
proc MaxError*(this: AdvApprox_ApproxAFunction; Dimension: Standard_Integer): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "MaxError",
                            header: "AdvApprox_ApproxAFunction.hxx".}
proc AverageError*(this: AdvApprox_ApproxAFunction; Dimension: Standard_Integer): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "AverageError",
                            header: "AdvApprox_ApproxAFunction.hxx".}
proc MaxError*(this: AdvApprox_ApproxAFunction; Dimension: Standard_Integer;
              Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "MaxError", header: "AdvApprox_ApproxAFunction.hxx".}
proc AverageError*(this: AdvApprox_ApproxAFunction; Dimension: Standard_Integer;
                  Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "AverageError", header: "AdvApprox_ApproxAFunction.hxx".}
proc Dump*(this: AdvApprox_ApproxAFunction; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "AdvApprox_ApproxAFunction.hxx".}