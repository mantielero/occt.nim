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


proc constructConvertGridPolynomialToPoles*(maxUDegree: StandardInteger;
    maxVDegree: StandardInteger; numCoeff: Handle[TColStdHArray1OfInteger];
    coefficients: Handle[TColStdHArray1OfReal];
    polynomialUIntervals: Handle[TColStdHArray1OfReal];
    polynomialVIntervals: Handle[TColStdHArray1OfReal]): ConvertGridPolynomialToPoles {.
    constructor, importcpp: "Convert_GridPolynomialToPoles(@)",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc constructConvertGridPolynomialToPoles*(nbUSurfaces: StandardInteger;
    nBVSurfaces: StandardInteger; uContinuity: StandardInteger;
    vContinuity: StandardInteger; maxUDegree: StandardInteger;
    maxVDegree: StandardInteger;
    numCoeffPerSurface: Handle[TColStdHArray2OfInteger];
    coefficients: Handle[TColStdHArray1OfReal];
    polynomialUIntervals: Handle[TColStdHArray1OfReal];
    polynomialVIntervals: Handle[TColStdHArray1OfReal];
    trueUIntervals: Handle[TColStdHArray1OfReal];
    trueVIntervals: Handle[TColStdHArray1OfReal]): ConvertGridPolynomialToPoles {.
    constructor, importcpp: "Convert_GridPolynomialToPoles(@)",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc perform*(this: var ConvertGridPolynomialToPoles; uContinuity: StandardInteger;
             vContinuity: StandardInteger; maxUDegree: StandardInteger;
             maxVDegree: StandardInteger;
             numCoeffPerSurface: Handle[TColStdHArray2OfInteger];
             coefficients: Handle[TColStdHArray1OfReal];
             polynomialUIntervals: Handle[TColStdHArray1OfReal];
             polynomialVIntervals: Handle[TColStdHArray1OfReal];
             trueUIntervals: Handle[TColStdHArray1OfReal];
             trueVIntervals: Handle[TColStdHArray1OfReal]) {.importcpp: "Perform",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc nbUPoles*(this: ConvertGridPolynomialToPoles): StandardInteger {.noSideEffect,
    importcpp: "NbUPoles", header: "Convert_GridPolynomialToPoles.hxx".}
proc nbVPoles*(this: ConvertGridPolynomialToPoles): StandardInteger {.noSideEffect,
    importcpp: "NbVPoles", header: "Convert_GridPolynomialToPoles.hxx".}
proc poles*(this: ConvertGridPolynomialToPoles): Handle[TColgpHArray2OfPnt] {.
    noSideEffect, importcpp: "Poles", header: "Convert_GridPolynomialToPoles.hxx".}
proc uDegree*(this: ConvertGridPolynomialToPoles): StandardInteger {.noSideEffect,
    importcpp: "UDegree", header: "Convert_GridPolynomialToPoles.hxx".}
proc vDegree*(this: ConvertGridPolynomialToPoles): StandardInteger {.noSideEffect,
    importcpp: "VDegree", header: "Convert_GridPolynomialToPoles.hxx".}
proc nbUKnots*(this: ConvertGridPolynomialToPoles): StandardInteger {.noSideEffect,
    importcpp: "NbUKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc nbVKnots*(this: ConvertGridPolynomialToPoles): StandardInteger {.noSideEffect,
    importcpp: "NbVKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc uKnots*(this: ConvertGridPolynomialToPoles): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "UKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc vKnots*(this: ConvertGridPolynomialToPoles): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "VKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc uMultiplicities*(this: ConvertGridPolynomialToPoles): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "UMultiplicities",
                              header: "Convert_GridPolynomialToPoles.hxx".}
proc vMultiplicities*(this: ConvertGridPolynomialToPoles): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "VMultiplicities",
                              header: "Convert_GridPolynomialToPoles.hxx".}
proc isDone*(this: ConvertGridPolynomialToPoles): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Convert_GridPolynomialToPoles.hxx".}

