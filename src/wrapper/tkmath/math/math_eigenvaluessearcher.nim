import math_types
import ../../tkernel/tcolstd/tcolstd_types
##  Created on: 2005-12-15
##  Created by: Julia GERASIMOVA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

discard "forward decl of StdFail_NotDone"


proc newMathEigenValuesSearcher*(diagonal: TColStdArray1OfReal;
                                subdiagonal: TColStdArray1OfReal): MathEigenValuesSearcher {.
    cdecl, constructor, importcpp: "math_EigenValuesSearcher(@)", header: "math_EigenValuesSearcher.hxx".}
proc isDone*(this: MathEigenValuesSearcher): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_EigenValuesSearcher.hxx".}
proc dimension*(this: MathEigenValuesSearcher): cint {.noSideEffect, cdecl,
    importcpp: "Dimension", header: "math_EigenValuesSearcher.hxx".}
proc eigenValue*(this: MathEigenValuesSearcher; index: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "EigenValue", header: "math_EigenValuesSearcher.hxx".}
proc eigenVector*(this: MathEigenValuesSearcher; index: cint): MathVector {.
    noSideEffect, cdecl, importcpp: "EigenVector", header: "math_EigenValuesSearcher.hxx".}
