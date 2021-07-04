##  Created on: 1992-03-04
##  Created by: Laurent BUCHARD
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
  ../Standard/Standard_Handle, ../Standard/Standard_Address, IntCurve_IConicTool,
  ../math/math_FunctionWithDerivative, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of IntCurve_IConicTool"
discard "forward decl of IntCurve_PConic"
discard "forward decl of IntCurve_PConicTool"
type
  IntCurve_MyImpParToolOfIntImpConicParConic* {.
      importcpp: "IntCurve_MyImpParToolOfIntImpConicParConic",
      header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx", bycopy.} = object of math_FunctionWithDerivative ##
                                                                                                          ## !
                                                                                                          ## Constructor
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## class.


proc constructIntCurve_MyImpParToolOfIntImpConicParConic*(
    IT: IntCurve_IConicTool; PC: IntCurve_PConic): IntCurve_MyImpParToolOfIntImpConicParConic {.
    constructor, importcpp: "IntCurve_MyImpParToolOfIntImpConicParConic(@)",
    header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx".}
proc Value*(this: var IntCurve_MyImpParToolOfIntImpConicParConic;
           Param: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx".}
proc Derivative*(this: var IntCurve_MyImpParToolOfIntImpConicParConic;
                Param: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative",
    header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx".}
proc Values*(this: var IntCurve_MyImpParToolOfIntImpConicParConic;
            Param: Standard_Real; F: var Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Values", header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx".}