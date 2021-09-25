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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
# when defined(Status):
#   discard
## ! This  class contains  the algorithm  used to build
## ! fillet on planar wire.

type
  ChFi2dBuilder* {.importcpp: "ChFi2d_Builder", header: "ChFi2d_Builder.hxx", bycopy.} = object ##
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


proc constructChFi2dBuilder*(): ChFi2dBuilder {.constructor,
    importcpp: "ChFi2d_Builder(@)", header: "ChFi2d_Builder.hxx".}
proc constructChFi2dBuilder*(f: TopoDS_Face): ChFi2dBuilder {.constructor,
    importcpp: "ChFi2d_Builder(@)", header: "ChFi2d_Builder.hxx".}
proc init*(this: var ChFi2dBuilder; f: TopoDS_Face) {.importcpp: "Init",
    header: "ChFi2d_Builder.hxx".}
proc init*(this: var ChFi2dBuilder; refFace: TopoDS_Face; modFace: TopoDS_Face) {.
    importcpp: "Init", header: "ChFi2d_Builder.hxx".}
proc addFillet*(this: var ChFi2dBuilder; v: TopoDS_Vertex; radius: float): TopoDS_Edge {.
    importcpp: "AddFillet", header: "ChFi2d_Builder.hxx".}
proc modifyFillet*(this: var ChFi2dBuilder; fillet: TopoDS_Edge; radius: float): TopoDS_Edge {.
    importcpp: "ModifyFillet", header: "ChFi2d_Builder.hxx".}
proc removeFillet*(this: var ChFi2dBuilder; fillet: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveFillet", header: "ChFi2d_Builder.hxx".}
proc addChamfer*(this: var ChFi2dBuilder; e1: TopoDS_Edge; e2: TopoDS_Edge; d1: float;
                d2: float): TopoDS_Edge {.importcpp: "AddChamfer",
                                       header: "ChFi2d_Builder.hxx".}
proc addChamfer*(this: var ChFi2dBuilder; e: TopoDS_Edge; v: TopoDS_Vertex; d: float;
                ang: float): TopoDS_Edge {.importcpp: "AddChamfer",
                                        header: "ChFi2d_Builder.hxx".}
proc modifyChamfer*(this: var ChFi2dBuilder; chamfer: TopoDS_Edge; e1: TopoDS_Edge;
                   e2: TopoDS_Edge; d1: float; d2: float): TopoDS_Edge {.
    importcpp: "ModifyChamfer", header: "ChFi2d_Builder.hxx".}
proc modifyChamfer*(this: var ChFi2dBuilder; chamfer: TopoDS_Edge; e: TopoDS_Edge;
                   d: float; ang: float): TopoDS_Edge {.importcpp: "ModifyChamfer",
    header: "ChFi2d_Builder.hxx".}
proc removeChamfer*(this: var ChFi2dBuilder; chamfer: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveChamfer", header: "ChFi2d_Builder.hxx".}
proc result*(this: ChFi2dBuilder): TopoDS_Face {.noSideEffect, importcpp: "Result",
    header: "ChFi2d_Builder.hxx".}
proc isModified*(this: ChFi2dBuilder; e: TopoDS_Edge): bool {.noSideEffect,
    importcpp: "IsModified", header: "ChFi2d_Builder.hxx".}
proc filletEdges*(this: ChFi2dBuilder): TopToolsSequenceOfShape {.noSideEffect,
    importcpp: "FilletEdges", header: "ChFi2d_Builder.hxx".}
proc nbFillet*(this: ChFi2dBuilder): int {.noSideEffect, importcpp: "NbFillet",
                                       header: "ChFi2d_Builder.hxx".}
proc chamferEdges*(this: ChFi2dBuilder): TopToolsSequenceOfShape {.noSideEffect,
    importcpp: "ChamferEdges", header: "ChFi2d_Builder.hxx".}
proc nbChamfer*(this: ChFi2dBuilder): int {.noSideEffect, importcpp: "NbChamfer",
                                        header: "ChFi2d_Builder.hxx".}
proc hasDescendant*(this: ChFi2dBuilder; e: TopoDS_Edge): bool {.noSideEffect,
    importcpp: "HasDescendant", header: "ChFi2d_Builder.hxx".}
proc descendantEdge*(this: ChFi2dBuilder; e: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    importcpp: "DescendantEdge", header: "ChFi2d_Builder.hxx".}
proc basisEdge*(this: ChFi2dBuilder; e: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    importcpp: "BasisEdge", header: "ChFi2d_Builder.hxx".}
proc status*(this: ChFi2dBuilder): ChFi2dConstructionError {.noSideEffect,
    importcpp: "Status", header: "ChFi2d_Builder.hxx".}
