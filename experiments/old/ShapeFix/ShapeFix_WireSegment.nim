##  Created on: 1999-04-27
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of ShapeExtend_WireData"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
type
  ShapeFixWireSegment* {.importcpp: "ShapeFix_WireSegment",
                        header: "ShapeFix_WireSegment.hxx", bycopy.} = object ## ! Creates empty
                                                                         ## segment.


proc constructShapeFixWireSegment*(): ShapeFixWireSegment {.constructor,
    importcpp: "ShapeFix_WireSegment(@)", header: "ShapeFix_WireSegment.hxx".}
proc constructShapeFixWireSegment*(wire: Handle[ShapeExtendWireData];
                                  ori: TopAbsOrientation = topAbsEXTERNAL): ShapeFixWireSegment {.
    constructor, importcpp: "ShapeFix_WireSegment(@)",
    header: "ShapeFix_WireSegment.hxx".}
proc constructShapeFixWireSegment*(wire: TopoDS_Wire;
                                  ori: TopAbsOrientation = topAbsEXTERNAL): ShapeFixWireSegment {.
    constructor, importcpp: "ShapeFix_WireSegment(@)",
    header: "ShapeFix_WireSegment.hxx".}
proc clear*(this: var ShapeFixWireSegment) {.importcpp: "Clear",
    header: "ShapeFix_WireSegment.hxx".}
proc load*(this: var ShapeFixWireSegment; wire: Handle[ShapeExtendWireData]) {.
    importcpp: "Load", header: "ShapeFix_WireSegment.hxx".}
proc wireData*(this: ShapeFixWireSegment): Handle[ShapeExtendWireData] {.
    noSideEffect, importcpp: "WireData", header: "ShapeFix_WireSegment.hxx".}
proc orientation*(this: var ShapeFixWireSegment; ori: TopAbsOrientation) {.
    importcpp: "Orientation", header: "ShapeFix_WireSegment.hxx".}
proc orientation*(this: ShapeFixWireSegment): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "ShapeFix_WireSegment.hxx".}
proc firstVertex*(this: ShapeFixWireSegment): TopoDS_Vertex {.noSideEffect,
    importcpp: "FirstVertex", header: "ShapeFix_WireSegment.hxx".}
proc lastVertex*(this: ShapeFixWireSegment): TopoDS_Vertex {.noSideEffect,
    importcpp: "LastVertex", header: "ShapeFix_WireSegment.hxx".}
proc isClosed*(this: ShapeFixWireSegment): bool {.noSideEffect,
    importcpp: "IsClosed", header: "ShapeFix_WireSegment.hxx".}
proc nbEdges*(this: ShapeFixWireSegment): cint {.noSideEffect, importcpp: "NbEdges",
    header: "ShapeFix_WireSegment.hxx".}
proc edge*(this: ShapeFixWireSegment; i: cint): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "ShapeFix_WireSegment.hxx".}
proc setEdge*(this: var ShapeFixWireSegment; i: cint; edge: TopoDS_Edge) {.
    importcpp: "SetEdge", header: "ShapeFix_WireSegment.hxx".}
proc addEdge*(this: var ShapeFixWireSegment; i: cint; edge: TopoDS_Edge) {.
    importcpp: "AddEdge", header: "ShapeFix_WireSegment.hxx".}
proc addEdge*(this: var ShapeFixWireSegment; i: cint; edge: TopoDS_Edge; iumin: cint;
             iumax: cint; ivmin: cint; ivmax: cint) {.importcpp: "AddEdge",
    header: "ShapeFix_WireSegment.hxx".}
proc setPatchIndex*(this: var ShapeFixWireSegment; i: cint; iumin: cint; iumax: cint;
                   ivmin: cint; ivmax: cint) {.importcpp: "SetPatchIndex",
    header: "ShapeFix_WireSegment.hxx".}
proc defineIUMin*(this: var ShapeFixWireSegment; i: cint; iumin: cint) {.
    importcpp: "DefineIUMin", header: "ShapeFix_WireSegment.hxx".}
proc defineIUMax*(this: var ShapeFixWireSegment; i: cint; iumax: cint) {.
    importcpp: "DefineIUMax", header: "ShapeFix_WireSegment.hxx".}
proc defineIVMin*(this: var ShapeFixWireSegment; i: cint; ivmin: cint) {.
    importcpp: "DefineIVMin", header: "ShapeFix_WireSegment.hxx".}
proc defineIVMax*(this: var ShapeFixWireSegment; i: cint; ivmax: cint) {.
    importcpp: "DefineIVMax", header: "ShapeFix_WireSegment.hxx".}
proc getPatchIndex*(this: ShapeFixWireSegment; i: cint; iumin: var cint;
                   iumax: var cint; ivmin: var cint; ivmax: var cint) {.noSideEffect,
    importcpp: "GetPatchIndex", header: "ShapeFix_WireSegment.hxx".}
proc checkPatchIndex*(this: ShapeFixWireSegment; i: cint): bool {.noSideEffect,
    importcpp: "CheckPatchIndex", header: "ShapeFix_WireSegment.hxx".}
proc setVertex*(this: var ShapeFixWireSegment; theVertex: TopoDS_Vertex) {.
    importcpp: "SetVertex", header: "ShapeFix_WireSegment.hxx".}
proc getVertex*(this: ShapeFixWireSegment): TopoDS_Vertex {.noSideEffect,
    importcpp: "GetVertex", header: "ShapeFix_WireSegment.hxx".}
proc isVertex*(this: ShapeFixWireSegment): bool {.noSideEffect,
    importcpp: "IsVertex", header: "ShapeFix_WireSegment.hxx".}

























