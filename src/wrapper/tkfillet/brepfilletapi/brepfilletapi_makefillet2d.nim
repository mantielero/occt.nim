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
                               header: "BRepFilletAPI_MakeFillet2d.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## an
                                                                                                                ## empty
                                                                                                                ## algorithm
                                                                                                                ## for
                                                                                                                ## computing
                                                                                                                ## fillets
                                                                                                                ## and
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## chamfers.
                                                                                                                ## The
                                                                                                                ## face
                                                                                                                ## on
                                                                                                                ## which
                                                                                                                ## the
                                                                                                                ## fillets
                                                                                                                ## and
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## chamfers
                                                                                                                ## are
                                                                                                                ## built
                                                                                                                ## is
                                                                                                                ## defined
                                                                                                                ## using
                                                                                                                ## the
                                                                                                                ## Init
                                                                                                                ## function.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## The
                                                                                                                ## vertices
                                                                                                                ## on
                                                                                                                ## which
                                                                                                                ## fillets
                                                                                                                ## or
                                                                                                                ## chamfers
                                                                                                                ## are
                                                                                                                ## built
                                                                                                                ## are
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## defined
                                                                                                                ## using
                                                                                                                ## the
                                                                                                                ## AddFillet
                                                                                                                ## or
                                                                                                                ## AddChamfer
                                                                                                                ## function.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Warning
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## The
                                                                                                                ## status
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## initialization,
                                                                                                                ## as
                                                                                                                ## given
                                                                                                                ## by
                                                                                                                ## the
                                                                                                                ## Status
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## function,
                                                                                                                ## can
                                                                                                                ## be
                                                                                                                ## one
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## following:
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## ChFi2d_Ready
                                                                                                                ## if
                                                                                                                ## the
                                                                                                                ## initialization
                                                                                                                ## is
                                                                                                                ## correct,
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## ChFi2d_NotPlanar
                                                                                                                ## if
                                                                                                                ## F
                                                                                                                ## is
                                                                                                                ## not
                                                                                                                ## planar,
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## -
                                                                                                                ## ChFi2d_NoFace
                                                                                                                ## if
                                                                                                                ## F
                                                                                                                ## is
                                                                                                                ## a
                                                                                                                ## null
                                                                                                                ## face.


proc newBRepFilletAPI_MakeFillet2d*(): BRepFilletAPI_MakeFillet2d {.cdecl,
    constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)", dynlib: tkfillet.}
proc newBRepFilletAPI_MakeFillet2d*(f: TopoDS_Face): BRepFilletAPI_MakeFillet2d {.
    cdecl, constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)", dynlib: tkfillet.}
proc init*(this: var BRepFilletAPI_MakeFillet2d; f: TopoDS_Face) {.cdecl,
    importcpp: "Init", dynlib: tkfillet.}
proc init*(this: var BRepFilletAPI_MakeFillet2d; refFace: TopoDS_Face;
          modFace: TopoDS_Face) {.cdecl, importcpp: "Init", dynlib: tkfillet.}
proc addFillet*(this: var BRepFilletAPI_MakeFillet2d; v: TopoDS_Vertex; radius: cfloat): TopoDS_Edge {.
    cdecl, importcpp: "AddFillet", dynlib: tkfillet.}
proc modifyFillet*(this: var BRepFilletAPI_MakeFillet2d; fillet: TopoDS_Edge;
                  radius: cfloat): TopoDS_Edge {.cdecl, importcpp: "ModifyFillet",
    dynlib: tkfillet.}
proc removeFillet*(this: var BRepFilletAPI_MakeFillet2d; fillet: TopoDS_Edge): TopoDS_Vertex {.
    cdecl, importcpp: "RemoveFillet", dynlib: tkfillet.}
proc addChamfer*(this: var BRepFilletAPI_MakeFillet2d; e1: TopoDS_Edge;
                e2: TopoDS_Edge; d1: cfloat; d2: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "AddChamfer", dynlib: tkfillet.}
proc addChamfer*(this: var BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge;
                v: TopoDS_Vertex; d: cfloat; ang: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "AddChamfer", dynlib: tkfillet.}
proc modifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge;
                   e1: TopoDS_Edge; e2: TopoDS_Edge; d1: cfloat; d2: cfloat): TopoDS_Edge {.
    cdecl, importcpp: "ModifyChamfer", dynlib: tkfillet.}
proc modifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge;
                   e: TopoDS_Edge; d: cfloat; ang: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "ModifyChamfer", dynlib: tkfillet.}
proc removeChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge): TopoDS_Vertex {.
    cdecl, importcpp: "RemoveChamfer", dynlib: tkfillet.}
proc isModified*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): bool {.
    noSideEffect, cdecl, importcpp: "IsModified", dynlib: tkfillet.}
proc filletEdges*(this: BRepFilletAPI_MakeFillet2d): TopToolsSequenceOfShape {.
    noSideEffect, cdecl, importcpp: "FilletEdges", dynlib: tkfillet.}
proc nbFillet*(this: BRepFilletAPI_MakeFillet2d): cint {.noSideEffect, cdecl,
    importcpp: "NbFillet", dynlib: tkfillet.}
proc chamferEdges*(this: BRepFilletAPI_MakeFillet2d): TopToolsSequenceOfShape {.
    noSideEffect, cdecl, importcpp: "ChamferEdges", dynlib: tkfillet.}
proc nbChamfer*(this: BRepFilletAPI_MakeFillet2d): cint {.noSideEffect, cdecl,
    importcpp: "NbChamfer", dynlib: tkfillet.}
proc modified*(this: var BRepFilletAPI_MakeFillet2d; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", dynlib: tkfillet.}
proc nbCurves*(this: BRepFilletAPI_MakeFillet2d): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves", dynlib: tkfillet.}
proc newEdges*(this: var BRepFilletAPI_MakeFillet2d; i: cint): TopToolsListOfShape {.
    cdecl, importcpp: "NewEdges", dynlib: tkfillet.}
proc hasDescendant*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): bool {.
    noSideEffect, cdecl, importcpp: "HasDescendant", dynlib: tkfillet.}
proc descendantEdge*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "DescendantEdge", dynlib: tkfillet.}
proc basisEdge*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "BasisEdge", dynlib: tkfillet.}
proc status*(this: BRepFilletAPI_MakeFillet2d): ChFi2dConstructionError {.
    noSideEffect, cdecl, importcpp: "Status", dynlib: tkfillet.}
proc build*(this: var BRepFilletAPI_MakeFillet2d) {.cdecl, importcpp: "Build",
    dynlib: tkfillet.}