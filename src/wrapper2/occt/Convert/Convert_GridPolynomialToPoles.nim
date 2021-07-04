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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../TColgp/TColgp_HArray2OfPnt,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HArray2OfInteger

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
type
  Convert_GridPolynomialToPoles* {.importcpp: "Convert_GridPolynomialToPoles",
                                  header: "Convert_GridPolynomialToPoles.hxx",
                                  bycopy.} = object ## ! To    only  one   polynomial  Surface.
                                                 ## ! The  Length  of  <PolynomialUIntervals> and <PolynomialVIntervals>
                                                 ## ! have to be 2.
                                                 ## ! This values defined the parametric domain of the Polynomial Equation.
                                                 ## !
                                                 ## ! Coefficients :
                                                 ## ! The <Coefficients> have to be formated than an "C array"
                                                 ## ! [MaxUDegree+1] [MaxVDegree+1] [3]


proc constructConvert_GridPolynomialToPoles*(MaxUDegree: Standard_Integer;
    MaxVDegree: Standard_Integer; NumCoeff: handle[TColStd_HArray1OfInteger];
    Coefficients: handle[TColStd_HArray1OfReal];
    PolynomialUIntervals: handle[TColStd_HArray1OfReal];
    PolynomialVIntervals: handle[TColStd_HArray1OfReal]): Convert_GridPolynomialToPoles {.
    constructor, importcpp: "Convert_GridPolynomialToPoles(@)",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc constructConvert_GridPolynomialToPoles*(NbUSurfaces: Standard_Integer;
    NBVSurfaces: Standard_Integer; UContinuity: Standard_Integer;
    VContinuity: Standard_Integer; MaxUDegree: Standard_Integer;
    MaxVDegree: Standard_Integer;
    NumCoeffPerSurface: handle[TColStd_HArray2OfInteger];
    Coefficients: handle[TColStd_HArray1OfReal];
    PolynomialUIntervals: handle[TColStd_HArray1OfReal];
    PolynomialVIntervals: handle[TColStd_HArray1OfReal];
    TrueUIntervals: handle[TColStd_HArray1OfReal];
    TrueVIntervals: handle[TColStd_HArray1OfReal]): Convert_GridPolynomialToPoles {.
    constructor, importcpp: "Convert_GridPolynomialToPoles(@)",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc Perform*(this: var Convert_GridPolynomialToPoles;
             UContinuity: Standard_Integer; VContinuity: Standard_Integer;
             MaxUDegree: Standard_Integer; MaxVDegree: Standard_Integer;
             NumCoeffPerSurface: handle[TColStd_HArray2OfInteger];
             Coefficients: handle[TColStd_HArray1OfReal];
             PolynomialUIntervals: handle[TColStd_HArray1OfReal];
             PolynomialVIntervals: handle[TColStd_HArray1OfReal];
             TrueUIntervals: handle[TColStd_HArray1OfReal];
             TrueVIntervals: handle[TColStd_HArray1OfReal]) {.
    importcpp: "Perform", header: "Convert_GridPolynomialToPoles.hxx".}
proc NbUPoles*(this: Convert_GridPolynomialToPoles): Standard_Integer {.
    noSideEffect, importcpp: "NbUPoles",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc NbVPoles*(this: Convert_GridPolynomialToPoles): Standard_Integer {.
    noSideEffect, importcpp: "NbVPoles",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc Poles*(this: Convert_GridPolynomialToPoles): handle[TColgp_HArray2OfPnt] {.
    noSideEffect, importcpp: "Poles", header: "Convert_GridPolynomialToPoles.hxx".}
proc UDegree*(this: Convert_GridPolynomialToPoles): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "Convert_GridPolynomialToPoles.hxx".}
proc VDegree*(this: Convert_GridPolynomialToPoles): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "Convert_GridPolynomialToPoles.hxx".}
proc NbUKnots*(this: Convert_GridPolynomialToPoles): Standard_Integer {.
    noSideEffect, importcpp: "NbUKnots",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc NbVKnots*(this: Convert_GridPolynomialToPoles): Standard_Integer {.
    noSideEffect, importcpp: "NbVKnots",
    header: "Convert_GridPolynomialToPoles.hxx".}
proc UKnots*(this: Convert_GridPolynomialToPoles): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "UKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc VKnots*(this: Convert_GridPolynomialToPoles): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "VKnots", header: "Convert_GridPolynomialToPoles.hxx".}
proc UMultiplicities*(this: Convert_GridPolynomialToPoles): handle[
    TColStd_HArray1OfInteger] {.noSideEffect, importcpp: "UMultiplicities",
                               header: "Convert_GridPolynomialToPoles.hxx".}
proc VMultiplicities*(this: Convert_GridPolynomialToPoles): handle[
    TColStd_HArray1OfInteger] {.noSideEffect, importcpp: "VMultiplicities",
                               header: "Convert_GridPolynomialToPoles.hxx".}
proc IsDone*(this: Convert_GridPolynomialToPoles): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Convert_GridPolynomialToPoles.hxx".}