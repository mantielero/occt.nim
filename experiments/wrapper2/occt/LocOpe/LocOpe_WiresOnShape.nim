##  Created on: 1996-01-11
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Compound"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of LocOpe_WiresOnShape"
discard "forward decl of LocOpe_WiresOnShape"
type
  HandleLocOpeWiresOnShape* = Handle[LocOpeWiresOnShape]
  LocOpeWiresOnShape* {.importcpp: "LocOpe_WiresOnShape",
                       header: "LocOpe_WiresOnShape.hxx", bycopy.} = object of StandardTransient


proc constructLocOpeWiresOnShape*(s: TopoDS_Shape): LocOpeWiresOnShape {.
    constructor, importcpp: "LocOpe_WiresOnShape(@)",
    header: "LocOpe_WiresOnShape.hxx".}
proc init*(this: var LocOpeWiresOnShape; s: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_WiresOnShape.hxx".}
proc add*(this: var LocOpeWiresOnShape; theEdges: TopToolsSequenceOfShape): bool {.
    importcpp: "Add", header: "LocOpe_WiresOnShape.hxx".}
proc setCheckInterior*(this: var LocOpeWiresOnShape; toCheckInterior: bool) {.
    importcpp: "SetCheckInterior", header: "LocOpe_WiresOnShape.hxx".}
proc `bind`*(this: var LocOpeWiresOnShape; w: TopoDS_Wire; f: TopoDS_Face) {.
    importcpp: "Bind", header: "LocOpe_WiresOnShape.hxx".}
proc `bind`*(this: var LocOpeWiresOnShape; comp: TopoDS_Compound; f: TopoDS_Face) {.
    importcpp: "Bind", header: "LocOpe_WiresOnShape.hxx".}
proc `bind`*(this: var LocOpeWiresOnShape; e: TopoDS_Edge; f: TopoDS_Face) {.
    importcpp: "Bind", header: "LocOpe_WiresOnShape.hxx".}
proc `bind`*(this: var LocOpeWiresOnShape; efromW: TopoDS_Edge; eonFace: TopoDS_Edge) {.
    importcpp: "Bind", header: "LocOpe_WiresOnShape.hxx".}
proc bindAll*(this: var LocOpeWiresOnShape) {.importcpp: "BindAll",
    header: "LocOpe_WiresOnShape.hxx".}
proc isDone*(this: LocOpeWiresOnShape): bool {.noSideEffect, importcpp: "IsDone",
    header: "LocOpe_WiresOnShape.hxx".}
proc initEdgeIterator*(this: var LocOpeWiresOnShape) {.
    importcpp: "InitEdgeIterator", header: "LocOpe_WiresOnShape.hxx".}
proc moreEdge*(this: var LocOpeWiresOnShape): bool {.importcpp: "MoreEdge",
    header: "LocOpe_WiresOnShape.hxx".}
proc edge*(this: var LocOpeWiresOnShape): TopoDS_Edge {.importcpp: "Edge",
    header: "LocOpe_WiresOnShape.hxx".}
proc onFace*(this: var LocOpeWiresOnShape): TopoDS_Face {.importcpp: "OnFace",
    header: "LocOpe_WiresOnShape.hxx".}
proc onEdge*(this: var LocOpeWiresOnShape; e: var TopoDS_Edge): bool {.
    importcpp: "OnEdge", header: "LocOpe_WiresOnShape.hxx".}
proc nextEdge*(this: var LocOpeWiresOnShape) {.importcpp: "NextEdge",
    header: "LocOpe_WiresOnShape.hxx".}
proc onVertex*(this: var LocOpeWiresOnShape; vwire: TopoDS_Vertex;
              vshape: var TopoDS_Vertex): bool {.importcpp: "OnVertex",
    header: "LocOpe_WiresOnShape.hxx".}
proc onEdge*(this: var LocOpeWiresOnShape; v: TopoDS_Vertex; e: var TopoDS_Edge;
            p: var float): bool {.importcpp: "OnEdge",
                              header: "LocOpe_WiresOnShape.hxx".}
proc onEdge*(this: var LocOpeWiresOnShape; v: TopoDS_Vertex; edgeFrom: TopoDS_Edge;
            e: var TopoDS_Edge; p: var float): bool {.importcpp: "OnEdge",
    header: "LocOpe_WiresOnShape.hxx".}
proc isFaceWithSection*(this: LocOpeWiresOnShape; aFace: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "IsFaceWithSection", header: "LocOpe_WiresOnShape.hxx".}
type
  LocOpeWiresOnShapebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "LocOpe_WiresOnShape::get_type_name(@)",
                            header: "LocOpe_WiresOnShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "LocOpe_WiresOnShape::get_type_descriptor(@)",
    header: "LocOpe_WiresOnShape.hxx".}
proc dynamicType*(this: LocOpeWiresOnShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "LocOpe_WiresOnShape.hxx".}
