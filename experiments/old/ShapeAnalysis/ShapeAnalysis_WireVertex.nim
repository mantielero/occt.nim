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
proc init*(this: var ShapeAnalysisWireVertex; wire: TopoDS_Wire; preci: cfloat) {.
    importcpp: "Init", header: "ShapeAnalysis_WireVertex.hxx".}
proc init*(this: var ShapeAnalysisWireVertex; swbd: Handle[ShapeExtendWireData];
          preci: cfloat) {.importcpp: "Init", header: "ShapeAnalysis_WireVertex.hxx".}
proc load*(this: var ShapeAnalysisWireVertex; wire: TopoDS_Wire) {.importcpp: "Load",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc load*(this: var ShapeAnalysisWireVertex; sbwd: Handle[ShapeExtendWireData]) {.
    importcpp: "Load", header: "ShapeAnalysis_WireVertex.hxx".}
proc setPrecision*(this: var ShapeAnalysisWireVertex; preci: cfloat) {.
    importcpp: "SetPrecision", header: "ShapeAnalysis_WireVertex.hxx".}
proc analyze*(this: var ShapeAnalysisWireVertex) {.importcpp: "Analyze",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc setSameVertex*(this: var ShapeAnalysisWireVertex; num: cint) {.
    importcpp: "SetSameVertex", header: "ShapeAnalysis_WireVertex.hxx".}
proc setSameCoords*(this: var ShapeAnalysisWireVertex; num: cint) {.
    importcpp: "SetSameCoords", header: "ShapeAnalysis_WireVertex.hxx".}
proc setClose*(this: var ShapeAnalysisWireVertex; num: cint) {.importcpp: "SetClose",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc setEnd*(this: var ShapeAnalysisWireVertex; num: cint; pos: Xyz; ufol: cfloat) {.
    importcpp: "SetEnd", header: "ShapeAnalysis_WireVertex.hxx".}
proc setStart*(this: var ShapeAnalysisWireVertex; num: cint; pos: Xyz; upre: cfloat) {.
    importcpp: "SetStart", header: "ShapeAnalysis_WireVertex.hxx".}
proc setInters*(this: var ShapeAnalysisWireVertex; num: cint; pos: Xyz; upre: cfloat;
               ufol: cfloat) {.importcpp: "SetInters",
                             header: "ShapeAnalysis_WireVertex.hxx".}
proc setDisjoined*(this: var ShapeAnalysisWireVertex; num: cint) {.
    importcpp: "SetDisjoined", header: "ShapeAnalysis_WireVertex.hxx".}
proc isDone*(this: ShapeAnalysisWireVertex): bool {.noSideEffect,
    importcpp: "IsDone", header: "ShapeAnalysis_WireVertex.hxx".}
proc precision*(this: ShapeAnalysisWireVertex): cfloat {.noSideEffect,
    importcpp: "Precision", header: "ShapeAnalysis_WireVertex.hxx".}
proc nbEdges*(this: ShapeAnalysisWireVertex): cint {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_WireVertex.hxx".}
proc wireData*(this: ShapeAnalysisWireVertex): Handle[ShapeExtendWireData] {.
    noSideEffect, importcpp: "WireData", header: "ShapeAnalysis_WireVertex.hxx".}
proc status*(this: ShapeAnalysisWireVertex; num: cint): cint {.noSideEffect,
    importcpp: "Status", header: "ShapeAnalysis_WireVertex.hxx".}
proc position*(this: ShapeAnalysisWireVertex; num: cint): Xyz {.noSideEffect,
    importcpp: "Position", header: "ShapeAnalysis_WireVertex.hxx".}
proc uPrevious*(this: ShapeAnalysisWireVertex; num: cint): cfloat {.noSideEffect,
    importcpp: "UPrevious", header: "ShapeAnalysis_WireVertex.hxx".}
proc uFollowing*(this: ShapeAnalysisWireVertex; num: cint): cfloat {.noSideEffect,
    importcpp: "UFollowing", header: "ShapeAnalysis_WireVertex.hxx".}
proc data*(this: ShapeAnalysisWireVertex; num: cint; pos: var Xyz; upre: var cfloat;
          ufol: var cfloat): cint {.noSideEffect, importcpp: "Data",
                                header: "ShapeAnalysis_WireVertex.hxx".}
proc nextStatus*(this: ShapeAnalysisWireVertex; stat: cint; num: cint = 0): cint {.
    noSideEffect, importcpp: "NextStatus", header: "ShapeAnalysis_WireVertex.hxx".}
proc nextCriter*(this: ShapeAnalysisWireVertex; crit: cint; num: cint = 0): cint {.
    noSideEffect, importcpp: "NextCriter", header: "ShapeAnalysis_WireVertex.hxx".}

























