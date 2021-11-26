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
  Geom2dLPropFuncCurNul* {.importcpp: "Geom2dLProp_FuncCurNul",
                          header: "Geom2dLProp_FuncCurNul.hxx", bycopy.} = object of MathFunctionWithDerivative


proc `new`*(this: var Geom2dLPropFuncCurNul; theSize: csize_t): pointer {.
    importcpp: "Geom2dLProp_FuncCurNul::operator new",
    header: "Geom2dLProp_FuncCurNul.hxx".}
proc `delete`*(this: var Geom2dLPropFuncCurNul; theAddress: pointer) {.
    importcpp: "Geom2dLProp_FuncCurNul::operator delete",
    header: "Geom2dLProp_FuncCurNul.hxx".}
proc `new[]`*(this: var Geom2dLPropFuncCurNul; theSize: csize_t): pointer {.
    importcpp: "Geom2dLProp_FuncCurNul::operator new[]",
    header: "Geom2dLProp_FuncCurNul.hxx".}
proc `delete[]`*(this: var Geom2dLPropFuncCurNul; theAddress: pointer) {.
    importcpp: "Geom2dLProp_FuncCurNul::operator delete[]",
    header: "Geom2dLProp_FuncCurNul.hxx".}
proc `new`*(this: var Geom2dLPropFuncCurNul; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dLProp_FuncCurNul::operator new",
    header: "Geom2dLProp_FuncCurNul.hxx".}
proc `delete`*(this: var Geom2dLPropFuncCurNul; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dLProp_FuncCurNul::operator delete",
    header: "Geom2dLProp_FuncCurNul.hxx".}
proc constructGeom2dLPropFuncCurNul*(c: Handle[Geom2dCurve]): Geom2dLPropFuncCurNul {.
    constructor, importcpp: "Geom2dLProp_FuncCurNul(@)",
    header: "Geom2dLProp_FuncCurNul.hxx".}
proc value*(this: var Geom2dLPropFuncCurNul; x: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "Geom2dLProp_FuncCurNul.hxx".}
proc derivative*(this: var Geom2dLPropFuncCurNul; x: StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Derivative", header: "Geom2dLProp_FuncCurNul.hxx".}
proc values*(this: var Geom2dLPropFuncCurNul; x: StandardReal; f: var StandardReal;
            d: var StandardReal): StandardBoolean {.importcpp: "Values",
    header: "Geom2dLProp_FuncCurNul.hxx".}