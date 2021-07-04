##  Created on: 1994-04-05
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../math/math_FunctionWithDerivative,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Geom2d_Curve"
discard "forward decl of Bisector_Curve"
type
  Bisector_FunctionInter* {.importcpp: "Bisector_FunctionInter",
                           header: "Bisector_FunctionInter.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructBisector_FunctionInter*(): Bisector_FunctionInter {.constructor,
    importcpp: "Bisector_FunctionInter(@)", header: "Bisector_FunctionInter.hxx".}
proc constructBisector_FunctionInter*(C: handle[Geom2d_Curve];
                                     Bis1: handle[Bisector_Curve];
                                     Bis2: handle[Bisector_Curve]): Bisector_FunctionInter {.
    constructor, importcpp: "Bisector_FunctionInter(@)",
    header: "Bisector_FunctionInter.hxx".}
proc Perform*(this: var Bisector_FunctionInter; C: handle[Geom2d_Curve];
             Bis1: handle[Bisector_Curve]; Bis2: handle[Bisector_Curve]) {.
    importcpp: "Perform", header: "Bisector_FunctionInter.hxx".}
proc Value*(this: var Bisector_FunctionInter; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Bisector_FunctionInter.hxx".}
proc Derivative*(this: var Bisector_FunctionInter; X: Standard_Real;
                D: var Standard_Real): Standard_Boolean {.importcpp: "Derivative",
    header: "Bisector_FunctionInter.hxx".}
proc Values*(this: var Bisector_FunctionInter; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "Bisector_FunctionInter.hxx".}