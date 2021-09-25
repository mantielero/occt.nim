##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of ShapeExtend_WireData"
discard "forward decl of TopoDS_Wire"
discard "forward decl of gp_XYZ"
# when defined(Status):
#   discard
## ! Analyzes and records status of vertices in a Wire
## !
## ! The Wire has formerly been loaded in a ShapeExtend_WireData
## ! For each Vertex, a status and some data can be attached
## ! (case found, position and parameters)
## ! Then, these informations can be used to fix problems

type
  ShapeAnalysisWireVertex* {.importcpp: "ShapeAnalysis_WireVertex",
                            header: "ShapeAnalysis_WireVertex.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor


proc constructShapeAnalysisWireVertex*(): ShapeAnalysisWireVertex {.constructor,
    importcpp: "ShapeAnalysis_WireVertex(@)",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc init*(this: var ShapeAnalysisWireVertex; wire: TopoDS_Wire; preci: float) {.
    importcpp: "Init", header: "ShapeAnalysis_WireVertex.hxx".}
proc init*(this: var ShapeAnalysisWireVertex; swbd: Handle[ShapeExtendWireData];
          preci: float) {.importcpp: "Init", header: "ShapeAnalysis_WireVertex.hxx".}
proc load*(this: var ShapeAnalysisWireVertex; wire: TopoDS_Wire) {.importcpp: "Load",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc load*(this: var ShapeAnalysisWireVertex; sbwd: Handle[ShapeExtendWireData]) {.
    importcpp: "Load", header: "ShapeAnalysis_WireVertex.hxx".}
proc setPrecision*(this: var ShapeAnalysisWireVertex; preci: float) {.
    importcpp: "SetPrecision", header: "ShapeAnalysis_WireVertex.hxx".}
proc analyze*(this: var ShapeAnalysisWireVertex) {.importcpp: "Analyze",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc setSameVertex*(this: var ShapeAnalysisWireVertex; num: int) {.
    importcpp: "SetSameVertex", header: "ShapeAnalysis_WireVertex.hxx".}
proc setSameCoords*(this: var ShapeAnalysisWireVertex; num: int) {.
    importcpp: "SetSameCoords", header: "ShapeAnalysis_WireVertex.hxx".}
proc setClose*(this: var ShapeAnalysisWireVertex; num: int) {.importcpp: "SetClose",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc setEnd*(this: var ShapeAnalysisWireVertex; num: int; pos: Xyz; ufol: float) {.
    importcpp: "SetEnd", header: "ShapeAnalysis_WireVertex.hxx".}
proc setStart*(this: var ShapeAnalysisWireVertex; num: int; pos: Xyz; upre: float) {.
    importcpp: "SetStart", header: "ShapeAnalysis_WireVertex.hxx".}
proc setInters*(this: var ShapeAnalysisWireVertex; num: int; pos: Xyz; upre: float;
               ufol: float) {.importcpp: "SetInters",
                            header: "ShapeAnalysis_WireVertex.hxx".}
proc setDisjoined*(this: var ShapeAnalysisWireVertex; num: int) {.
    importcpp: "SetDisjoined", header: "ShapeAnalysis_WireVertex.hxx".}
proc isDone*(this: ShapeAnalysisWireVertex): bool {.noSideEffect,
    importcpp: "IsDone", header: "ShapeAnalysis_WireVertex.hxx".}
proc precision*(this: ShapeAnalysisWireVertex): float {.noSideEffect,
    importcpp: "Precision", header: "ShapeAnalysis_WireVertex.hxx".}
proc nbEdges*(this: ShapeAnalysisWireVertex): int {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_WireVertex.hxx".}
proc wireData*(this: ShapeAnalysisWireVertex): Handle[ShapeExtendWireData] {.
    noSideEffect, importcpp: "WireData", header: "ShapeAnalysis_WireVertex.hxx".}
proc status*(this: ShapeAnalysisWireVertex; num: int): int {.noSideEffect,
    importcpp: "Status", header: "ShapeAnalysis_WireVertex.hxx".}
proc position*(this: ShapeAnalysisWireVertex; num: int): Xyz {.noSideEffect,
    importcpp: "Position", header: "ShapeAnalysis_WireVertex.hxx".}
proc uPrevious*(this: ShapeAnalysisWireVertex; num: int): float {.noSideEffect,
    importcpp: "UPrevious", header: "ShapeAnalysis_WireVertex.hxx".}
proc uFollowing*(this: ShapeAnalysisWireVertex; num: int): float {.noSideEffect,
    importcpp: "UFollowing", header: "ShapeAnalysis_WireVertex.hxx".}
proc data*(this: ShapeAnalysisWireVertex; num: int; pos: var Xyz; upre: var float;
          ufol: var float): int {.noSideEffect, importcpp: "Data",
                              header: "ShapeAnalysis_WireVertex.hxx".}
proc nextStatus*(this: ShapeAnalysisWireVertex; stat: int; num: int = 0): int {.
    noSideEffect, importcpp: "NextStatus", header: "ShapeAnalysis_WireVertex.hxx".}
proc nextCriter*(this: ShapeAnalysisWireVertex; crit: int; num: int = 0): int {.
    noSideEffect, importcpp: "NextCriter", header: "ShapeAnalysis_WireVertex.hxx".}
