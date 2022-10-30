import convert_types
import ../tcolgp/tcolgp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
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


proc newConvertGridPolynomialToPoles*(maxUDegree: cint; maxVDegree: cint;
                                     numCoeff: Handle[TColStdHArray1OfInteger];
    coefficients: Handle[TColStdHArray1OfReal]; polynomialUIntervals: Handle[
    TColStdHArray1OfReal]; polynomialVIntervals: Handle[TColStdHArray1OfReal]): ConvertGridPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_GridPolynomialToPoles(@)",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc newConvertGridPolynomialToPoles*(nbUSurfaces: cint; nBVSurfaces: cint;
                                     uContinuity: cint; vContinuity: cint;
                                     maxUDegree: cint; maxVDegree: cint;
    numCoeffPerSurface: Handle[TColStdHArray2OfInteger]; coefficients: Handle[
    TColStdHArray1OfReal]; polynomialUIntervals: Handle[TColStdHArray1OfReal];
    polynomialVIntervals: Handle[TColStdHArray1OfReal]; trueUIntervals: Handle[
    TColStdHArray1OfReal]; trueVIntervals: Handle[TColStdHArray1OfReal]): ConvertGridPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_GridPolynomialToPoles(@)",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc perform*(this: var ConvertGridPolynomialToPoles; uContinuity: cint;
             vContinuity: cint; maxUDegree: cint; maxVDegree: cint;
             numCoeffPerSurface: Handle[TColStdHArray2OfInteger];
             coefficients: Handle[TColStdHArray1OfReal];
             polynomialUIntervals: Handle[TColStdHArray1OfReal];
             polynomialVIntervals: Handle[TColStdHArray1OfReal];
             trueUIntervals: Handle[TColStdHArray1OfReal];
             trueVIntervals: Handle[TColStdHArray1OfReal]) {.cdecl,
    importcpp: "Perform", header: "Convert_GridPolynomialToPoles.hxx".}
proc nbUPoles*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", header: "Convert_GridPolynomialToPoles.hxx".}
proc nbVPoles*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", header: "Convert_GridPolynomialToPoles.hxx".}
proc poles*(this: ConvertGridPolynomialToPoles): Handle[TColgpHArray2OfPnt] {.
    noSideEffect, cdecl, importcpp: "Poles", header: "Convert_GridPolynomialToPoles.hxx".}
proc uDegree*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "Convert_GridPolynomialToPoles.hxx".}
proc vDegree*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "Convert_GridPolynomialToPoles.hxx".}
proc nbUKnots*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc nbVKnots*(this: ConvertGridPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc uKnots*(this: ConvertGridPolynomialToPoles): Handle[TColStdHArray1OfReal] {.
    noSideEffect, cdecl, importcpp: "UKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc vKnots*(this: ConvertGridPolynomialToPoles): Handle[TColStdHArray1OfReal] {.
    noSideEffect, cdecl, importcpp: "VKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc uMultiplicities*(this: ConvertGridPolynomialToPoles): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, cdecl, importcpp: "UMultiplicities",
                              header: "Convert_GridPolynomialToPoles.hxx".}
proc vMultiplicities*(this: ConvertGridPolynomialToPoles): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, cdecl, importcpp: "VMultiplicities",
                              header: "Convert_GridPolynomialToPoles.hxx".}
proc isDone*(this: ConvertGridPolynomialToPoles): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Convert_GridPolynomialToPoles.hxx".}
