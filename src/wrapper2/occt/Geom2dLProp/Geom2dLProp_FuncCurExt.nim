##  Created on: 1994-09-02
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

discard "forward decl of Geom2d_Curve"
type
  Geom2dLPropFuncCurExt* {.importcpp: "Geom2dLProp_FuncCurExt",
                          header: "Geom2dLProp_FuncCurExt.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructGeom2dLPropFuncCurExt*(c: Handle[Geom2dCurve]; tol: StandardReal): Geom2dLPropFuncCurExt {.
    constructor, importcpp: "Geom2dLProp_FuncCurExt(@)",
    header: "Geom2dLProp_FuncCurExt.hxx".}
proc value*(this: var Geom2dLPropFuncCurExt; x: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "Geom2dLProp_FuncCurExt.hxx".}
proc derivative*(this: var Geom2dLPropFuncCurExt; x: StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Derivative", header: "Geom2dLProp_FuncCurExt.hxx".}
proc values*(this: var Geom2dLPropFuncCurExt; x: StandardReal; f: var StandardReal;
            d: var StandardReal): StandardBoolean {.importcpp: "Values",
    header: "Geom2dLProp_FuncCurExt.hxx".}
proc isMinKC*(this: Geom2dLPropFuncCurExt; param: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsMinKC", header: "Geom2dLProp_FuncCurExt.hxx".}

