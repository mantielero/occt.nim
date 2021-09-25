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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of AdvApprox_Cutting"
type
  AdvApproxApproxAFunction* {.importcpp: "AdvApprox_ApproxAFunction",
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


proc constructAdvApproxApproxAFunction*(num1DSS: int; num2DSS: int; num3DSS: int;
                                       oneDTol: Handle[TColStdHArray1OfReal];
                                       twoDTol: Handle[TColStdHArray1OfReal];
                                       threeDTol: Handle[TColStdHArray1OfReal];
                                       first: float; last: float;
                                       continuity: GeomAbsShape; maxDeg: int;
                                       maxSeg: int;
                                       `func`: AdvApproxEvaluatorFunction): AdvApproxApproxAFunction {.
    constructor, importcpp: "AdvApprox_ApproxAFunction(@)",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc constructAdvApproxApproxAFunction*(num1DSS: int; num2DSS: int; num3DSS: int;
                                       oneDTol: Handle[TColStdHArray1OfReal];
                                       twoDTol: Handle[TColStdHArray1OfReal];
                                       threeDTol: Handle[TColStdHArray1OfReal];
                                       first: float; last: float;
                                       continuity: GeomAbsShape; maxDeg: int;
                                       maxSeg: int;
                                       `func`: AdvApproxEvaluatorFunction;
                                       cutTool: AdvApproxCutting): AdvApproxApproxAFunction {.
    constructor, importcpp: "AdvApprox_ApproxAFunction(@)",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc approximation*(totalDimension: int; totalNumSS: int;
                   localDimension: TColStdArray1OfInteger; first: float;
                   last: float; evaluator: var AdvApproxEvaluatorFunction;
                   cutTool: AdvApproxCutting; continuityOrder: int;
                   numMaxCoeffs: int; maxSegments: int;
                   tolerancesArray: TColStdArray1OfReal; codePrecis: int;
                   numCurves: var int;
                   numCoeffPerCurveArray: var TColStdArray1OfInteger;
                   localCoefficientArray: var TColStdArray1OfReal;
                   intervalsArray: var TColStdArray1OfReal;
                   errorMaxArray: var TColStdArray1OfReal;
                   averageErrorArray: var TColStdArray1OfReal; errorCode: var int) {.
    importcpp: "AdvApprox_ApproxAFunction::Approximation(@)",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc isDone*(this: AdvApproxApproxAFunction): bool {.noSideEffect,
    importcpp: "IsDone", header: "AdvApprox_ApproxAFunction.hxx".}
proc hasResult*(this: AdvApproxApproxAFunction): bool {.noSideEffect,
    importcpp: "HasResult", header: "AdvApprox_ApproxAFunction.hxx".}
proc poles1d*(this: AdvApproxApproxAFunction): Handle[TColStdHArray2OfReal] {.
    noSideEffect, importcpp: "Poles1d", header: "AdvApprox_ApproxAFunction.hxx".}
proc poles2d*(this: AdvApproxApproxAFunction): Handle[TColgpHArray2OfPnt2d] {.
    noSideEffect, importcpp: "Poles2d", header: "AdvApprox_ApproxAFunction.hxx".}
proc poles*(this: AdvApproxApproxAFunction): Handle[TColgpHArray2OfPnt] {.
    noSideEffect, importcpp: "Poles", header: "AdvApprox_ApproxAFunction.hxx".}
proc nbPoles*(this: AdvApproxApproxAFunction): int {.noSideEffect,
    importcpp: "NbPoles", header: "AdvApprox_ApproxAFunction.hxx".}
proc poles1d*(this: AdvApproxApproxAFunction; index: int; p: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Poles1d", header: "AdvApprox_ApproxAFunction.hxx".}
proc poles2d*(this: AdvApproxApproxAFunction; index: int; p: var TColgpArray1OfPnt2d) {.
    noSideEffect, importcpp: "Poles2d", header: "AdvApprox_ApproxAFunction.hxx".}
proc poles*(this: AdvApproxApproxAFunction; index: int; p: var TColgpArray1OfPnt) {.
    noSideEffect, importcpp: "Poles", header: "AdvApprox_ApproxAFunction.hxx".}
proc degree*(this: AdvApproxApproxAFunction): int {.noSideEffect,
    importcpp: "Degree", header: "AdvApprox_ApproxAFunction.hxx".}
proc nbKnots*(this: AdvApproxApproxAFunction): int {.noSideEffect,
    importcpp: "NbKnots", header: "AdvApprox_ApproxAFunction.hxx".}
proc numSubSpaces*(this: AdvApproxApproxAFunction; dimension: int): int {.
    noSideEffect, importcpp: "NumSubSpaces",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc knots*(this: AdvApproxApproxAFunction): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "Knots", header: "AdvApprox_ApproxAFunction.hxx".}
proc multiplicities*(this: AdvApproxApproxAFunction): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "Multiplicities",
                              header: "AdvApprox_ApproxAFunction.hxx".}
proc maxError*(this: AdvApproxApproxAFunction; dimension: int): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "MaxError",
                           header: "AdvApprox_ApproxAFunction.hxx".}
proc averageError*(this: AdvApproxApproxAFunction; dimension: int): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "AverageError",
                           header: "AdvApprox_ApproxAFunction.hxx".}
proc maxError*(this: AdvApproxApproxAFunction; dimension: int; index: int): float {.
    noSideEffect, importcpp: "MaxError", header: "AdvApprox_ApproxAFunction.hxx".}
proc averageError*(this: AdvApproxApproxAFunction; dimension: int; index: int): float {.
    noSideEffect, importcpp: "AverageError",
    header: "AdvApprox_ApproxAFunction.hxx".}
proc dump*(this: AdvApproxApproxAFunction; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AdvApprox_ApproxAFunction.hxx".}
