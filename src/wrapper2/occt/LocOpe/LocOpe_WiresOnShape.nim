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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_IndexedDataMapOfShapeShape,
  ../TopTools/TopTools_MapOfShape, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_DataMapOfShapeShape, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_Real,
  ../TopTools/TopTools_SequenceOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Compound"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of LocOpe_WiresOnShape"
discard "forward decl of LocOpe_WiresOnShape"
type
  Handle_LocOpe_WiresOnShape* = handle[LocOpe_WiresOnShape]
  LocOpe_WiresOnShape* {.importcpp: "LocOpe_WiresOnShape",
                        header: "LocOpe_WiresOnShape.hxx", bycopy.} = object of Standard_Transient


proc constructLocOpe_WiresOnShape*(S: TopoDS_Shape): LocOpe_WiresOnShape {.
    constructor, importcpp: "LocOpe_WiresOnShape(@)",
    header: "LocOpe_WiresOnShape.hxx".}
proc Init*(this: var LocOpe_WiresOnShape; S: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_WiresOnShape.hxx".}
proc Add*(this: var LocOpe_WiresOnShape; theEdges: TopTools_SequenceOfShape): Standard_Boolean {.
    importcpp: "Add", header: "LocOpe_WiresOnShape.hxx".}
proc SetCheckInterior*(this: var LocOpe_WiresOnShape;
                      ToCheckInterior: Standard_Boolean) {.
    importcpp: "SetCheckInterior", header: "LocOpe_WiresOnShape.hxx".}
proc Bind*(this: var LocOpe_WiresOnShape; W: TopoDS_Wire; F: TopoDS_Face) {.
    importcpp: "Bind", header: "LocOpe_WiresOnShape.hxx".}
proc Bind*(this: var LocOpe_WiresOnShape; Comp: TopoDS_Compound; F: TopoDS_Face) {.
    importcpp: "Bind", header: "LocOpe_WiresOnShape.hxx".}
proc Bind*(this: var LocOpe_WiresOnShape; E: TopoDS_Edge; F: TopoDS_Face) {.
    importcpp: "Bind", header: "LocOpe_WiresOnShape.hxx".}
proc Bind*(this: var LocOpe_WiresOnShape; EfromW: TopoDS_Edge; EonFace: TopoDS_Edge) {.
    importcpp: "Bind", header: "LocOpe_WiresOnShape.hxx".}
proc BindAll*(this: var LocOpe_WiresOnShape) {.importcpp: "BindAll",
    header: "LocOpe_WiresOnShape.hxx".}
proc IsDone*(this: LocOpe_WiresOnShape): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_WiresOnShape.hxx".}
proc InitEdgeIterator*(this: var LocOpe_WiresOnShape) {.
    importcpp: "InitEdgeIterator", header: "LocOpe_WiresOnShape.hxx".}
proc MoreEdge*(this: var LocOpe_WiresOnShape): Standard_Boolean {.
    importcpp: "MoreEdge", header: "LocOpe_WiresOnShape.hxx".}
proc Edge*(this: var LocOpe_WiresOnShape): TopoDS_Edge {.importcpp: "Edge",
    header: "LocOpe_WiresOnShape.hxx".}
proc OnFace*(this: var LocOpe_WiresOnShape): TopoDS_Face {.importcpp: "OnFace",
    header: "LocOpe_WiresOnShape.hxx".}
proc OnEdge*(this: var LocOpe_WiresOnShape; E: var TopoDS_Edge): Standard_Boolean {.
    importcpp: "OnEdge", header: "LocOpe_WiresOnShape.hxx".}
proc NextEdge*(this: var LocOpe_WiresOnShape) {.importcpp: "NextEdge",
    header: "LocOpe_WiresOnShape.hxx".}
proc OnVertex*(this: var LocOpe_WiresOnShape; Vwire: TopoDS_Vertex;
              Vshape: var TopoDS_Vertex): Standard_Boolean {.importcpp: "OnVertex",
    header: "LocOpe_WiresOnShape.hxx".}
proc OnEdge*(this: var LocOpe_WiresOnShape; V: TopoDS_Vertex; E: var TopoDS_Edge;
            P: var Standard_Real): Standard_Boolean {.importcpp: "OnEdge",
    header: "LocOpe_WiresOnShape.hxx".}
proc OnEdge*(this: var LocOpe_WiresOnShape; V: TopoDS_Vertex; EdgeFrom: TopoDS_Edge;
            E: var TopoDS_Edge; P: var Standard_Real): Standard_Boolean {.
    importcpp: "OnEdge", header: "LocOpe_WiresOnShape.hxx".}
proc IsFaceWithSection*(this: LocOpe_WiresOnShape; aFace: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsFaceWithSection", header: "LocOpe_WiresOnShape.hxx".}
type
  LocOpe_WiresOnShapebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "LocOpe_WiresOnShape::get_type_name(@)",
                              header: "LocOpe_WiresOnShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "LocOpe_WiresOnShape::get_type_descriptor(@)",
    header: "LocOpe_WiresOnShape.hxx".}
proc DynamicType*(this: LocOpe_WiresOnShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "LocOpe_WiresOnShape.hxx".}