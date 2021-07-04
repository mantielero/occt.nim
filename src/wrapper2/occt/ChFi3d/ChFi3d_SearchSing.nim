##  Created on: 1997-03-28
##  Created by: Philippe MANGIN
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
  ../Standard/Standard_Handle, ../math/math_FunctionWithDerivative,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Geom_Curve"
type
  ChFi3d_SearchSing* {.importcpp: "ChFi3d_SearchSing",
                      header: "ChFi3d_SearchSing.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructChFi3d_SearchSing*(C1: handle[Geom_Curve]; C2: handle[Geom_Curve]): ChFi3d_SearchSing {.
    constructor, importcpp: "ChFi3d_SearchSing(@)", header: "ChFi3d_SearchSing.hxx".}
proc Value*(this: var ChFi3d_SearchSing; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "ChFi3d_SearchSing.hxx".}
proc Derivative*(this: var ChFi3d_SearchSing; X: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "ChFi3d_SearchSing.hxx".}
proc Values*(this: var ChFi3d_SearchSing; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "ChFi3d_SearchSing.hxx".}