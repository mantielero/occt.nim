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
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Sphere"
type
  BRepPrimAPI_MakeSphere* {.importcpp: "BRepPrimAPI_MakeSphere",
                           header: "BRepPrimAPI_MakeSphere.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis


proc `new`*(this: var BRepPrimAPI_MakeSphere; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeSphere::operator new",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeSphere; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeSphere::operator delete",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc `new[]`*(this: var BRepPrimAPI_MakeSphere; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeSphere::operator new[]",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc `delete[]`*(this: var BRepPrimAPI_MakeSphere; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeSphere::operator delete[]",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc `new`*(this: var BRepPrimAPI_MakeSphere; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeSphere::operator new",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeSphere; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeSphere::operator delete",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(r: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(r: StandardReal; angle: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(r: StandardReal; angle1: StandardReal;
                                     angle2: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(r: StandardReal; angle1: StandardReal;
                                     angle2: StandardReal; angle3: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(center: Pnt; r: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(center: Pnt; r: StandardReal;
                                     angle: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(center: Pnt; r: StandardReal;
                                     angle1: StandardReal; angle2: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(center: Pnt; r: StandardReal;
                                     angle1: StandardReal; angle2: StandardReal;
                                     angle3: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(axis: Ax2; r: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(axis: Ax2; r: StandardReal; angle: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(axis: Ax2; r: StandardReal;
                                     angle1: StandardReal; angle2: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(axis: Ax2; r: StandardReal;
                                     angle1: StandardReal; angle2: StandardReal;
                                     angle3: StandardReal): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc oneAxis*(this: var BRepPrimAPI_MakeSphere): StandardAddress {.
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(this: var BRepPrimAPI_MakeSphere): var BRepPrimSphere {.
    importcpp: "Sphere", header: "BRepPrimAPI_MakeSphere.hxx".}