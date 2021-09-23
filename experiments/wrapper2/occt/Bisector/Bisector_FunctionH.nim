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
  ../Standard/Standard_Handle, ../gp/gp_Pnt2d, ../gp/gp_Vec2d,
  ../math/math_FunctionWithDerivative, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Bisector_FunctionH* {.importcpp: "Bisector_FunctionH",
                       header: "Bisector_FunctionH.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructBisector_FunctionH*(C2: handle[Geom2d_Curve]; P1: gp_Pnt2d;
                                 T1: gp_Vec2d): Bisector_FunctionH {.constructor,
    importcpp: "Bisector_FunctionH(@)", header: "Bisector_FunctionH.hxx".}
proc Value*(this: var Bisector_FunctionH; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Bisector_FunctionH.hxx".}
proc Derivative*(this: var Bisector_FunctionH; X: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "Bisector_FunctionH.hxx".}
proc Values*(this: var Bisector_FunctionH; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "Bisector_FunctionH.hxx".}