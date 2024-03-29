import ../gp/gp_types
import brepprimapi_types
import ../topods/topods_types
import ../brepprim/brepprim_types




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



proc wedge*(dx: cfloat; dy: cfloat; dz: cfloat; ltx: cfloat): BRepPrimAPI_MakeWedge {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeWedge(@)", header: "BRepPrimAPI_MakeWedge.hxx".}
proc wedge*(axes: gp_Ax2; dx: cfloat; dy: cfloat; dz: cfloat; ltx: cfloat): BRepPrimAPI_MakeWedge {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeWedge(@)", header: "BRepPrimAPI_MakeWedge.hxx".}
proc wedge*(dx: cfloat; dy: cfloat; dz: cfloat; xmin: cfloat;
                              zmin: cfloat; xmax: cfloat; zmax: cfloat): BRepPrimAPI_MakeWedge {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeWedge(@)", header: "BRepPrimAPI_MakeWedge.hxx".}
proc wedge*(axes: gp_Ax2; dx: cfloat; dy: cfloat; dz: cfloat;
                              xmin: cfloat; zmin: cfloat; xmax: cfloat; zmax: cfloat): BRepPrimAPI_MakeWedge {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeWedge(@)", header: "BRepPrimAPI_MakeWedge.hxx".}
proc wedge*(this: var BRepPrimAPI_MakeWedge): var BRepPrimWedge {.cdecl,
    importcpp: "Wedge", header: "BRepPrimAPI_MakeWedge.hxx".}
proc build*(this: var BRepPrimAPI_MakeWedge) {.cdecl, importcpp: "Build",
    header: "BRepPrimAPI_MakeWedge.hxx".}
proc shell*(this: var BRepPrimAPI_MakeWedge): TopoDS_Shell {.cdecl,
    importcpp: "Shell", header: "BRepPrimAPI_MakeWedge.hxx".}
converter `topoDS_Shell`*(this: var BRepPrimAPI_MakeWedge): TopoDS_Shell {.cdecl,
    importcpp: "BRepPrimAPI_MakeWedge::operator TopoDS_Shell", header: "BRepPrimAPI_MakeWedge.hxx".}
proc solid*(this: var BRepPrimAPI_MakeWedge): TopoDS_Solid {.cdecl,
    importcpp: "Solid", header: "BRepPrimAPI_MakeWedge.hxx".}
converter `topoDS_Solid`*(this: var BRepPrimAPI_MakeWedge): TopoDS_Solid {.cdecl,
    importcpp: "BRepPrimAPI_MakeWedge::operator TopoDS_Solid", header: "BRepPrimAPI_MakeWedge.hxx".}


