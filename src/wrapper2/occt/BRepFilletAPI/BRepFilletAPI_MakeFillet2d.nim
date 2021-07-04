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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../ChFi2d/ChFi2d_Builder,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_SequenceOfShape,
  ../Standard/Standard_Integer, ../TopTools/TopTools_ListOfShape,
  ../ChFi2d/ChFi2d_ConstructionError

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


proc constructBRepFilletAPI_MakeFillet2d*(): BRepFilletAPI_MakeFillet2d {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc constructBRepFilletAPI_MakeFillet2d*(F: TopoDS_Face): BRepFilletAPI_MakeFillet2d {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc Init*(this: var BRepFilletAPI_MakeFillet2d; F: TopoDS_Face) {.importcpp: "Init",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc Init*(this: var BRepFilletAPI_MakeFillet2d; RefFace: TopoDS_Face;
          ModFace: TopoDS_Face) {.importcpp: "Init",
                                header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc AddFillet*(this: var BRepFilletAPI_MakeFillet2d; V: TopoDS_Vertex;
               Radius: Standard_Real): TopoDS_Edge {.importcpp: "AddFillet",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc ModifyFillet*(this: var BRepFilletAPI_MakeFillet2d; Fillet: TopoDS_Edge;
                  Radius: Standard_Real): TopoDS_Edge {.importcpp: "ModifyFillet",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc RemoveFillet*(this: var BRepFilletAPI_MakeFillet2d; Fillet: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveFillet", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc AddChamfer*(this: var BRepFilletAPI_MakeFillet2d; E1: TopoDS_Edge;
                E2: TopoDS_Edge; D1: Standard_Real; D2: Standard_Real): TopoDS_Edge {.
    importcpp: "AddChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc AddChamfer*(this: var BRepFilletAPI_MakeFillet2d; E: TopoDS_Edge;
                V: TopoDS_Vertex; D: Standard_Real; Ang: Standard_Real): TopoDS_Edge {.
    importcpp: "AddChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc ModifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; Chamfer: TopoDS_Edge;
                   E1: TopoDS_Edge; E2: TopoDS_Edge; D1: Standard_Real;
                   D2: Standard_Real): TopoDS_Edge {.importcpp: "ModifyChamfer",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc ModifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; Chamfer: TopoDS_Edge;
                   E: TopoDS_Edge; D: Standard_Real; Ang: Standard_Real): TopoDS_Edge {.
    importcpp: "ModifyChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc RemoveChamfer*(this: var BRepFilletAPI_MakeFillet2d; Chamfer: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc IsModified*(this: BRepFilletAPI_MakeFillet2d; E: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsModified", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc FilletEdges*(this: BRepFilletAPI_MakeFillet2d): TopTools_SequenceOfShape {.
    noSideEffect, importcpp: "FilletEdges",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc NbFillet*(this: BRepFilletAPI_MakeFillet2d): Standard_Integer {.noSideEffect,
    importcpp: "NbFillet", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc ChamferEdges*(this: BRepFilletAPI_MakeFillet2d): TopTools_SequenceOfShape {.
    noSideEffect, importcpp: "ChamferEdges",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc NbChamfer*(this: BRepFilletAPI_MakeFillet2d): Standard_Integer {.noSideEffect,
    importcpp: "NbChamfer", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc Modified*(this: var BRepFilletAPI_MakeFillet2d; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc NbCurves*(this: BRepFilletAPI_MakeFillet2d): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc NewEdges*(this: var BRepFilletAPI_MakeFillet2d; I: Standard_Integer): TopTools_ListOfShape {.
    importcpp: "NewEdges", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc HasDescendant*(this: BRepFilletAPI_MakeFillet2d; E: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescendant",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc DescendantEdge*(this: BRepFilletAPI_MakeFillet2d; E: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, importcpp: "DescendantEdge",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc BasisEdge*(this: BRepFilletAPI_MakeFillet2d; E: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, importcpp: "BasisEdge", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc Status*(this: BRepFilletAPI_MakeFillet2d): ChFi2d_ConstructionError {.
    noSideEffect, importcpp: "Status", header: "BRepFilletAPI_MakeFillet2d.hxx".}
proc Build*(this: var BRepFilletAPI_MakeFillet2d) {.importcpp: "Build",
    header: "BRepFilletAPI_MakeFillet2d.hxx".}