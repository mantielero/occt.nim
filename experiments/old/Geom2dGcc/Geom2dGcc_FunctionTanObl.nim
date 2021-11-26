##  Created on: 1992-01-09
##  Created by: Remi GILET
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

discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of gp_Dir2d"
type
  Geom2dGccFunctionTanObl* {.importcpp: "Geom2dGcc_FunctionTanObl",
                            header: "Geom2dGcc_FunctionTanObl.hxx", bycopy.} = object of MathFunctionWithDerivative


proc `new`*(this: var Geom2dGccFunctionTanObl; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_FunctionTanObl::operator new",
    header: "Geom2dGcc_FunctionTanObl.hxx".}
proc `delete`*(this: var Geom2dGccFunctionTanObl; theAddress: pointer) {.
    importcpp: "Geom2dGcc_FunctionTanObl::operator delete",
    header: "Geom2dGcc_FunctionTanObl.hxx".}
proc `new[]`*(this: var Geom2dGccFunctionTanObl; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_FunctionTanObl::operator new[]",
    header: "Geom2dGcc_FunctionTanObl.hxx".}
proc `delete[]`*(this: var Geom2dGccFunctionTanObl; theAddress: pointer) {.
    importcpp: "Geom2dGcc_FunctionTanObl::operator delete[]",
    header: "Geom2dGcc_FunctionTanObl.hxx".}
proc `new`*(this: var Geom2dGccFunctionTanObl; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dGcc_FunctionTanObl::operator new",
    header: "Geom2dGcc_FunctionTanObl.hxx".}
proc `delete`*(this: var Geom2dGccFunctionTanObl; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dGcc_FunctionTanObl::operator delete",
    header: "Geom2dGcc_FunctionTanObl.hxx".}
proc constructGeom2dGccFunctionTanObl*(curve: Geom2dAdaptorCurve; dir: Dir2d): Geom2dGccFunctionTanObl {.
    constructor, importcpp: "Geom2dGcc_FunctionTanObl(@)",
    header: "Geom2dGcc_FunctionTanObl.hxx".}
proc value*(this: var Geom2dGccFunctionTanObl; x: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "Geom2dGcc_FunctionTanObl.hxx".}
proc derivative*(this: var Geom2dGccFunctionTanObl; x: StandardReal;
                deriv: var StandardReal): StandardBoolean {.importcpp: "Derivative",
    header: "Geom2dGcc_FunctionTanObl.hxx".}
proc values*(this: var Geom2dGccFunctionTanObl; x: StandardReal; f: var StandardReal;
            deriv: var StandardReal): StandardBoolean {.importcpp: "Values",
    header: "Geom2dGcc_FunctionTanObl.hxx".}