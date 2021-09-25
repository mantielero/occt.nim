##  Created on: 1996-10-14
##  Created by: Jeannine PANTIATICI
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

discard "forward decl of PLib_JacobiPolynomial"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
type
  AdvApproxSimpleApprox* {.importcpp: "AdvApprox_SimpleApprox",
                          header: "AdvApprox_SimpleApprox.hxx", bycopy.} = object


proc constructAdvApproxSimpleApprox*(totalDimension: int; totalNumSS: int;
                                    continuity: GeomAbsShape; workDegree: int;
                                    nbGaussPoints: int;
                                    jacobiBase: Handle[PLibJacobiPolynomial];
                                    `func`: AdvApproxEvaluatorFunction): AdvApproxSimpleApprox {.
    constructor, importcpp: "AdvApprox_SimpleApprox(@)",
    header: "AdvApprox_SimpleApprox.hxx".}
proc perform*(this: var AdvApproxSimpleApprox;
             localDimension: TColStdArray1OfInteger;
             localTolerancesArray: TColStdArray1OfReal; first: float; last: float;
             maxDegree: int) {.importcpp: "Perform",
                             header: "AdvApprox_SimpleApprox.hxx".}
proc isDone*(this: AdvApproxSimpleApprox): bool {.noSideEffect, importcpp: "IsDone",
    header: "AdvApprox_SimpleApprox.hxx".}
proc degree*(this: AdvApproxSimpleApprox): int {.noSideEffect, importcpp: "Degree",
    header: "AdvApprox_SimpleApprox.hxx".}
proc coefficients*(this: AdvApproxSimpleApprox): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "Coefficients", header: "AdvApprox_SimpleApprox.hxx".}
proc firstConstr*(this: AdvApproxSimpleApprox): Handle[TColStdHArray2OfReal] {.
    noSideEffect, importcpp: "FirstConstr", header: "AdvApprox_SimpleApprox.hxx".}
proc lastConstr*(this: AdvApproxSimpleApprox): Handle[TColStdHArray2OfReal] {.
    noSideEffect, importcpp: "LastConstr", header: "AdvApprox_SimpleApprox.hxx".}
proc somTab*(this: AdvApproxSimpleApprox): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "SomTab", header: "AdvApprox_SimpleApprox.hxx".}
proc difTab*(this: AdvApproxSimpleApprox): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "DifTab", header: "AdvApprox_SimpleApprox.hxx".}
proc maxError*(this: AdvApproxSimpleApprox; index: int): float {.noSideEffect,
    importcpp: "MaxError", header: "AdvApprox_SimpleApprox.hxx".}
proc averageError*(this: AdvApproxSimpleApprox; index: int): float {.noSideEffect,
    importcpp: "AverageError", header: "AdvApprox_SimpleApprox.hxx".}
proc dump*(this: AdvApproxSimpleApprox; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AdvApprox_SimpleApprox.hxx".}
