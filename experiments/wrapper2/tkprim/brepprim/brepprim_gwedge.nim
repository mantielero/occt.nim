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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepPrim_Builder"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pln"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Lin"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
type
  BRepPrimGWedge* {.importcpp: "BRepPrim_GWedge", header: "BRepPrim_GWedge.hxx",
                   bycopy.} = object ## ! Default constructor


proc newBRepPrimGWedge*(): BRepPrimGWedge {.cdecl, constructor,
    importcpp: "BRepPrim_GWedge(@)", dynlib: tkprim.}
proc newBRepPrimGWedge*(b: BRepPrimBuilder; axes: Ax2; dx: cfloat; dy: cfloat; dz: cfloat): BRepPrimGWedge {.
    cdecl, constructor, importcpp: "BRepPrim_GWedge(@)", dynlib: tkprim.}
proc newBRepPrimGWedge*(b: BRepPrimBuilder; axes: Ax2; dx: cfloat; dy: cfloat;
                       dz: cfloat; ltx: cfloat): BRepPrimGWedge {.cdecl, constructor,
    importcpp: "BRepPrim_GWedge(@)", dynlib: tkprim.}
proc newBRepPrimGWedge*(b: BRepPrimBuilder; axes: Ax2; xmin: cfloat; ymin: cfloat;
                       zmin: cfloat; z2min: cfloat; x2min: cfloat; xmax: cfloat;
                       ymax: cfloat; zmax: cfloat; z2max: cfloat; x2max: cfloat): BRepPrimGWedge {.
    cdecl, constructor, importcpp: "BRepPrim_GWedge(@)", dynlib: tkprim.}
proc axes*(this: BRepPrimGWedge): Ax2 {.noSideEffect, cdecl, importcpp: "Axes",
                                    dynlib: tkprim.}
proc getXMin*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetXMin", dynlib: tkprim.}
proc getYMin*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetYMin", dynlib: tkprim.}
proc getZMin*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetZMin", dynlib: tkprim.}
proc getZ2Min*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetZ2Min", dynlib: tkprim.}
proc getX2Min*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetX2Min", dynlib: tkprim.}
proc getXMax*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetXMax", dynlib: tkprim.}
proc getYMax*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetYMax", dynlib: tkprim.}
proc getZMax*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetZMax", dynlib: tkprim.}
proc getZ2Max*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetZ2Max", dynlib: tkprim.}
proc getX2Max*(this: BRepPrimGWedge): cfloat {.noSideEffect, cdecl,
    importcpp: "GetX2Max", dynlib: tkprim.}
proc open*(this: var BRepPrimGWedge; d1: BRepPrimDirection) {.cdecl, importcpp: "Open",
    dynlib: tkprim.}
proc close*(this: var BRepPrimGWedge; d1: BRepPrimDirection) {.cdecl,
    importcpp: "Close", dynlib: tkprim.}
proc isInfinite*(this: BRepPrimGWedge; d1: BRepPrimDirection): bool {.noSideEffect,
    cdecl, importcpp: "IsInfinite", dynlib: tkprim.}
proc shell*(this: var BRepPrimGWedge): TopoDS_Shell {.cdecl, importcpp: "Shell",
    dynlib: tkprim.}
proc hasFace*(this: BRepPrimGWedge; d1: BRepPrimDirection): bool {.noSideEffect, cdecl,
    importcpp: "HasFace", dynlib: tkprim.}
proc face*(this: var BRepPrimGWedge; d1: BRepPrimDirection): TopoDS_Face {.cdecl,
    importcpp: "Face", dynlib: tkprim.}
proc plane*(this: var BRepPrimGWedge; d1: BRepPrimDirection): Pln {.cdecl,
    importcpp: "Plane", dynlib: tkprim.}
proc hasWire*(this: BRepPrimGWedge; d1: BRepPrimDirection): bool {.noSideEffect, cdecl,
    importcpp: "HasWire", dynlib: tkprim.}
proc wire*(this: var BRepPrimGWedge; d1: BRepPrimDirection): TopoDS_Wire {.cdecl,
    importcpp: "Wire", dynlib: tkprim.}
proc hasEdge*(this: BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): bool {.
    noSideEffect, cdecl, importcpp: "HasEdge", dynlib: tkprim.}
proc edge*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): TopoDS_Edge {.
    cdecl, importcpp: "Edge", dynlib: tkprim.}
proc line*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): Lin {.
    cdecl, importcpp: "Line", dynlib: tkprim.}
proc hasVertex*(this: BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
               d3: BRepPrimDirection): bool {.noSideEffect, cdecl,
    importcpp: "HasVertex", dynlib: tkprim.}
proc vertex*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
            d3: BRepPrimDirection): TopoDS_Vertex {.cdecl, importcpp: "Vertex",
    dynlib: tkprim.}
proc point*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
           d3: BRepPrimDirection): Pnt {.cdecl, importcpp: "Point", dynlib: tkprim.}
proc isDegeneratedShape*(this: var BRepPrimGWedge): bool {.cdecl,
    importcpp: "IsDegeneratedShape", dynlib: tkprim.}