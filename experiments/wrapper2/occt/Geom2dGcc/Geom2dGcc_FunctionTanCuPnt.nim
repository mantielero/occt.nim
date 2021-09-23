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
  ../Standard/Standard_Handle, ../Geom2dAdaptor/Geom2dAdaptor_Curve,
  ../gp/gp_Pnt2d, ../math/math_FunctionWithDerivative,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGcc_FunctionTanCuPnt* {.importcpp: "Geom2dGcc_FunctionTanCuPnt",
                               header: "Geom2dGcc_FunctionTanCuPnt.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructGeom2dGcc_FunctionTanCuPnt*(C: Geom2dAdaptor_Curve; Point: gp_Pnt2d): Geom2dGcc_FunctionTanCuPnt {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuPnt(@)",
    header: "Geom2dGcc_FunctionTanCuPnt.hxx".}
proc Value*(this: var Geom2dGcc_FunctionTanCuPnt; X: Standard_Real;
           F: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "Geom2dGcc_FunctionTanCuPnt.hxx".}
proc Derivative*(this: var Geom2dGcc_FunctionTanCuPnt; X: Standard_Real;
                Deriv: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "Geom2dGcc_FunctionTanCuPnt.hxx".}
proc Values*(this: var Geom2dGcc_FunctionTanCuPnt; X: Standard_Real;
            F: var Standard_Real; Deriv: var Standard_Real): Standard_Boolean {.
    importcpp: "Values", header: "Geom2dGcc_FunctionTanCuPnt.hxx".}