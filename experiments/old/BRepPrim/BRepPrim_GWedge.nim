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
                   bycopy.} = object of RootObj


proc `new`*(this: var BRepPrimGWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_GWedge::operator new", header: "BRepPrim_GWedge.hxx".}
proc `delete`*(this: var BRepPrimGWedge; theAddress: pointer) {.
    importcpp: "BRepPrim_GWedge::operator delete", header: "BRepPrim_GWedge.hxx".}
proc `new[]`*(this: var BRepPrimGWedge; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_GWedge::operator new[]", header: "BRepPrim_GWedge.hxx".}
proc `delete[]`*(this: var BRepPrimGWedge; theAddress: pointer) {.
    importcpp: "BRepPrim_GWedge::operator delete[]", header: "BRepPrim_GWedge.hxx".}
proc `new`*(this: var BRepPrimGWedge; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_GWedge::operator new", header: "BRepPrim_GWedge.hxx".}
proc `delete`*(this: var BRepPrimGWedge; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_GWedge::operator delete", header: "BRepPrim_GWedge.hxx".}
proc constructBRepPrimGWedge*(): BRepPrimGWedge {.constructor,
    importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc constructBRepPrimGWedge*(b: BRepPrimBuilder; axes: Ax2; dx: StandardReal;
                             dy: StandardReal; dz: StandardReal): BRepPrimGWedge {.
    constructor, importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc constructBRepPrimGWedge*(b: BRepPrimBuilder; axes: Ax2; dx: StandardReal;
                             dy: StandardReal; dz: StandardReal; ltx: StandardReal): BRepPrimGWedge {.
    constructor, importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc constructBRepPrimGWedge*(b: BRepPrimBuilder; axes: Ax2; xmin: StandardReal;
                             ymin: StandardReal; zmin: StandardReal;
                             z2min: StandardReal; x2min: StandardReal;
                             xmax: StandardReal; ymax: StandardReal;
                             zmax: StandardReal; z2max: StandardReal;
                             x2max: StandardReal): BRepPrimGWedge {.constructor,
    importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc axes*(this: BRepPrimGWedge): Ax2 {.noSideEffect, importcpp: "Axes",
                                    header: "BRepPrim_GWedge.hxx".}
proc getXMin*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetXMin", header: "BRepPrim_GWedge.hxx".}
proc getYMin*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetYMin", header: "BRepPrim_GWedge.hxx".}
proc getZMin*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetZMin", header: "BRepPrim_GWedge.hxx".}
proc getZ2Min*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetZ2Min", header: "BRepPrim_GWedge.hxx".}
proc getX2Min*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetX2Min", header: "BRepPrim_GWedge.hxx".}
proc getXMax*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetXMax", header: "BRepPrim_GWedge.hxx".}
proc getYMax*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetYMax", header: "BRepPrim_GWedge.hxx".}
proc getZMax*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetZMax", header: "BRepPrim_GWedge.hxx".}
proc getZ2Max*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetZ2Max", header: "BRepPrim_GWedge.hxx".}
proc getX2Max*(this: BRepPrimGWedge): StandardReal {.noSideEffect,
    importcpp: "GetX2Max", header: "BRepPrim_GWedge.hxx".}
proc open*(this: var BRepPrimGWedge; d1: BRepPrimDirection) {.importcpp: "Open",
    header: "BRepPrim_GWedge.hxx".}
proc close*(this: var BRepPrimGWedge; d1: BRepPrimDirection) {.importcpp: "Close",
    header: "BRepPrim_GWedge.hxx".}
proc isInfinite*(this: BRepPrimGWedge; d1: BRepPrimDirection): StandardBoolean {.
    noSideEffect, importcpp: "IsInfinite", header: "BRepPrim_GWedge.hxx".}
proc shell*(this: var BRepPrimGWedge): TopoDS_Shell {.importcpp: "Shell",
    header: "BRepPrim_GWedge.hxx".}
proc hasFace*(this: BRepPrimGWedge; d1: BRepPrimDirection): StandardBoolean {.
    noSideEffect, importcpp: "HasFace", header: "BRepPrim_GWedge.hxx".}
proc face*(this: var BRepPrimGWedge; d1: BRepPrimDirection): TopoDS_Face {.
    importcpp: "Face", header: "BRepPrim_GWedge.hxx".}
proc plane*(this: var BRepPrimGWedge; d1: BRepPrimDirection): Pln {.importcpp: "Plane",
    header: "BRepPrim_GWedge.hxx".}
proc hasWire*(this: BRepPrimGWedge; d1: BRepPrimDirection): StandardBoolean {.
    noSideEffect, importcpp: "HasWire", header: "BRepPrim_GWedge.hxx".}
proc wire*(this: var BRepPrimGWedge; d1: BRepPrimDirection): TopoDS_Wire {.
    importcpp: "Wire", header: "BRepPrim_GWedge.hxx".}
proc hasEdge*(this: BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): StandardBoolean {.
    noSideEffect, importcpp: "HasEdge", header: "BRepPrim_GWedge.hxx".}
proc edge*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): TopoDS_Edge {.
    importcpp: "Edge", header: "BRepPrim_GWedge.hxx".}
proc line*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection): Lin {.
    importcpp: "Line", header: "BRepPrim_GWedge.hxx".}
proc hasVertex*(this: BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
               d3: BRepPrimDirection): StandardBoolean {.noSideEffect,
    importcpp: "HasVertex", header: "BRepPrim_GWedge.hxx".}
proc vertex*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
            d3: BRepPrimDirection): TopoDS_Vertex {.importcpp: "Vertex",
    header: "BRepPrim_GWedge.hxx".}
proc point*(this: var BRepPrimGWedge; d1: BRepPrimDirection; d2: BRepPrimDirection;
           d3: BRepPrimDirection): Pnt {.importcpp: "Point",
                                      header: "BRepPrim_GWedge.hxx".}
proc isDegeneratedShape*(this: var BRepPrimGWedge): StandardBoolean {.
    importcpp: "IsDegeneratedShape", header: "BRepPrim_GWedge.hxx".}