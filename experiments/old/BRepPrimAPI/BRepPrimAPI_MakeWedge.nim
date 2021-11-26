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
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Wedge"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  BRepPrimAPI_MakeWedge* {.importcpp: "BRepPrimAPI_MakeWedge",
                          header: "BRepPrimAPI_MakeWedge.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepPrimAPI_MakeWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeWedge::operator new",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeWedge; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeWedge::operator delete",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc `new[]`*(this: var BRepPrimAPI_MakeWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeWedge::operator new[]",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc `delete[]`*(this: var BRepPrimAPI_MakeWedge; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeWedge::operator delete[]",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc `new`*(this: var BRepPrimAPI_MakeWedge; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeWedge::operator new",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeWedge; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeWedge::operator delete",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc constructBRepPrimAPI_MakeWedge*(dx: StandardReal; dy: StandardReal;
                                    dz: StandardReal; ltx: StandardReal): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc constructBRepPrimAPI_MakeWedge*(axes: Ax2; dx: StandardReal; dy: StandardReal;
                                    dz: StandardReal; ltx: StandardReal): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc constructBRepPrimAPI_MakeWedge*(dx: StandardReal; dy: StandardReal;
                                    dz: StandardReal; xmin: StandardReal;
                                    zmin: StandardReal; xmax: StandardReal;
                                    zmax: StandardReal): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc constructBRepPrimAPI_MakeWedge*(axes: Ax2; dx: StandardReal; dy: StandardReal;
                                    dz: StandardReal; xmin: StandardReal;
                                    zmin: StandardReal; xmax: StandardReal;
                                    zmax: StandardReal): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc wedge*(this: var BRepPrimAPI_MakeWedge): var BRepPrimWedge {.importcpp: "Wedge",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc build*(this: var BRepPrimAPI_MakeWedge) {.importcpp: "Build",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc shell*(this: var BRepPrimAPI_MakeWedge): TopoDS_Shell {.importcpp: "Shell",
    header: "BRepPrimAPI_MakeWedge.hxx".}
converter `topoDS_Shell`*(this: var BRepPrimAPI_MakeWedge): TopoDS_Shell {.
    importcpp: "BRepPrimAPI_MakeWedge::operator TopoDS_Shell",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc solid*(this: var BRepPrimAPI_MakeWedge): TopoDS_Solid {.importcpp: "Solid",
    header: "BRepPrimAPI_MakeWedge.hxx".}
converter `topoDS_Solid`*(this: var BRepPrimAPI_MakeWedge): TopoDS_Solid {.
    importcpp: "BRepPrimAPI_MakeWedge::operator TopoDS_Solid",
    header: "BRepPrimAPI_MakeWedge.hxx".}