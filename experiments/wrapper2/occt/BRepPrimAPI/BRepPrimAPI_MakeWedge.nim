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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepPrim/BRepPrim_Wedge,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../Standard/Standard_Real

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Wedge"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  BRepPrimAPI_MakeWedge* {.importcpp: "BRepPrimAPI_MakeWedge",
                          header: "BRepPrimAPI_MakeWedge.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                      ## !
                                                                                                      ## Make
                                                                                                      ## a
                                                                                                      ## STEP
                                                                                                      ## right
                                                                                                      ## angular
                                                                                                      ## wedge.
                                                                                                      ## (ltx
                                                                                                      ## >=
                                                                                                      ## 0)


proc constructBRepPrimAPI_MakeWedge*(dx: Standard_Real; dy: Standard_Real;
                                    dz: Standard_Real; ltx: Standard_Real): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc constructBRepPrimAPI_MakeWedge*(Axes: gp_Ax2; dx: Standard_Real;
                                    dy: Standard_Real; dz: Standard_Real;
                                    ltx: Standard_Real): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc constructBRepPrimAPI_MakeWedge*(dx: Standard_Real; dy: Standard_Real;
                                    dz: Standard_Real; xmin: Standard_Real;
                                    zmin: Standard_Real; xmax: Standard_Real;
                                    zmax: Standard_Real): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc constructBRepPrimAPI_MakeWedge*(Axes: gp_Ax2; dx: Standard_Real;
                                    dy: Standard_Real; dz: Standard_Real;
                                    xmin: Standard_Real; zmin: Standard_Real;
                                    xmax: Standard_Real; zmax: Standard_Real): BRepPrimAPI_MakeWedge {.
    constructor, importcpp: "BRepPrimAPI_MakeWedge(@)",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc Wedge*(this: var BRepPrimAPI_MakeWedge): var BRepPrim_Wedge {.importcpp: "Wedge",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc Build*(this: var BRepPrimAPI_MakeWedge) {.importcpp: "Build",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc Shell*(this: var BRepPrimAPI_MakeWedge): TopoDS_Shell {.importcpp: "Shell",
    header: "BRepPrimAPI_MakeWedge.hxx".}
converter `TopoDS_Shell`*(this: var BRepPrimAPI_MakeWedge): TopoDS_Shell {.
    importcpp: "BRepPrimAPI_MakeWedge::operator TopoDS_Shell",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc Solid*(this: var BRepPrimAPI_MakeWedge): TopoDS_Solid {.importcpp: "Solid",
    header: "BRepPrimAPI_MakeWedge.hxx".}
converter `TopoDS_Solid`*(this: var BRepPrimAPI_MakeWedge): TopoDS_Solid {.
    importcpp: "BRepPrimAPI_MakeWedge::operator TopoDS_Solid",
    header: "BRepPrimAPI_MakeWedge.hxx".}