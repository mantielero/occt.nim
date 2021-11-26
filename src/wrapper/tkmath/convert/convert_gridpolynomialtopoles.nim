##  Created on: 1996-07-08
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
type
  ConvertGridPolynomialToPoles* {.importcpp: "Convert_GridPolynomialToPoles",
                                 header: "Convert_GridPolynomialToPoles.hxx",
                                 bycopy.} = object ## ! To    only  one   polynomial  Surface.
                                                ## ! The  Length  of  <PolynomialUIntervals> and <PolynomialVIntervals>
                                                ## ! have to be 2.
                                                ## ! This values defined the parametric domain of the Polynomial Equation.
                                                ## !
                                                ## ! Coefficients :
                                                ## ! The <Coefficients> have to be formated than an "C array"
                                                ## ! [MaxUDegree+1] [MaxVDegree+1] [3]


proc newConvertGridPolynomialToPoles*(maxUDegree: cint; maxVDegree: cint;
                                     numCoeff: Handle[TColStdHArray1OfInteger];
    coefficients: Handle[TColStdHArray1OfReal]; polynomialUIntervals: Handle[
    TColStdHArray1OfReal]; polynomialVIntervals: Handle[TColStdHArray1OfReal]): ConvertGridPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_GridPolynomialToPoles(@)",
    dynlib: tkmath.}
proc newConvertGridPolynomialToPoles*(nbUSurfaces: cint; nBVSurfaces: cint;
                                     uContinuity: cint; vContinuity: cint;
                                     maxUDegree: cint; maxVDegree: cint;
    numCoeffPerSurface: Handle[TColStdHArray2OfInteger]; coefficients: Handle[
    TColStdHArray1OfReal]; polynomialUIntervals: Handle[TColStdHArray1OfReal];
    polynomialVIntervals: Handle[TColStdHArray1OfReal]; trueUIntervals: Handle[
    TColStdHArray1OfReal]; trueVIntervals: Handle[TColStdHArray1OfReal]): ConvertGridPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_GridPolynomialToPoles(@)",
    dynlib: tkmath.}
proc perform*(this: var ConvertGridPolynomialToPoles; uContinuity: cint;
             vContinuity: cint; maxUDegree: cint; maxVDegree: cint;
             numCoeffPerSurface: Handle[TColStdHArray2OfInteger];
             coefficients: Handle[TColStdHArray1OfReal];
             polynomialUIntervals: Handle[TColStdHArray1OfReal];
             polynomialVIntervals: Handle[TColStdHArray1OfReal];
             trueUIntervals: Handle[TColStdHArray1OfReal];
             trueVIntervals: Handle[TColStdHArray1OfReal]) {.cdecl,
    importcpp: "Perform", dynlib: tkmath.}
proc nbUPoles*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", dynlib: tkmath.}
proc nbVPoles*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", dynlib: tkmath.}
proc poles*(this: ConvertGridPolynomialToPoles): Handle[TColgpHArray2OfPnt] {.
    noSideEffect, cdecl, importcpp: "Poles", dynlib: tkmath.}
proc uDegree*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", dynlib: tkmath.}
proc vDegree*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", dynlib: tkmath.}
proc nbUKnots*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", dynlib: tkmath.}
proc nbVKnots*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", dynlib: tkmath.}
proc uKnots*(this: ConvertGridPolynomialToPoles): Handle[TColStdHArray1OfReal] {.
    noSideEffect, cdecl, importcpp: "UKnots", dynlib: tkmath.}
proc vKnots*(this: ConvertGridPolynomialToPoles): Handle[TColStdHArray1OfReal] {.
    noSideEffect, cdecl, importcpp: "VKnots", dynlib: tkmath.}
proc uMultiplicities*(this: ConvertGridPolynomialToPoles): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, cdecl, importcpp: "UMultiplicities",
                              dynlib: tkmath.}
proc vMultiplicities*(this: ConvertGridPolynomialToPoles): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, cdecl, importcpp: "VMultiplicities",
                              dynlib: tkmath.}
proc isDone*(this: ConvertGridPolynomialToPoles): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkmath.}