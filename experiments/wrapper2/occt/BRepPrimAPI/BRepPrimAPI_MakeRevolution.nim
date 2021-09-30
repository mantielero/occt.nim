##  Created on: 1993-07-22
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Revolution"
type
  BRepPrimAPI_MakeRevolution* {.importcpp: "BRepPrimAPI_MakeRevolution",
                               header: "BRepPrimAPI_MakeRevolution.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis


proc `new`*(this: var BRepPrimAPI_MakeRevolution; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator new",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeRevolution; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator delete",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc `new[]`*(this: var BRepPrimAPI_MakeRevolution; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator new[]",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc `delete[]`*(this: var BRepPrimAPI_MakeRevolution; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator delete[]",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc `new`*(this: var BRepPrimAPI_MakeRevolution; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator new",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeRevolution; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeRevolution::operator delete",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc constructBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve]): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc constructBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve];
    angle: StandardReal): BRepPrimAPI_MakeRevolution {.constructor,
    importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc constructBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve];
    vMin: StandardReal; vMax: StandardReal): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc constructBRepPrimAPI_MakeRevolution*(meridian: Handle[GeomCurve];
    vMin: StandardReal; vMax: StandardReal; angle: StandardReal): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc constructBRepPrimAPI_MakeRevolution*(axes: Ax2; meridian: Handle[GeomCurve]): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc constructBRepPrimAPI_MakeRevolution*(axes: Ax2; meridian: Handle[GeomCurve];
    angle: StandardReal): BRepPrimAPI_MakeRevolution {.constructor,
    importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc constructBRepPrimAPI_MakeRevolution*(axes: Ax2; meridian: Handle[GeomCurve];
    vMin: StandardReal; vMax: StandardReal): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc constructBRepPrimAPI_MakeRevolution*(axes: Ax2; meridian: Handle[GeomCurve];
    vMin: StandardReal; vMax: StandardReal; angle: StandardReal): BRepPrimAPI_MakeRevolution {.
    constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)",
    header: "BRepPrimAPI_MakeRevolution.hxx".}
proc oneAxis*(this: var BRepPrimAPI_MakeRevolution): StandardAddress {.
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc revolution*(this: var BRepPrimAPI_MakeRevolution): var BRepPrimRevolution {.
    importcpp: "Revolution", header: "BRepPrimAPI_MakeRevolution.hxx".}