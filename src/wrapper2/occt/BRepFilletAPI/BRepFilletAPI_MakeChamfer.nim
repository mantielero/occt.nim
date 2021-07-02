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
proc add*(this: var BRepFilletAPI_MakeChamfer; dis: StandardReal; e: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc setDist*(this: var BRepFilletAPI_MakeChamfer; dis: StandardReal;
             ic: StandardInteger; f: TopoDS_Face) {.importcpp: "SetDist",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc getDist*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
             dis: var StandardReal) {.noSideEffect, importcpp: "GetDist",
                                   header: "BRepFilletAPI_MakeChamfer.hxx".}
proc add*(this: var BRepFilletAPI_MakeChamfer; dis1: StandardReal; dis2: StandardReal;
         e: TopoDS_Edge; f: TopoDS_Face) {.importcpp: "Add",
                                       header: "BRepFilletAPI_MakeChamfer.hxx".}
proc setDists*(this: var BRepFilletAPI_MakeChamfer; dis1: StandardReal;
              dis2: StandardReal; ic: StandardInteger; f: TopoDS_Face) {.
    importcpp: "SetDists", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc dists*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
           dis1: var StandardReal; dis2: var StandardReal) {.noSideEffect,
    importcpp: "Dists", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc addDA*(this: var BRepFilletAPI_MakeChamfer; dis: StandardReal;
           angle: StandardReal; e: TopoDS_Edge; f: TopoDS_Face) {.importcpp: "AddDA",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc setDistAngle*(this: var BRepFilletAPI_MakeChamfer; dis: StandardReal;
                  angle: StandardReal; ic: StandardInteger; f: TopoDS_Face) {.
    importcpp: "SetDistAngle", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc getDistAngle*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
                  dis: var StandardReal; angle: var StandardReal) {.noSideEffect,
    importcpp: "GetDistAngle", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc setMode*(this: var BRepFilletAPI_MakeChamfer; theMode: ChFiDS_ChamfMode) {.
    importcpp: "SetMode", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc isSymetric*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsSymetric", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc isTwoDistances*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTwoDistances",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc isDistanceAngle*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsDistanceAngle",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc resetContour*(this: var BRepFilletAPI_MakeChamfer; ic: StandardInteger) {.
    importcpp: "ResetContour", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc nbContours*(this: BRepFilletAPI_MakeChamfer): StandardInteger {.noSideEffect,
    importcpp: "NbContours", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc contour*(this: BRepFilletAPI_MakeChamfer; e: TopoDS_Edge): StandardInteger {.
    noSideEffect, importcpp: "Contour", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc nbEdges*(this: BRepFilletAPI_MakeChamfer; i: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbEdges", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc edge*(this: BRepFilletAPI_MakeChamfer; i: StandardInteger; j: StandardInteger): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc remove*(this: var BRepFilletAPI_MakeChamfer; e: TopoDS_Edge) {.
    importcpp: "Remove", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc length*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Length", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc firstVertex*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc lastVertex*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc abscissa*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger; v: TopoDS_Vertex): StandardReal {.
    noSideEffect, importcpp: "Abscissa", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc relativeAbscissa*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
                      v: TopoDS_Vertex): StandardReal {.noSideEffect,
    importcpp: "RelativeAbscissa", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc closedAndTangent*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "ClosedAndTangent",
    header: "BRepFilletAPI_MakeChamfer.hxx".}
proc closed*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "Closed", header: "BRepFilletAPI_MakeChamfer.hxx".}
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
proc isDeleted*(this: var BRepFilletAPI_MakeChamfer; f: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc simulate*(this: var BRepFilletAPI_MakeChamfer; ic: StandardInteger) {.
    importcpp: "Simulate", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc nbSurf*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbSurf", header: "BRepFilletAPI_MakeChamfer.hxx".}
proc sect*(this: BRepFilletAPI_MakeChamfer; ic: StandardInteger;
          `is`: StandardInteger): Handle[ChFiDS_SecHArray1] {.noSideEffect,
    importcpp: "Sect", header: "BRepFilletAPI_MakeChamfer.hxx".}

