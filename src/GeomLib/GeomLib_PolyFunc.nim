##  Created on: 1998-09-22
##  Created by: Philippe MANGINGeomLib_PolyFunc.c
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

## ! Polynomial  Function

type
  GeomLibPolyFunc* {.importcpp: "GeomLib_PolyFunc", header: "GeomLib_PolyFunc.hxx",
                    bycopy.} = object of MathFunctionWithDerivative


proc `new`*(this: var GeomLibPolyFunc; theSize: csize_t): pointer {.
    importcpp: "GeomLib_PolyFunc::operator new", header: "GeomLib_PolyFunc.hxx".}
proc `delete`*(this: var GeomLibPolyFunc; theAddress: pointer) {.
    importcpp: "GeomLib_PolyFunc::operator delete", header: "GeomLib_PolyFunc.hxx".}
proc `new[]`*(this: var GeomLibPolyFunc; theSize: csize_t): pointer {.
    importcpp: "GeomLib_PolyFunc::operator new[]", header: "GeomLib_PolyFunc.hxx".}
proc `delete[]`*(this: var GeomLibPolyFunc; theAddress: pointer) {.
    importcpp: "GeomLib_PolyFunc::operator delete[]",
    header: "GeomLib_PolyFunc.hxx".}
proc `new`*(this: var GeomLibPolyFunc; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLib_PolyFunc::operator new", header: "GeomLib_PolyFunc.hxx".}
proc `delete`*(this: var GeomLibPolyFunc; a2: pointer; a3: pointer) {.
    importcpp: "GeomLib_PolyFunc::operator delete", header: "GeomLib_PolyFunc.hxx".}
proc constructGeomLibPolyFunc*(coeffs: MathVector): GeomLibPolyFunc {.constructor,
    importcpp: "GeomLib_PolyFunc(@)", header: "GeomLib_PolyFunc.hxx".}
proc value*(this: var GeomLibPolyFunc; x: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "GeomLib_PolyFunc.hxx".}
proc derivative*(this: var GeomLibPolyFunc; x: StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Derivative", header: "GeomLib_PolyFunc.hxx".}
proc values*(this: var GeomLibPolyFunc; x: StandardReal; f: var StandardReal;
            d: var StandardReal): StandardBoolean {.importcpp: "Values",
    header: "GeomLib_PolyFunc.hxx".}