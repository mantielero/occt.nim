##  Created on: 1997-05-27
##  Created by: Sergey SOKOLOV
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of PLib_JacobiPolynomial"
type
  PLib_DoubleJacobiPolynomial* {.importcpp: "PLib_DoubleJacobiPolynomial",
                                header: "PLib_DoubleJacobiPolynomial.hxx", bycopy.} = object


proc constructPLib_DoubleJacobiPolynomial*(): PLib_DoubleJacobiPolynomial {.
    constructor, importcpp: "PLib_DoubleJacobiPolynomial(@)",
    header: "PLib_DoubleJacobiPolynomial.hxx".}
proc constructPLib_DoubleJacobiPolynomial*(
    JacPolU: handle[PLib_JacobiPolynomial]; JacPolV: handle[PLib_JacobiPolynomial]): PLib_DoubleJacobiPolynomial {.
    constructor, importcpp: "PLib_DoubleJacobiPolynomial(@)",
    header: "PLib_DoubleJacobiPolynomial.hxx".}
proc MaxErrorU*(this: PLib_DoubleJacobiPolynomial; Dimension: Standard_Integer;
               DegreeU: Standard_Integer; DegreeV: Standard_Integer;
               dJacCoeff: Standard_Integer; JacCoeff: TColStd_Array1OfReal): Standard_Real {.
    noSideEffect, importcpp: "MaxErrorU", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc MaxErrorV*(this: PLib_DoubleJacobiPolynomial; Dimension: Standard_Integer;
               DegreeU: Standard_Integer; DegreeV: Standard_Integer;
               dJacCoeff: Standard_Integer; JacCoeff: TColStd_Array1OfReal): Standard_Real {.
    noSideEffect, importcpp: "MaxErrorV", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc MaxError*(this: PLib_DoubleJacobiPolynomial; Dimension: Standard_Integer;
              MinDegreeU: Standard_Integer; MaxDegreeU: Standard_Integer;
              MinDegreeV: Standard_Integer; MaxDegreeV: Standard_Integer;
              dJacCoeff: Standard_Integer; JacCoeff: TColStd_Array1OfReal;
              Error: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "MaxError", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc ReduceDegree*(this: PLib_DoubleJacobiPolynomial; Dimension: Standard_Integer;
                  MinDegreeU: Standard_Integer; MaxDegreeU: Standard_Integer;
                  MinDegreeV: Standard_Integer; MaxDegreeV: Standard_Integer;
                  dJacCoeff: Standard_Integer; JacCoeff: TColStd_Array1OfReal;
                  EpmsCut: Standard_Real; MaxError: var Standard_Real;
                  NewDegreeU: var Standard_Integer;
                  NewDegreeV: var Standard_Integer) {.noSideEffect,
    importcpp: "ReduceDegree", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc AverageError*(this: PLib_DoubleJacobiPolynomial; Dimension: Standard_Integer;
                  DegreeU: Standard_Integer; DegreeV: Standard_Integer;
                  dJacCoeff: Standard_Integer; JacCoeff: TColStd_Array1OfReal): Standard_Real {.
    noSideEffect, importcpp: "AverageError",
    header: "PLib_DoubleJacobiPolynomial.hxx".}
proc WDoubleJacobiToCoefficients*(this: PLib_DoubleJacobiPolynomial;
                                 Dimension: Standard_Integer;
                                 DegreeU: Standard_Integer;
                                 DegreeV: Standard_Integer;
                                 JacCoeff: TColStd_Array1OfReal;
                                 Coefficients: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "WDoubleJacobiToCoefficients",
    header: "PLib_DoubleJacobiPolynomial.hxx".}
proc U*(this: PLib_DoubleJacobiPolynomial): handle[PLib_JacobiPolynomial] {.
    noSideEffect, importcpp: "U", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc V*(this: PLib_DoubleJacobiPolynomial): handle[PLib_JacobiPolynomial] {.
    noSideEffect, importcpp: "V", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc TabMaxU*(this: PLib_DoubleJacobiPolynomial): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "TabMaxU", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc TabMaxV*(this: PLib_DoubleJacobiPolynomial): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "TabMaxV", header: "PLib_DoubleJacobiPolynomial.hxx".}