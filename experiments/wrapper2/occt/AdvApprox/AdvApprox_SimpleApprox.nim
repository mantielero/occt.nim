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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfReal, ../TColStd/TColStd_HArray2OfReal,
  ../Standard/Standard_Address, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_Shape, AdvApprox_EvaluatorFunction,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of PLib_JacobiPolynomial"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
type
  AdvApprox_SimpleApprox* {.importcpp: "AdvApprox_SimpleApprox",
                           header: "AdvApprox_SimpleApprox.hxx", bycopy.} = object


proc constructAdvApprox_SimpleApprox*(TotalDimension: Standard_Integer;
                                     TotalNumSS: Standard_Integer;
                                     Continuity: GeomAbs_Shape;
                                     WorkDegree: Standard_Integer;
                                     NbGaussPoints: Standard_Integer;
                                     JacobiBase: handle[PLib_JacobiPolynomial];
                                     Func: AdvApprox_EvaluatorFunction): AdvApprox_SimpleApprox {.
    constructor, importcpp: "AdvApprox_SimpleApprox(@)",
    header: "AdvApprox_SimpleApprox.hxx".}
proc Perform*(this: var AdvApprox_SimpleApprox;
             LocalDimension: TColStd_Array1OfInteger;
             LocalTolerancesArray: TColStd_Array1OfReal; First: Standard_Real;
             Last: Standard_Real; MaxDegree: Standard_Integer) {.
    importcpp: "Perform", header: "AdvApprox_SimpleApprox.hxx".}
proc IsDone*(this: AdvApprox_SimpleApprox): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "AdvApprox_SimpleApprox.hxx".}
proc Degree*(this: AdvApprox_SimpleApprox): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "AdvApprox_SimpleApprox.hxx".}
proc Coefficients*(this: AdvApprox_SimpleApprox): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "Coefficients", header: "AdvApprox_SimpleApprox.hxx".}
proc FirstConstr*(this: AdvApprox_SimpleApprox): handle[TColStd_HArray2OfReal] {.
    noSideEffect, importcpp: "FirstConstr", header: "AdvApprox_SimpleApprox.hxx".}
proc LastConstr*(this: AdvApprox_SimpleApprox): handle[TColStd_HArray2OfReal] {.
    noSideEffect, importcpp: "LastConstr", header: "AdvApprox_SimpleApprox.hxx".}
proc SomTab*(this: AdvApprox_SimpleApprox): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "SomTab", header: "AdvApprox_SimpleApprox.hxx".}
proc DifTab*(this: AdvApprox_SimpleApprox): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "DifTab", header: "AdvApprox_SimpleApprox.hxx".}
proc MaxError*(this: AdvApprox_SimpleApprox; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "MaxError", header: "AdvApprox_SimpleApprox.hxx".}
proc AverageError*(this: AdvApprox_SimpleApprox; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "AverageError", header: "AdvApprox_SimpleApprox.hxx".}
proc Dump*(this: AdvApprox_SimpleApprox; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "AdvApprox_SimpleApprox.hxx".}