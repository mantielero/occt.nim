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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray2OfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array2OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
type
  Convert_CompPolynomialToPoles* {.importcpp: "Convert_CompPolynomialToPoles",
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


proc constructConvert_CompPolynomialToPoles*(NumCurves: Standard_Integer;
    Continuity: Standard_Integer; Dimension: Standard_Integer;
    MaxDegree: Standard_Integer;
    NumCoeffPerCurve: handle[TColStd_HArray1OfInteger];
    Coefficients: handle[TColStd_HArray1OfReal];
    PolynomialIntervals: handle[TColStd_HArray2OfReal];
    TrueIntervals: handle[TColStd_HArray1OfReal]): Convert_CompPolynomialToPoles {.
    constructor, importcpp: "Convert_CompPolynomialToPoles(@)",
    header: "Convert_CompPolynomialToPoles.hxx".}
proc constructConvert_CompPolynomialToPoles*(NumCurves: Standard_Integer;
    Dimension: Standard_Integer; MaxDegree: Standard_Integer;
    Continuity: TColStd_Array1OfInteger;
    NumCoeffPerCurve: TColStd_Array1OfInteger; Coefficients: TColStd_Array1OfReal;
    PolynomialIntervals: TColStd_Array2OfReal; TrueIntervals: TColStd_Array1OfReal): Convert_CompPolynomialToPoles {.
    constructor, importcpp: "Convert_CompPolynomialToPoles(@)",
    header: "Convert_CompPolynomialToPoles.hxx".}
proc constructConvert_CompPolynomialToPoles*(Dimension: Standard_Integer;
    MaxDegree: Standard_Integer; Degree: Standard_Integer;
    Coefficients: TColStd_Array1OfReal; PolynomialIntervals: TColStd_Array1OfReal;
    TrueIntervals: TColStd_Array1OfReal): Convert_CompPolynomialToPoles {.
    constructor, importcpp: "Convert_CompPolynomialToPoles(@)",
    header: "Convert_CompPolynomialToPoles.hxx".}
proc NbPoles*(this: Convert_CompPolynomialToPoles): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Convert_CompPolynomialToPoles.hxx".}
proc Poles*(this: Convert_CompPolynomialToPoles;
           Poles: var handle[TColStd_HArray2OfReal]) {.noSideEffect,
    importcpp: "Poles", header: "Convert_CompPolynomialToPoles.hxx".}
proc Degree*(this: Convert_CompPolynomialToPoles): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Convert_CompPolynomialToPoles.hxx".}
proc NbKnots*(this: Convert_CompPolynomialToPoles): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "Convert_CompPolynomialToPoles.hxx".}
proc Knots*(this: Convert_CompPolynomialToPoles;
           K: var handle[TColStd_HArray1OfReal]) {.noSideEffect, importcpp: "Knots",
    header: "Convert_CompPolynomialToPoles.hxx".}
proc Multiplicities*(this: Convert_CompPolynomialToPoles;
                    M: var handle[TColStd_HArray1OfInteger]) {.noSideEffect,
    importcpp: "Multiplicities", header: "Convert_CompPolynomialToPoles.hxx".}
proc IsDone*(this: Convert_CompPolynomialToPoles): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Convert_CompPolynomialToPoles.hxx".}