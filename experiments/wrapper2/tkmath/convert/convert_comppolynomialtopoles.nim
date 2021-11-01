##  Created on: 1995-05-30
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
type
  ConvertCompPolynomialToPoles* {.importcpp: "Convert_CompPolynomialToPoles",
                                 header: "Convert_CompPolynomialToPoles.hxx",
                                 bycopy.} = object ## ! Warning!
                                                ## ! Continuity can be at MOST the maximum degree of
                                                ## ! the polynomial functions
                                                ## ! TrueIntervals :
                                                ## ! this is the true parameterisation for the composite curve
                                                ## ! that is : the curve has myContinuity if the nth curve
                                                ## ! is parameterized between myTrueIntervals(n) and myTrueIntervals(n+1)
                                                ## !
                                                ## ! Coefficients have to be the implicit "c form":
                                                ## !
                                                ## Coefficients[Numcurves][MaxDegree+1][Dimension]
                                                ## !
                                                ## ! Warning!
                                                ## ! The NumberOfCoefficient of an polynome is his degree + 1
                                                ## ! Example: To convert the linear function f(x) = 2*x + 1 on the
                                                ## ! domaine [2,5] to BSpline with the bound [-1,1]. Arguments are :
                                                ## ! NumCurves  = 1;
                                                ## ! Continuity = 1;
                                                ## ! Dimension  = 1;
                                                ## ! MaxDegree  = 1;
                                                ## ! NumCoeffPerCurve [1] = {2};
                                                ## ! Coefficients[2] = {1, 2};
                                                ## ! PolynomialIntervals[1,2] = {{2,5}}
                                                ## ! TrueIntervals[2] = {-1, 1}


proc newConvertCompPolynomialToPoles*(numCurves: cint; continuity: cint;
                                     dimension: cint; maxDegree: cint;
    numCoeffPerCurve: Handle[TColStdHArray1OfInteger]; coefficients: Handle[
    TColStdHArray1OfReal]; polynomialIntervals: Handle[TColStdHArray2OfReal];
    trueIntervals: Handle[TColStdHArray1OfReal]): ConvertCompPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_CompPolynomialToPoles(@)",
    dynlib: tkmath.}
proc newConvertCompPolynomialToPoles*(numCurves: cint; dimension: cint;
                                     maxDegree: cint;
                                     continuity: TColStdArray1OfInteger;
                                     numCoeffPerCurve: TColStdArray1OfInteger;
                                     coefficients: TColStdArray1OfReal;
                                     polynomialIntervals: TColStdArray2OfReal;
                                     trueIntervals: TColStdArray1OfReal): ConvertCompPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_CompPolynomialToPoles(@)",
    dynlib: tkmath.}
proc newConvertCompPolynomialToPoles*(dimension: cint; maxDegree: cint; degree: cint;
                                     coefficients: TColStdArray1OfReal;
                                     polynomialIntervals: TColStdArray1OfReal;
                                     trueIntervals: TColStdArray1OfReal): ConvertCompPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_CompPolynomialToPoles(@)",
    dynlib: tkmath.}
proc nbPoles*(this: ConvertCompPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkmath.}
proc poles*(this: ConvertCompPolynomialToPoles;
           poles: var Handle[TColStdHArray2OfReal]) {.noSideEffect, cdecl,
    importcpp: "Poles", dynlib: tkmath.}
proc degree*(this: ConvertCompPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "Degree", dynlib: tkmath.}
proc nbKnots*(this: ConvertCompPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", dynlib: tkmath.}
proc knots*(this: ConvertCompPolynomialToPoles; k: var Handle[TColStdHArray1OfReal]) {.
    noSideEffect, cdecl, importcpp: "Knots", dynlib: tkmath.}
proc multiplicities*(this: ConvertCompPolynomialToPoles;
                    m: var Handle[TColStdHArray1OfInteger]) {.noSideEffect, cdecl,
    importcpp: "Multiplicities", dynlib: tkmath.}
proc isDone*(this: ConvertCompPolynomialToPoles): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkmath.}