import ../gp/gp_types
import brepprim_types
import ../topods/topods_types





##  Created on: 1991-09-18
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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



proc newBRepPrimGWedge*(): BRepPrimGWedge {.cdecl, constructor,
    importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc newBRepPrimGWedge*(b: BRepPrimBuilder; axes: gp_Ax2; dx: cfloat; dy: cfloat; dz: cfloat): BRepPrimGWedge {.
    cdecl, constructor, importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc newBRepPrimGWedge*(b: BRepPrimBuilder; axes: gp_Ax2; dx: cfloat; dy: cfloat;
                       dz: cfloat; ltx: cfloat): BRepPrimGWedge {.cdecl, constructor,
    importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc newBRepPrimGWedge*(b: BRepPrimBuilder; axes: gp_Ax2; xmin: cfloat; ymin: cfloat;
                       zmin: cfloat; z2min: cfloat; x2min: cfloat; xmax: cfloat;
                       ymax: cfloat; zmax: cfloat; z2max: cfloat; x2max: cfloat): BRepPrimGWedge {.
    cdecl, constructor, importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc axes*(this: BRepPrimGWedge): gp_Ax2 {.noSideEffect, cdecl, importcpp: "Axes",
                                    header: "BRepPrim_GWedge.hxx".}
proc getXMin*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetXMin", header: "BRepPrim_GWedge.hxx".}
proc getYMin*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetYMin", header: "BRepPrim_GWedge.hxx".}
proc getZMin*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetZMin", header: "BRepPrim_GWedge.hxx".}
proc getZ2Min*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetZ2Min", header: "BRepPrim_GWedge.hxx".}
proc getX2Min*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetX2Min", header: "BRepPrim_GWedge.hxx".}
proc getXMax*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetXMax", header: "BRepPrim_GWedge.hxx".}
proc getYMax*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetYMax", header: "BRepPrim_GWedge.hxx".}
proc getZMax*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetZMax", header: "BRepPrim_GWedge.hxx".}
proc getZ2Max*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetZ2Max", header: "BRepPrim_GWedge.hxx".}
proc getX2Max*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetX2Max", header: "BRepPrim_GWedge.hxx".}
proc open*(this: var BRepPrimGWedge; d1: BRepPrimDirection) {.cdecl, importcpp: "Open",
    header: "BRepPrim_GWedge.hxx".}
proc close*(this: var BRepPrimGWedge; d1: BRepPrimDirection) {.cdecl,
    importcpp: "Close", header: "BRepPrim_GWedge.hxx".}
proc isInfinite*(this: BRepPrimGWedge; d1: BRepPrimDirection): bool {.noSideEffect,
    cdecl, importcpp: "IsInfinite", header: "BRepPrim_GWedge.hxx".}
proc shell*(this: var BRepPrimGWedge): TopoDS_Shell {.cdecl, importcpp: "Shell",
    header: "BRepPrim_GWedge.hxx".}
proc hasFace*(this: BRepPrimGWedge; d1: BRepPrimDirection): bool {.noSideEffect, cdecl,
    importcpp: "HasFace", header: "BRepPrim_GWedge.hxx".}
proc face*(this: var BRepPrimGWedge; d1: BRepPrimDirection): TopoDS_Face {.cdecl,
    importcpp: "Face", header: "BRepPrim_GWedge.hxx".}
proc plane*(this: var BRepPrimGWedge; d1: BRepPrimDirection): gp_Pln {.cdecl,
    importcpp: "Plane", header: "BRepPrim_GWedge.hxx".}
proc hasWire*(this: BRepPrimGWedge; d1: BRepPrimDirection): bool {.noSideEffect, cdecl,
    importcpp: "HasWire", header: "BRepPrim_GWedge.hxx".}
proc wire*(this: var BRepPrimGWedge; d1: BRepPrimDirection): TopoDS_Wire {.cdecl,
    importcpp: "Wire", header: "BRepPrim_GWedge.hxx".}
proc hasEdge*(this: BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): bool {.
    noSideEffect, cdecl, importcpp: "HasEdge", header: "BRepPrim_GWedge.hxx".}
proc edge*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): TopoDS_Edge {.
    cdecl, importcpp: "Edge", header: "BRepPrim_GWedge.hxx".}
proc line*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): gp_Lin {.
    cdecl, importcpp: "Line", header: "BRepPrim_GWedge.hxx".}
proc hasVertex*(this: BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
               d3: BRepPrimDirection): bool {.noSideEffect, cdecl,
    importcpp: "HasVertex", header: "BRepPrim_GWedge.hxx".}
proc vertex*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
            d3: BRepPrimDirection): TopoDS_Vertex {.cdecl, importcpp: "Vertex",
    header: "BRepPrim_GWedge.hxx".}
proc point*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
           d3: BRepPrimDirection): gp_Pnt {.cdecl, importcpp: "Point", header: "BRepPrim_GWedge.hxx".}
proc isDegeneratedShape*(this: var BRepPrimGWedge): bool {.cdecl,
    importcpp: "IsDegeneratedShape", header: "BRepPrim_GWedge.hxx".}


