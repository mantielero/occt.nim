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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepPrim_Builder, ../gp/gp_Ax2,
  ../Standard/Standard_Real, ../TopoDS/TopoDS_Shell, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Vertex, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Wire,
  ../TopoDS/TopoDS_Face, BRepPrim_Direction

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
  BRepPrim_GWedge* {.importcpp: "BRepPrim_GWedge", header: "BRepPrim_GWedge.hxx",
                    bycopy.} = object ## ! Default constructor


proc constructBRepPrim_GWedge*(): BRepPrim_GWedge {.constructor,
    importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc constructBRepPrim_GWedge*(B: BRepPrim_Builder; Axes: gp_Ax2; dx: Standard_Real;
                              dy: Standard_Real; dz: Standard_Real): BRepPrim_GWedge {.
    constructor, importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc constructBRepPrim_GWedge*(B: BRepPrim_Builder; Axes: gp_Ax2; dx: Standard_Real;
                              dy: Standard_Real; dz: Standard_Real;
                              ltx: Standard_Real): BRepPrim_GWedge {.constructor,
    importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc constructBRepPrim_GWedge*(B: BRepPrim_Builder; Axes: gp_Ax2;
                              xmin: Standard_Real; ymin: Standard_Real;
                              zmin: Standard_Real; z2min: Standard_Real;
                              x2min: Standard_Real; xmax: Standard_Real;
                              ymax: Standard_Real; zmax: Standard_Real;
                              z2max: Standard_Real; x2max: Standard_Real): BRepPrim_GWedge {.
    constructor, importcpp: "BRepPrim_GWedge(@)", header: "BRepPrim_GWedge.hxx".}
proc Axes*(this: BRepPrim_GWedge): gp_Ax2 {.noSideEffect, importcpp: "Axes",
                                        header: "BRepPrim_GWedge.hxx".}
proc GetXMin*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetXMin", header: "BRepPrim_GWedge.hxx".}
proc GetYMin*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetYMin", header: "BRepPrim_GWedge.hxx".}
proc GetZMin*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetZMin", header: "BRepPrim_GWedge.hxx".}
proc GetZ2Min*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetZ2Min", header: "BRepPrim_GWedge.hxx".}
proc GetX2Min*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetX2Min", header: "BRepPrim_GWedge.hxx".}
proc GetXMax*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetXMax", header: "BRepPrim_GWedge.hxx".}
proc GetYMax*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetYMax", header: "BRepPrim_GWedge.hxx".}
proc GetZMax*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetZMax", header: "BRepPrim_GWedge.hxx".}
proc GetZ2Max*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetZ2Max", header: "BRepPrim_GWedge.hxx".}
proc GetX2Max*(this: BRepPrim_GWedge): Standard_Real {.noSideEffect,
    importcpp: "GetX2Max", header: "BRepPrim_GWedge.hxx".}
proc Open*(this: var BRepPrim_GWedge; d1: BRepPrim_Direction) {.importcpp: "Open",
    header: "BRepPrim_GWedge.hxx".}
proc Close*(this: var BRepPrim_GWedge; d1: BRepPrim_Direction) {.importcpp: "Close",
    header: "BRepPrim_GWedge.hxx".}
proc IsInfinite*(this: BRepPrim_GWedge; d1: BRepPrim_Direction): Standard_Boolean {.
    noSideEffect, importcpp: "IsInfinite", header: "BRepPrim_GWedge.hxx".}
proc Shell*(this: var BRepPrim_GWedge): TopoDS_Shell {.importcpp: "Shell",
    header: "BRepPrim_GWedge.hxx".}
proc HasFace*(this: BRepPrim_GWedge; d1: BRepPrim_Direction): Standard_Boolean {.
    noSideEffect, importcpp: "HasFace", header: "BRepPrim_GWedge.hxx".}
proc Face*(this: var BRepPrim_GWedge; d1: BRepPrim_Direction): TopoDS_Face {.
    importcpp: "Face", header: "BRepPrim_GWedge.hxx".}
proc Plane*(this: var BRepPrim_GWedge; d1: BRepPrim_Direction): gp_Pln {.
    importcpp: "Plane", header: "BRepPrim_GWedge.hxx".}
proc HasWire*(this: BRepPrim_GWedge; d1: BRepPrim_Direction): Standard_Boolean {.
    noSideEffect, importcpp: "HasWire", header: "BRepPrim_GWedge.hxx".}
proc Wire*(this: var BRepPrim_GWedge; d1: BRepPrim_Direction): TopoDS_Wire {.
    importcpp: "Wire", header: "BRepPrim_GWedge.hxx".}
proc HasEdge*(this: BRepPrim_GWedge; d1: BRepPrim_Direction; d2: BRepPrim_Direction): Standard_Boolean {.
    noSideEffect, importcpp: "HasEdge", header: "BRepPrim_GWedge.hxx".}
proc Edge*(this: var BRepPrim_GWedge; d1: BRepPrim_Direction; d2: BRepPrim_Direction): TopoDS_Edge {.
    importcpp: "Edge", header: "BRepPrim_GWedge.hxx".}
proc Line*(this: var BRepPrim_GWedge; d1: BRepPrim_Direction; d2: BRepPrim_Direction): gp_Lin {.
    importcpp: "Line", header: "BRepPrim_GWedge.hxx".}
proc HasVertex*(this: BRepPrim_GWedge; d1: BRepPrim_Direction;
               d2: BRepPrim_Direction; d3: BRepPrim_Direction): Standard_Boolean {.
    noSideEffect, importcpp: "HasVertex", header: "BRepPrim_GWedge.hxx".}
proc Vertex*(this: var BRepPrim_GWedge; d1: BRepPrim_Direction;
            d2: BRepPrim_Direction; d3: BRepPrim_Direction): TopoDS_Vertex {.
    importcpp: "Vertex", header: "BRepPrim_GWedge.hxx".}
proc Point*(this: var BRepPrim_GWedge; d1: BRepPrim_Direction; d2: BRepPrim_Direction;
           d3: BRepPrim_Direction): gp_Pnt {.importcpp: "Point",
    header: "BRepPrim_GWedge.hxx".}
proc IsDegeneratedShape*(this: var BRepPrim_GWedge): Standard_Boolean {.
    importcpp: "IsDegeneratedShape", header: "BRepPrim_GWedge.hxx".}