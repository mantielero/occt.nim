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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_IndexedMapOfShape,
  ../TColStd/TColStd_IndexedMapOfTransient, ../BRepToIGES/BRepToIGES_BREntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Message/Message_ProgressRange

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
  BRepToIGESBRep_Entity* {.importcpp: "BRepToIGESBRep_Entity",
                          header: "BRepToIGESBRep_Entity.hxx", bycopy.} = object of BRepToIGES_BREntity ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## a
                                                                                                 ## tool
                                                                                                 ## Entity


proc constructBRepToIGESBRep_Entity*(): BRepToIGESBRep_Entity {.constructor,
    importcpp: "BRepToIGESBRep_Entity(@)", header: "BRepToIGESBRep_Entity.hxx".}
proc Clear*(this: var BRepToIGESBRep_Entity) {.importcpp: "Clear",
    header: "BRepToIGESBRep_Entity.hxx".}
proc TransferVertexList*(this: var BRepToIGESBRep_Entity) {.
    importcpp: "TransferVertexList", header: "BRepToIGESBRep_Entity.hxx".}
proc IndexVertex*(this: BRepToIGESBRep_Entity; myvertex: TopoDS_Vertex): Standard_Integer {.
    noSideEffect, importcpp: "IndexVertex", header: "BRepToIGESBRep_Entity.hxx".}
proc AddVertex*(this: var BRepToIGESBRep_Entity; myvertex: TopoDS_Vertex): Standard_Integer {.
    importcpp: "AddVertex", header: "BRepToIGESBRep_Entity.hxx".}
proc TransferEdgeList*(this: var BRepToIGESBRep_Entity) {.
    importcpp: "TransferEdgeList", header: "BRepToIGESBRep_Entity.hxx".}
proc IndexEdge*(this: BRepToIGESBRep_Entity; myedge: TopoDS_Edge): Standard_Integer {.
    noSideEffect, importcpp: "IndexEdge", header: "BRepToIGESBRep_Entity.hxx".}
proc AddEdge*(this: var BRepToIGESBRep_Entity; myedge: TopoDS_Edge;
             mycurve3d: handle[IGESData_IGESEntity]): Standard_Integer {.
    importcpp: "AddEdge", header: "BRepToIGESBRep_Entity.hxx".}
proc TransferShape*(this: var BRepToIGESBRep_Entity; start: TopoDS_Shape;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESData_IGESEntity] {.importcpp: "TransferShape",
                          header: "BRepToIGESBRep_Entity.hxx".}
proc TransferEdge*(this: var BRepToIGESBRep_Entity; myedge: TopoDS_Edge): handle[
    IGESData_IGESEntity] {.importcpp: "TransferEdge",
                          header: "BRepToIGESBRep_Entity.hxx".}
proc TransferEdge*(this: var BRepToIGESBRep_Entity; myedge: TopoDS_Edge;
                  myface: TopoDS_Face; length: Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferEdge",
                          header: "BRepToIGESBRep_Entity.hxx".}
proc TransferWire*(this: var BRepToIGESBRep_Entity; mywire: TopoDS_Wire;
                  myface: TopoDS_Face; length: Standard_Real): handle[IGESSolid_Loop] {.
    importcpp: "TransferWire", header: "BRepToIGESBRep_Entity.hxx".}
proc TransferFace*(this: var BRepToIGESBRep_Entity; start: TopoDS_Face): handle[
    IGESSolid_Face] {.importcpp: "TransferFace",
                     header: "BRepToIGESBRep_Entity.hxx".}
proc TransferShell*(this: var BRepToIGESBRep_Entity; start: TopoDS_Shell;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESSolid_Shell] {.importcpp: "TransferShell",
                      header: "BRepToIGESBRep_Entity.hxx".}
proc TransferSolid*(this: var BRepToIGESBRep_Entity; start: TopoDS_Solid;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESSolid_ManifoldSolid] {.importcpp: "TransferSolid",
                              header: "BRepToIGESBRep_Entity.hxx".}
proc TransferCompSolid*(this: var BRepToIGESBRep_Entity; start: TopoDS_CompSolid;
    theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESData_IGESEntity] {.importcpp: "TransferCompSolid",
                          header: "BRepToIGESBRep_Entity.hxx".}
proc TransferCompound*(this: var BRepToIGESBRep_Entity; start: TopoDS_Compound;
    theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESData_IGESEntity] {.importcpp: "TransferCompound",
                          header: "BRepToIGESBRep_Entity.hxx".}