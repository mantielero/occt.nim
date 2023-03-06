import convert_types
import ../tcolgp/tcolgp_types
import ../tcolstd/tcolstd_types
import ../standard/standard_types
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


proc newConvertCompPolynomialToPoles*(numCurves: cint; continuity: cint;
                                     dimension: cint; maxDegree: cint;
    numCoeffPerCurve: Handle[TColStdHArray1OfInteger]; coefficients: Handle[
    TColStdHArray1OfReal]; polynomialIntervals: Handle[TColStdHArray2OfReal];
    trueIntervals: Handle[TColStdHArray1OfReal]): ConvertCompPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_CompPolynomialToPoles(@)",
    header: "Convert_CompPolynomialToPoles.hxx".}
proc newConvertCompPolynomialToPoles*(numCurves: cint; dimension: cint;
                                     maxDegree: cint;
                                     continuity: TColStdArray1OfInteger;
                                     numCoeffPerCurve: TColStdArray1OfInteger;
                                     coefficients: TColStdArray1OfReal;
                                     polynomialIntervals: TColStdArray2OfReal;
                                     trueIntervals: TColStdArray1OfReal): ConvertCompPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_CompPolynomialToPoles(@)",
    header: "Convert_CompPolynomialToPoles.hxx".}
proc newConvertCompPolynomialToPoles*(dimension: cint; maxDegree: cint; degree: cint;
                                     coefficients: TColStdArray1OfReal;
                                     polynomialIntervals: TColStdArray1OfReal;
                                     trueIntervals: TColStdArray1OfReal): ConvertCompPolynomialToPoles {.
    cdecl, constructor, importcpp: "Convert_CompPolynomialToPoles(@)",
    header: "Convert_CompPolynomialToPoles.hxx".}
proc nbPoles*(this: ConvertCompPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", header: "Convert_CompPolynomialToPoles.hxx".}
proc poles*(this: ConvertCompPolynomialToPoles;
           poles: var Handle[TColStdHArray2OfReal]) {.noSideEffect, cdecl,
    importcpp: "Poles", header: "Convert_CompPolynomialToPoles.hxx".}
proc degree*(this: ConvertCompPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "Degree", header: "Convert_CompPolynomialToPoles.hxx".}
proc nbKnots*(this: ConvertCompPolynomialToPoles): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", header: "Convert_CompPolynomialToPoles.hxx".}
proc knots*(this: ConvertCompPolynomialToPoles; k: var Handle[TColStdHArray1OfReal]) {.
    noSideEffect, cdecl, importcpp: "Knots", header: "Convert_CompPolynomialToPoles.hxx".}
proc multiplicities*(this: ConvertCompPolynomialToPoles;
                    m: var Handle[TColStdHArray1OfInteger]) {.noSideEffect, cdecl,
    importcpp: "Multiplicities", header: "Convert_CompPolynomialToPoles.hxx".}
proc isDone*(this: ConvertCompPolynomialToPoles): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Convert_CompPolynomialToPoles.hxx".}
