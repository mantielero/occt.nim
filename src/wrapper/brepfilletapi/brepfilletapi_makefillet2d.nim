import ../chfi2d/chfi2d_types
import ../toptools/toptools_types
import ../topods/topods_types
import brepfilletapi_types





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



proc newBRepFilletAPI_MakeFillet2d*(): BRepFilletAPI_MakeFillet2d {.cdecl,
    constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc newBRepFilletAPI_MakeFillet2d*(f: TopoDS_Face): BRepFilletAPI_MakeFillet2d {.
    cdecl, constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc init*(this: var BRepFilletAPI_MakeFillet2d; f: TopoDS_Face) {.cdecl,
    importcpp: "Init", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc init*(this: var BRepFilletAPI_MakeFillet2d; refFace: TopoDS_Face;
          modFace: TopoDS_Face) {.cdecl, importcpp: "Init", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc addFillet*(this: var BRepFilletAPI_MakeFillet2d; v: TopoDS_Vertex; radius: cfloat): TopoDS_Edge {.
    cdecl, importcpp: "AddFillet", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc modifyFillet*(this: var BRepFilletAPI_MakeFillet2d; fillet: TopoDS_Edge;
                  radius: cfloat): TopoDS_Edge {.cdecl, importcpp: "ModifyFillet",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc removeFillet*(this: var BRepFilletAPI_MakeFillet2d; fillet: TopoDS_Edge): TopoDS_Vertex {.
    cdecl, importcpp: "RemoveFillet", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc addChamfer*(this: var BRepFilletAPI_MakeFillet2d; e1: TopoDS_Edge;
                e2: TopoDS_Edge; d1: cfloat; d2: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "AddChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc addChamfer*(this: var BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge;
                v: TopoDS_Vertex; d: cfloat; ang: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "AddChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc modifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge;
                   e1: TopoDS_Edge; e2: TopoDS_Edge; d1: cfloat; d2: cfloat): TopoDS_Edge {.
    cdecl, importcpp: "ModifyChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc modifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge;
                   e: TopoDS_Edge; d: cfloat; ang: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "ModifyChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc removeChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge): TopoDS_Vertex {.
    cdecl, importcpp: "RemoveChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc isModified*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): bool {.
    noSideEffect, cdecl, importcpp: "IsModified", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc filletEdges*(this: BRepFilletAPI_MakeFillet2d): TopToolsSequenceOfShape {.
    noSideEffect, cdecl, importcpp: "FilletEdges", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc nbFillet*(this: BRepFilletAPI_MakeFillet2d): cint {.noSideEffect, cdecl,
    importcpp: "NbFillet", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc chamferEdges*(this: BRepFilletAPI_MakeFillet2d): TopToolsSequenceOfShape {.
    noSideEffect, cdecl, importcpp: "ChamferEdges", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc nbChamfer*(this: BRepFilletAPI_MakeFillet2d): cint {.noSideEffect, cdecl,
    importcpp: "NbChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc modified*(this: var BRepFilletAPI_MakeFillet2d; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc nbCurves*(this: BRepFilletAPI_MakeFillet2d): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc newEdges*(this: var BRepFilletAPI_MakeFillet2d; i: cint): TopToolsListOfShape {.
    cdecl, importcpp: "NewEdges", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc hasDescendant*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): bool {.
    noSideEffect, cdecl, importcpp: "HasDescendant", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc descendantEdge*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "DescendantEdge", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc basisEdge*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "BasisEdge", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc status*(this: BRepFilletAPI_MakeFillet2d): ChFi2dConstructionError {.
    noSideEffect, cdecl, importcpp: "Status", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc build*(this: var BRepFilletAPI_MakeFillet2d) {.cdecl, importcpp: "Build",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}


