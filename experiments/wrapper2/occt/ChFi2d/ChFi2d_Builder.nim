##  Created on: 1995-06-12
##  Created by: Joelle CHAUVET
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
  ../Standard/Standard_Handle, ChFi2d_ConstructionError, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_SequenceOfShape, ../TopTools/TopTools_DataMapOfShapeShape,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
when defined(Status):
  discard
## ! This  class contains  the algorithm  used to build
## ! fillet on planar wire.

type
  ChFi2d_Builder* {.importcpp: "ChFi2d_Builder", header: "ChFi2d_Builder.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Is
                                                                                         ## internaly
                                                                                         ## used
                                                                                         ## by
                                                                                         ## <AddFillet>.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Warning:
                                                                                         ## <TrimE1>,
                                                                                         ## <TrimE2>,
                                                                                         ## <Fillet>
                                                                                         ## has
                                                                                         ## sense
                                                                                         ## only
                                                                                         ## if
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## status
                                                                                         ## <status>
                                                                                         ## is
                                                                                         ## equal
                                                                                         ## to
                                                                                         ## <IsDone>


proc constructChFi2d_Builder*(): ChFi2d_Builder {.constructor,
    importcpp: "ChFi2d_Builder(@)", header: "ChFi2d_Builder.hxx".}
proc constructChFi2d_Builder*(F: TopoDS_Face): ChFi2d_Builder {.constructor,
    importcpp: "ChFi2d_Builder(@)", header: "ChFi2d_Builder.hxx".}
proc Init*(this: var ChFi2d_Builder; F: TopoDS_Face) {.importcpp: "Init",
    header: "ChFi2d_Builder.hxx".}
proc Init*(this: var ChFi2d_Builder; RefFace: TopoDS_Face; ModFace: TopoDS_Face) {.
    importcpp: "Init", header: "ChFi2d_Builder.hxx".}
proc AddFillet*(this: var ChFi2d_Builder; V: TopoDS_Vertex; Radius: Standard_Real): TopoDS_Edge {.
    importcpp: "AddFillet", header: "ChFi2d_Builder.hxx".}
proc ModifyFillet*(this: var ChFi2d_Builder; Fillet: TopoDS_Edge;
                  Radius: Standard_Real): TopoDS_Edge {.importcpp: "ModifyFillet",
    header: "ChFi2d_Builder.hxx".}
proc RemoveFillet*(this: var ChFi2d_Builder; Fillet: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveFillet", header: "ChFi2d_Builder.hxx".}
proc AddChamfer*(this: var ChFi2d_Builder; E1: TopoDS_Edge; E2: TopoDS_Edge;
                D1: Standard_Real; D2: Standard_Real): TopoDS_Edge {.
    importcpp: "AddChamfer", header: "ChFi2d_Builder.hxx".}
proc AddChamfer*(this: var ChFi2d_Builder; E: TopoDS_Edge; V: TopoDS_Vertex;
                D: Standard_Real; Ang: Standard_Real): TopoDS_Edge {.
    importcpp: "AddChamfer", header: "ChFi2d_Builder.hxx".}
proc ModifyChamfer*(this: var ChFi2d_Builder; Chamfer: TopoDS_Edge; E1: TopoDS_Edge;
                   E2: TopoDS_Edge; D1: Standard_Real; D2: Standard_Real): TopoDS_Edge {.
    importcpp: "ModifyChamfer", header: "ChFi2d_Builder.hxx".}
proc ModifyChamfer*(this: var ChFi2d_Builder; Chamfer: TopoDS_Edge; E: TopoDS_Edge;
                   D: Standard_Real; Ang: Standard_Real): TopoDS_Edge {.
    importcpp: "ModifyChamfer", header: "ChFi2d_Builder.hxx".}
proc RemoveChamfer*(this: var ChFi2d_Builder; Chamfer: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveChamfer", header: "ChFi2d_Builder.hxx".}
proc Result*(this: ChFi2d_Builder): TopoDS_Face {.noSideEffect, importcpp: "Result",
    header: "ChFi2d_Builder.hxx".}
proc IsModified*(this: ChFi2d_Builder; E: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsModified", header: "ChFi2d_Builder.hxx".}
proc FilletEdges*(this: ChFi2d_Builder): TopTools_SequenceOfShape {.noSideEffect,
    importcpp: "FilletEdges", header: "ChFi2d_Builder.hxx".}
proc NbFillet*(this: ChFi2d_Builder): Standard_Integer {.noSideEffect,
    importcpp: "NbFillet", header: "ChFi2d_Builder.hxx".}
proc ChamferEdges*(this: ChFi2d_Builder): TopTools_SequenceOfShape {.noSideEffect,
    importcpp: "ChamferEdges", header: "ChFi2d_Builder.hxx".}
proc NbChamfer*(this: ChFi2d_Builder): Standard_Integer {.noSideEffect,
    importcpp: "NbChamfer", header: "ChFi2d_Builder.hxx".}
proc HasDescendant*(this: ChFi2d_Builder; E: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescendant", header: "ChFi2d_Builder.hxx".}
proc DescendantEdge*(this: ChFi2d_Builder; E: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, importcpp: "DescendantEdge", header: "ChFi2d_Builder.hxx".}
proc BasisEdge*(this: ChFi2d_Builder; E: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    importcpp: "BasisEdge", header: "ChFi2d_Builder.hxx".}
proc Status*(this: ChFi2d_Builder): ChFi2d_ConstructionError {.noSideEffect,
    importcpp: "Status", header: "ChFi2d_Builder.hxx".}