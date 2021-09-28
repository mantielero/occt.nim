##  Created on: 1995-06-22
##  Created by: Flore Lantheaume
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopOpeBRepBuild_HBuilder"
type
  BRepFilletAPI_MakeChamfer* {.importcpp: "BRepFilletAPI_MakeChamfer",
                              header: "BRepFilletAPI_MakeChamfer.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation ##
                                                                                                                  ## !
                                                                                                                  ## Initializes
                                                                                                                  ## an
                                                                                                                  ## algorithm
                                                                                                                  ## for
                                                                                                                  ## computing
                                                                                                                  ## chamfers
                                                                                                                  ## on
                                                                                                                  ## the
                                                                                                                  ## shape
                                                                                                                  ## S.
                                                                                                                  ##
                                                                                                                  ## !
                                                                                                                  ## The
                                                                                                                  ## edges
                                                                                                                  ## on
                                                                                                                  ## which
                                                                                                                  ## chamfers
                                                                                                                  ## are
                                                                                                                  ## built
                                                                                                                  ## are
                                                                                                                  ## defined
                                                                                                                  ## using
                                                                                                                  ## the
                                                                                                                  ## Add
                                                                                                                  ## function.


proc constructBRepFilletAPI_MakeChamfer*(s: TopoDS_Shape): BRepFilletAPI_MakeChamfer {.
    constructor, importcpp: "BRepFilletAPI_MakeChamfer(@)",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc add*(this: var BRepFilletAPI_MakeChamfer; e: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc add*(this: var BRepFilletAPI_MakeChamfer; dis: cfloat; e: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc setDist*(this: var BRepFilletAPI_MakeChamfer; dis: cfloat; ic: cint; f: TopoDS_Face) {.
    importcpp: "SetDist", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc getDist*(this: BRepFilletAPI_MakeChamfer; ic: cint; dis: var cfloat) {.
    noSideEffect, importcpp: "GetDist", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc add*(this: var BRepFilletAPI_MakeChamfer; dis1: cfloat; dis2: cfloat;
         e: TopoDS_Edge; f: TopoDS_Face) {.importcpp: "Add",
                                       header: "BRepFilletAPI_MakeChamfer.hxx".}
proc setDists*(this: var BRepFilletAPI_MakeChamfer; dis1: cfloat; dis2: cfloat;
              ic: cint; f: TopoDS_Face) {.importcpp: "SetDists",
                                      header: "BRepFilletAPI_MakeChamfer.hxx".}
proc dists*(this: BRepFilletAPI_MakeChamfer; ic: cint; dis1: var cfloat;
           dis2: var cfloat) {.noSideEffect, importcpp: "Dists",
                            header: "BRepFilletAPI_MakeChamfer.hxx".}
proc addDA*(this: var BRepFilletAPI_MakeChamfer; dis: cfloat; angle: cfloat;
           e: TopoDS_Edge; f: TopoDS_Face) {.importcpp: "AddDA",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc setDistAngle*(this: var BRepFilletAPI_MakeChamfer; dis: cfloat; angle: cfloat;
                  ic: cint; f: TopoDS_Face) {.importcpp: "SetDistAngle",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc getDistAngle*(this: BRepFilletAPI_MakeChamfer; ic: cint; dis: var cfloat;
                  angle: var cfloat) {.noSideEffect, importcpp: "GetDistAngle",
                                    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc setMode*(this: var BRepFilletAPI_MakeChamfer; theMode: ChFiDS_ChamfMode) {.
    importcpp: "SetMode", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc isSymetric*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.noSideEffect,
    importcpp: "IsSymetric", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc isTwoDistances*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.noSideEffect,
    importcpp: "IsTwoDistances", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc isDistanceAngle*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.noSideEffect,
    importcpp: "IsDistanceAngle", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc resetContour*(this: var BRepFilletAPI_MakeChamfer; ic: cint) {.
    importcpp: "ResetContour", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc nbContours*(this: BRepFilletAPI_MakeChamfer): cint {.noSideEffect,
    importcpp: "NbContours", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc contour*(this: BRepFilletAPI_MakeChamfer; e: TopoDS_Edge): cint {.noSideEffect,
    importcpp: "Contour", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc nbEdges*(this: BRepFilletAPI_MakeChamfer; i: cint): cint {.noSideEffect,
    importcpp: "NbEdges", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc edge*(this: BRepFilletAPI_MakeChamfer; i: cint; j: cint): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc remove*(this: var BRepFilletAPI_MakeChamfer; e: TopoDS_Edge) {.
    importcpp: "Remove", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc length*(this: BRepFilletAPI_MakeChamfer; ic: cint): cfloat {.noSideEffect,
    importcpp: "Length", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc firstVertex*(this: BRepFilletAPI_MakeChamfer; ic: cint): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc lastVertex*(this: BRepFilletAPI_MakeChamfer; ic: cint): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc abscissa*(this: BRepFilletAPI_MakeChamfer; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, importcpp: "Abscissa", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc relativeAbscissa*(this: BRepFilletAPI_MakeChamfer; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, importcpp: "RelativeAbscissa",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc closedAndTangent*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.
    noSideEffect, importcpp: "ClosedAndTangent",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc closed*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.noSideEffect,
    importcpp: "Closed", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc build*(this: var BRepFilletAPI_MakeChamfer) {.importcpp: "Build",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc reset*(this: var BRepFilletAPI_MakeChamfer) {.importcpp: "Reset",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc builder*(this: BRepFilletAPI_MakeChamfer): Handle[TopOpeBRepBuildHBuilder] {.
    noSideEffect, importcpp: "Builder", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc generated*(this: var BRepFilletAPI_MakeChamfer; eorV: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc modified*(this: var BRepFilletAPI_MakeChamfer; f: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc isDeleted*(this: var BRepFilletAPI_MakeChamfer; f: TopoDS_Shape): bool {.
    importcpp: "IsDeleted", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc simulate*(this: var BRepFilletAPI_MakeChamfer; ic: cint) {.importcpp: "Simulate",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc nbSurf*(this: BRepFilletAPI_MakeChamfer; ic: cint): cint {.noSideEffect,
    importcpp: "NbSurf", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc sect*(this: BRepFilletAPI_MakeChamfer; ic: cint; `is`: cint): Handle[
    ChFiDS_SecHArray1] {.noSideEffect, importcpp: "Sect",
                        header: "BRepFilletAPI_MakeChamfer.hxx".}

























