##  Created on: 1995-04-25
##  Created by: Marie Jose MARTZ
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of IGESSolid_EdgeList"
discard "forward decl of IGESSolid_VertexList"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of IGESSolid_Loop"
discard "forward decl of TopoDS_Wire"
discard "forward decl of IGESSolid_Face"
discard "forward decl of IGESSolid_Shell"
discard "forward decl of TopoDS_Shell"
discard "forward decl of IGESSolid_ManifoldSolid"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Compound"
type
  BRepToIGESBRepEntity* {.importcpp: "BRepToIGESBRep_Entity",
                         header: "BRepToIGESBRep_Entity.hxx", bycopy.} = object of BRepToIGES_BREntity ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## tool
                                                                                                ## Entity


proc constructBRepToIGESBRepEntity*(): BRepToIGESBRepEntity {.constructor,
    importcpp: "BRepToIGESBRep_Entity(@)", header: "BRepToIGESBRep_Entity.hxx".}
proc clear*(this: var BRepToIGESBRepEntity) {.importcpp: "Clear",
    header: "BRepToIGESBRep_Entity.hxx".}
proc transferVertexList*(this: var BRepToIGESBRepEntity) {.
    importcpp: "TransferVertexList", header: "BRepToIGESBRep_Entity.hxx".}
proc indexVertex*(this: BRepToIGESBRepEntity; myvertex: TopoDS_Vertex): int {.
    noSideEffect, importcpp: "IndexVertex", header: "BRepToIGESBRep_Entity.hxx".}
proc addVertex*(this: var BRepToIGESBRepEntity; myvertex: TopoDS_Vertex): int {.
    importcpp: "AddVertex", header: "BRepToIGESBRep_Entity.hxx".}
proc transferEdgeList*(this: var BRepToIGESBRepEntity) {.
    importcpp: "TransferEdgeList", header: "BRepToIGESBRep_Entity.hxx".}
proc indexEdge*(this: BRepToIGESBRepEntity; myedge: TopoDS_Edge): int {.noSideEffect,
    importcpp: "IndexEdge", header: "BRepToIGESBRep_Entity.hxx".}
proc addEdge*(this: var BRepToIGESBRepEntity; myedge: TopoDS_Edge;
             mycurve3d: Handle[IGESDataIGESEntity]): int {.importcpp: "AddEdge",
    header: "BRepToIGESBRep_Entity.hxx".}
proc transferShape*(this: var BRepToIGESBRepEntity; start: TopoDS_Shape;
                   theProgress: MessageProgressRange = messageProgressRange()): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferShape",
                         header: "BRepToIGESBRep_Entity.hxx".}
proc transferEdge*(this: var BRepToIGESBRepEntity; myedge: TopoDS_Edge): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferEdge",
                         header: "BRepToIGESBRep_Entity.hxx".}
proc transferEdge*(this: var BRepToIGESBRepEntity; myedge: TopoDS_Edge;
                  myface: TopoDS_Face; length: float): Handle[IGESDataIGESEntity] {.
    importcpp: "TransferEdge", header: "BRepToIGESBRep_Entity.hxx".}
proc transferWire*(this: var BRepToIGESBRepEntity; mywire: TopoDS_Wire;
                  myface: TopoDS_Face; length: float): Handle[IGESSolidLoop] {.
    importcpp: "TransferWire", header: "BRepToIGESBRep_Entity.hxx".}
proc transferFace*(this: var BRepToIGESBRepEntity; start: TopoDS_Face): Handle[
    IGESSolidFace] {.importcpp: "TransferFace", header: "BRepToIGESBRep_Entity.hxx".}
proc transferShell*(this: var BRepToIGESBRepEntity; start: TopoDS_Shell;
                   theProgress: MessageProgressRange = messageProgressRange()): Handle[
    IGESSolidShell] {.importcpp: "TransferShell",
                     header: "BRepToIGESBRep_Entity.hxx".}
proc transferSolid*(this: var BRepToIGESBRepEntity; start: TopoDS_Solid;
                   theProgress: MessageProgressRange = messageProgressRange()): Handle[
    IGESSolidManifoldSolid] {.importcpp: "TransferSolid",
                             header: "BRepToIGESBRep_Entity.hxx".}
proc transferCompSolid*(this: var BRepToIGESBRepEntity; start: TopoDS_CompSolid;
    theProgress: MessageProgressRange = messageProgressRange()): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCompSolid",
                         header: "BRepToIGESBRep_Entity.hxx".}
proc transferCompound*(this: var BRepToIGESBRepEntity; start: TopoDS_Compound;
    theProgress: MessageProgressRange = messageProgressRange()): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferCompound",
                         header: "BRepToIGESBRep_Entity.hxx".}
