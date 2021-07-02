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

discard "forward decl of PLib_JacobiPolynomial"
type
  PLibDoubleJacobiPolynomial* {.importcpp: "PLib_DoubleJacobiPolynomial",
                               header: "PLib_DoubleJacobiPolynomial.hxx", bycopy.} = object


proc constructPLibDoubleJacobiPolynomial*(): PLibDoubleJacobiPolynomial {.
    constructor, importcpp: "PLib_DoubleJacobiPolynomial(@)",
    header: "PLib_DoubleJacobiPolynomial.hxx".}
proc constructPLibDoubleJacobiPolynomial*(jacPolU: Handle[PLibJacobiPolynomial];
    jacPolV: Handle[PLibJacobiPolynomial]): PLibDoubleJacobiPolynomial {.
    constructor, importcpp: "PLib_DoubleJacobiPolynomial(@)",
    header: "PLib_DoubleJacobiPolynomial.hxx".}
proc maxErrorU*(this: PLibDoubleJacobiPolynomial; dimension: StandardInteger;
               degreeU: StandardInteger; degreeV: StandardInteger;
               dJacCoeff: StandardInteger; jacCoeff: TColStdArray1OfReal): StandardReal {.
    noSideEffect, importcpp: "MaxErrorU", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc maxErrorV*(this: PLibDoubleJacobiPolynomial; dimension: StandardInteger;
               degreeU: StandardInteger; degreeV: StandardInteger;
               dJacCoeff: StandardInteger; jacCoeff: TColStdArray1OfReal): StandardReal {.
    noSideEffect, importcpp: "MaxErrorV", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc maxError*(this: PLibDoubleJacobiPolynomial; dimension: StandardInteger;
              minDegreeU: StandardInteger; maxDegreeU: StandardInteger;
              minDegreeV: StandardInteger; maxDegreeV: StandardInteger;
              dJacCoeff: StandardInteger; jacCoeff: TColStdArray1OfReal;
              error: StandardReal): StandardReal {.noSideEffect,
    importcpp: "MaxError", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc reduceDegree*(this: PLibDoubleJacobiPolynomial; dimension: StandardInteger;
                  minDegreeU: StandardInteger; maxDegreeU: StandardInteger;
                  minDegreeV: StandardInteger; maxDegreeV: StandardInteger;
                  dJacCoeff: StandardInteger; jacCoeff: TColStdArray1OfReal;
                  epmsCut: StandardReal; maxError: var StandardReal;
                  newDegreeU: var StandardInteger; newDegreeV: var StandardInteger) {.
    noSideEffect, importcpp: "ReduceDegree",
    header: "PLib_DoubleJacobiPolynomial.hxx".}
proc averageError*(this: PLibDoubleJacobiPolynomial; dimension: StandardInteger;
                  degreeU: StandardInteger; degreeV: StandardInteger;
                  dJacCoeff: StandardInteger; jacCoeff: TColStdArray1OfReal): StandardReal {.
    noSideEffect, importcpp: "AverageError",
    header: "PLib_DoubleJacobiPolynomial.hxx".}
proc wDoubleJacobiToCoefficients*(this: PLibDoubleJacobiPolynomial;
                                 dimension: StandardInteger;
                                 degreeU: StandardInteger;
                                 degreeV: StandardInteger;
                                 jacCoeff: TColStdArray1OfReal;
                                 coefficients: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "WDoubleJacobiToCoefficients",
    header: "PLib_DoubleJacobiPolynomial.hxx".}
proc u*(this: PLibDoubleJacobiPolynomial): Handle[PLibJacobiPolynomial] {.
    noSideEffect, importcpp: "U", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc v*(this: PLibDoubleJacobiPolynomial): Handle[PLibJacobiPolynomial] {.
    noSideEffect, importcpp: "V", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc tabMaxU*(this: PLibDoubleJacobiPolynomial): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "TabMaxU", header: "PLib_DoubleJacobiPolynomial.hxx".}
proc tabMaxV*(this: PLibDoubleJacobiPolynomial): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "TabMaxV", header: "PLib_DoubleJacobiPolynomial.hxx".}

