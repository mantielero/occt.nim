##  Created on: 1998-02-18
##  Created by: Jeanine PANCIATICI
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../math/math_FunctionWithDerivative,
  ../Standard/Standard_Boolean

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_ConstructionError"
type
  Adaptor3d_InterFunc* {.importcpp: "Adaptor3d_InterFunc",
                        header: "Adaptor3d_InterFunc.hxx", bycopy.} = object of math_FunctionWithDerivative ##
                                                                                                     ## !
                                                                                                     ## build
                                                                                                     ## the
                                                                                                     ## function
                                                                                                     ## U(t)=FixVal
                                                                                                     ## if
                                                                                                     ## Fix
                                                                                                     ## =1
                                                                                                     ## or
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## V(t)=FixVal
                                                                                                     ## if
                                                                                                     ## Fix=2


proc constructAdaptor3d_InterFunc*(C: handle[Adaptor2d_HCurve2d];
                                  FixVal: Standard_Real; Fix: Standard_Integer): Adaptor3d_InterFunc {.
    constructor, importcpp: "Adaptor3d_InterFunc(@)",
    header: "Adaptor3d_InterFunc.hxx".}
proc Value*(this: var Adaptor3d_InterFunc; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Adaptor3d_InterFunc.hxx".}
proc Derivative*(this: var Adaptor3d_InterFunc; X: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "Adaptor3d_InterFunc.hxx".}
proc Values*(this: var Adaptor3d_InterFunc; X: Standard_Real; F: var Standard_Real;
            D: var Standard_Real): Standard_Boolean {.importcpp: "Values",
    header: "Adaptor3d_InterFunc.hxx".}