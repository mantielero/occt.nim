##  Created on: 1993-07-21
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
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Cone"
type
  BRepPrimAPI_MakeCone* {.importcpp: "BRepPrimAPI_MakeCone",
                         header: "BRepPrimAPI_MakeCone.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis


proc `new`*(this: var BRepPrimAPI_MakeCone; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeCone::operator new",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeCone; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeCone::operator delete",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc `new[]`*(this: var BRepPrimAPI_MakeCone; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeCone::operator new[]",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc `delete[]`*(this: var BRepPrimAPI_MakeCone; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeCone::operator delete[]",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc `new`*(this: var BRepPrimAPI_MakeCone; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeCone::operator new",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeCone; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeCone::operator delete",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc constructBRepPrimAPI_MakeCone*(r1: StandardReal; r2: StandardReal;
                                   h: StandardReal): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc constructBRepPrimAPI_MakeCone*(r1: StandardReal; r2: StandardReal;
                                   h: StandardReal; angle: StandardReal): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc constructBRepPrimAPI_MakeCone*(axes: Ax2; r1: StandardReal; r2: StandardReal;
                                   h: StandardReal): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc constructBRepPrimAPI_MakeCone*(axes: Ax2; r1: StandardReal; r2: StandardReal;
                                   h: StandardReal; angle: StandardReal): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc oneAxis*(this: var BRepPrimAPI_MakeCone): StandardAddress {.
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeCone.hxx".}
proc cone*(this: var BRepPrimAPI_MakeCone): var BRepPrimCone {.importcpp: "Cone",
    header: "BRepPrimAPI_MakeCone.hxx".}