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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Vertex,
  ../TopAbs/TopAbs_Orientation, ../TColStd/TColStd_HSequenceOfInteger,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of ShapeExtend_WireData"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
type
  ShapeFix_WireSegment* {.importcpp: "ShapeFix_WireSegment",
                         header: "ShapeFix_WireSegment.hxx", bycopy.} = object ## !
                                                                          ## Creates empty
                                                                          ## segment.


proc constructShapeFix_WireSegment*(): ShapeFix_WireSegment {.constructor,
    importcpp: "ShapeFix_WireSegment(@)", header: "ShapeFix_WireSegment.hxx".}
proc constructShapeFix_WireSegment*(wire: handle[ShapeExtend_WireData];
                                   ori: TopAbs_Orientation = TopAbs_EXTERNAL): ShapeFix_WireSegment {.
    constructor, importcpp: "ShapeFix_WireSegment(@)",
    header: "ShapeFix_WireSegment.hxx".}
proc constructShapeFix_WireSegment*(wire: TopoDS_Wire;
                                   ori: TopAbs_Orientation = TopAbs_EXTERNAL): ShapeFix_WireSegment {.
    constructor, importcpp: "ShapeFix_WireSegment(@)",
    header: "ShapeFix_WireSegment.hxx".}
proc Clear*(this: var ShapeFix_WireSegment) {.importcpp: "Clear",
    header: "ShapeFix_WireSegment.hxx".}
proc Load*(this: var ShapeFix_WireSegment; wire: handle[ShapeExtend_WireData]) {.
    importcpp: "Load", header: "ShapeFix_WireSegment.hxx".}
proc WireData*(this: ShapeFix_WireSegment): handle[ShapeExtend_WireData] {.
    noSideEffect, importcpp: "WireData", header: "ShapeFix_WireSegment.hxx".}
proc Orientation*(this: var ShapeFix_WireSegment; ori: TopAbs_Orientation) {.
    importcpp: "Orientation", header: "ShapeFix_WireSegment.hxx".}
proc Orientation*(this: ShapeFix_WireSegment): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "ShapeFix_WireSegment.hxx".}
proc FirstVertex*(this: ShapeFix_WireSegment): TopoDS_Vertex {.noSideEffect,
    importcpp: "FirstVertex", header: "ShapeFix_WireSegment.hxx".}
proc LastVertex*(this: ShapeFix_WireSegment): TopoDS_Vertex {.noSideEffect,
    importcpp: "LastVertex", header: "ShapeFix_WireSegment.hxx".}
proc IsClosed*(this: ShapeFix_WireSegment): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "ShapeFix_WireSegment.hxx".}
proc NbEdges*(this: ShapeFix_WireSegment): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeFix_WireSegment.hxx".}
proc Edge*(this: ShapeFix_WireSegment; i: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "ShapeFix_WireSegment.hxx".}
proc SetEdge*(this: var ShapeFix_WireSegment; i: Standard_Integer; edge: TopoDS_Edge) {.
    importcpp: "SetEdge", header: "ShapeFix_WireSegment.hxx".}
proc AddEdge*(this: var ShapeFix_WireSegment; i: Standard_Integer; edge: TopoDS_Edge) {.
    importcpp: "AddEdge", header: "ShapeFix_WireSegment.hxx".}
proc AddEdge*(this: var ShapeFix_WireSegment; i: Standard_Integer; edge: TopoDS_Edge;
             iumin: Standard_Integer; iumax: Standard_Integer;
             ivmin: Standard_Integer; ivmax: Standard_Integer) {.
    importcpp: "AddEdge", header: "ShapeFix_WireSegment.hxx".}
proc SetPatchIndex*(this: var ShapeFix_WireSegment; i: Standard_Integer;
                   iumin: Standard_Integer; iumax: Standard_Integer;
                   ivmin: Standard_Integer; ivmax: Standard_Integer) {.
    importcpp: "SetPatchIndex", header: "ShapeFix_WireSegment.hxx".}
proc DefineIUMin*(this: var ShapeFix_WireSegment; i: Standard_Integer;
                 iumin: Standard_Integer) {.importcpp: "DefineIUMin",
    header: "ShapeFix_WireSegment.hxx".}
proc DefineIUMax*(this: var ShapeFix_WireSegment; i: Standard_Integer;
                 iumax: Standard_Integer) {.importcpp: "DefineIUMax",
    header: "ShapeFix_WireSegment.hxx".}
proc DefineIVMin*(this: var ShapeFix_WireSegment; i: Standard_Integer;
                 ivmin: Standard_Integer) {.importcpp: "DefineIVMin",
    header: "ShapeFix_WireSegment.hxx".}
proc DefineIVMax*(this: var ShapeFix_WireSegment; i: Standard_Integer;
                 ivmax: Standard_Integer) {.importcpp: "DefineIVMax",
    header: "ShapeFix_WireSegment.hxx".}
proc GetPatchIndex*(this: ShapeFix_WireSegment; i: Standard_Integer;
                   iumin: var Standard_Integer; iumax: var Standard_Integer;
                   ivmin: var Standard_Integer; ivmax: var Standard_Integer) {.
    noSideEffect, importcpp: "GetPatchIndex", header: "ShapeFix_WireSegment.hxx".}
proc CheckPatchIndex*(this: ShapeFix_WireSegment; i: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "CheckPatchIndex", header: "ShapeFix_WireSegment.hxx".}
proc SetVertex*(this: var ShapeFix_WireSegment; theVertex: TopoDS_Vertex) {.
    importcpp: "SetVertex", header: "ShapeFix_WireSegment.hxx".}
proc GetVertex*(this: ShapeFix_WireSegment): TopoDS_Vertex {.noSideEffect,
    importcpp: "GetVertex", header: "ShapeFix_WireSegment.hxx".}
proc IsVertex*(this: ShapeFix_WireSegment): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertex", header: "ShapeFix_WireSegment.hxx".}