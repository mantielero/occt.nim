##  Created on: 1992-02-20
##  Created by: Remy GILET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Circ2d,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve, ../Standard/Standard_Real,
  ../math/math_FunctionWithDerivative, ../Standard/Standard_Boolean

discard "forward decl of gp_Circ2d"
discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGcc_FunctionTanCirCu* {.importcpp: "Geom2dGcc_FunctionTanCirCu",
                               header: "Geom2dGcc_FunctionTanCirCu.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructGeom2dGcc_FunctionTanCirCu*(Circ: gp_Circ2d;
    Curv: Geom2dAdaptor_Curve): Geom2dGcc_FunctionTanCirCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCirCu(@)",
    header: "Geom2dGcc_FunctionTanCirCu.hxx".}
proc Value*(this: var Geom2dGcc_FunctionTanCirCu; X: Standard_Real;
           F: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "Geom2dGcc_FunctionTanCirCu.hxx".}
proc Derivative*(this: var Geom2dGcc_FunctionTanCirCu; X: Standard_Real;
                Deriv: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "Geom2dGcc_FunctionTanCirCu.hxx".}
proc Values*(this: var Geom2dGcc_FunctionTanCirCu; X: Standard_Real;
            F: var Standard_Real; Deriv: var Standard_Real): Standard_Boolean {.
    importcpp: "Values", header: "Geom2dGcc_FunctionTanCirCu.hxx".}