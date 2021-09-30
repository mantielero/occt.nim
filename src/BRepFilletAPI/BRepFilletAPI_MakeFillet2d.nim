##  Created on: 1995-08-31
##  Created by: Remi LEQUETTE
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
when defined(Status):
  discard
## ! Describes functions to build fillets and chamfers on the
## ! vertices of a planar face.
## ! Fillets and Chamfers on the Vertices of a Planar Face
## ! A MakeFillet2d object provides a framework for:
## ! - initializing the construction algorithm with a given face,
## ! - acquiring the data characterizing the fillets and chamfers,
## ! -   building the fillets and chamfers, and constructing the
## ! resulting shape, and
## ! -   consulting the result.
## ! Warning
## ! Only segments of straight lines and arcs of circles are
## ! treated. BSplines are not processed.

type
  BRepFilletAPI_MakeFillet2d* {.importcpp: "BRepFilletAPI_MakeFillet2d",
                               header: "BRepFilletAPI_MakeFillet2d.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepFilletAPI_MakeFillet2d; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator new",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc `delete`*(this: var BRepFilletAPI_MakeFillet2d; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator delete",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc `new[]`*(this: var BRepFilletAPI_MakeFillet2d; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator new[]",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc `delete[]`*(this: var BRepFilletAPI_MakeFillet2d; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator delete[]",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc `new`*(this: var BRepFilletAPI_MakeFillet2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator new",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc `delete`*(this: var BRepFilletAPI_MakeFillet2d; a2: pointer; a3: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator delete",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc constructBRepFilletAPI_MakeFillet2d*(): BRepFilletAPI_MakeFillet2d {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc constructBRepFilletAPI_MakeFillet2d*(f: TopoDS_Face): BRepFilletAPI_MakeFillet2d {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc init*(this: var BRepFilletAPI_MakeFillet2d; f: TopoDS_Face) {.importcpp: "Init",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc init*(this: var BRepFilletAPI_MakeFillet2d; refFace: TopoDS_Face;
          modFace: TopoDS_Face) {.importcpp: "Init",
                                header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc addFillet*(this: var BRepFilletAPI_MakeFillet2d; v: TopoDS_Vertex;
               radius: StandardReal): TopoDS_Edge {.importcpp: "AddFillet",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc modifyFillet*(this: var BRepFilletAPI_MakeFillet2d; fillet: TopoDS_Edge;
                  radius: StandardReal): TopoDS_Edge {.importcpp: "ModifyFillet",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc removeFillet*(this: var BRepFilletAPI_MakeFillet2d; fillet: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveFillet", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc addChamfer*(this: var BRepFilletAPI_MakeFillet2d; e1: TopoDS_Edge;
                e2: TopoDS_Edge; d1: StandardReal; d2: StandardReal): TopoDS_Edge {.
    importcpp: "AddChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc addChamfer*(this: var BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge;
                v: TopoDS_Vertex; d: StandardReal; ang: StandardReal): TopoDS_Edge {.
    importcpp: "AddChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc modifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge;
                   e1: TopoDS_Edge; e2: TopoDS_Edge; d1: StandardReal;
                   d2: StandardReal): TopoDS_Edge {.importcpp: "ModifyChamfer",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc modifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge;
                   e: TopoDS_Edge; d: StandardReal; ang: StandardReal): TopoDS_Edge {.
    importcpp: "ModifyChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc removeChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc isModified*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): StandardBoolean {.
    noSideEffect, importcpp: "IsModified", header: "BRepFilletAPI_MakeFillet2d.hxx".}
#[ proc filletEdges*(this: BRepFilletAPI_MakeFillet2d): TopToolsSequenceOfShape {.
    noSideEffect, importcpp: "FilletEdges",
    header: "BRepFilletAPI_MakeFillet2d.hxx".} ]#
proc nbFillet*(this: BRepFilletAPI_MakeFillet2d): int {.noSideEffect,
    importcpp: "NbFillet", header: "BRepFilletAPI_MakeFillet2d.hxx".}
#[ proc chamferEdges*(this: BRepFilletAPI_MakeFillet2d): TopToolsSequenceOfShape {.
    noSideEffect, importcpp: "ChamferEdges",
    header: "BRepFilletAPI_MakeFillet2d.hxx".} ]#
proc nbChamfer*(this: BRepFilletAPI_MakeFillet2d): int {.noSideEffect,
    importcpp: "NbChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
#[ proc modified*(this: var BRepFilletAPI_MakeFillet2d; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepFilletAPI_MakeFillet2d.hxx".} ]#
proc nbCurves*(this: BRepFilletAPI_MakeFillet2d): int {.noSideEffect,
    importcpp: "NbCurves", header: "BRepFilletAPI_MakeFillet2d.hxx".}
#[ proc newEdges*(this: var BRepFilletAPI_MakeFillet2d; i: int): TopToolsListOfShape {.
    importcpp: "NewEdges", header: "BRepFilletAPI_MakeFillet2d.hxx".} ]#
proc hasDescendant*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): StandardBoolean {.
    noSideEffect, importcpp: "HasDescendant",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc descendantEdge*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, importcpp: "DescendantEdge",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc basisEdge*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, importcpp: "BasisEdge", header: "BRepFilletAPI_MakeFillet2d.hxx".}
#[ proc status*(this: BRepFilletAPI_MakeFillet2d): ChFi2dConstructionError {.
    noSideEffect, importcpp: "Status", header: "BRepFilletAPI_MakeFillet2d.hxx".} ]#
proc build*(this: var BRepFilletAPI_MakeFillet2d) {.importcpp: "Build",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}