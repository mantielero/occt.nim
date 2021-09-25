##  Created on: 1997-10-13
##  Created by: Roman BORISOV
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Adaptor3d_Curve"
type
  BRepAlgoNormalProjection* {.importcpp: "BRepAlgo_NormalProjection",
                             header: "BRepAlgo_NormalProjection.hxx", bycopy.} = object


proc constructBRepAlgoNormalProjection*(): BRepAlgoNormalProjection {.constructor,
    importcpp: "BRepAlgo_NormalProjection(@)",
    header: "BRepAlgo_NormalProjection.hxx".}
proc constructBRepAlgoNormalProjection*(s: TopoDS_Shape): BRepAlgoNormalProjection {.
    constructor, importcpp: "BRepAlgo_NormalProjection(@)",
    header: "BRepAlgo_NormalProjection.hxx".}
proc init*(this: var BRepAlgoNormalProjection; s: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepAlgo_NormalProjection.hxx".}
proc add*(this: var BRepAlgoNormalProjection; toProj: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepAlgo_NormalProjection.hxx".}
proc setParams*(this: var BRepAlgoNormalProjection; tol3D: float; tol2D: float;
               internalContinuity: GeomAbsShape; maxDegree: int; maxSeg: int) {.
    importcpp: "SetParams", header: "BRepAlgo_NormalProjection.hxx".}
proc setDefaultParams*(this: var BRepAlgoNormalProjection) {.
    importcpp: "SetDefaultParams", header: "BRepAlgo_NormalProjection.hxx".}
proc setMaxDistance*(this: var BRepAlgoNormalProjection; maxDist: float) {.
    importcpp: "SetMaxDistance", header: "BRepAlgo_NormalProjection.hxx".}
proc compute3d*(this: var BRepAlgoNormalProjection; with3d: bool = true) {.
    importcpp: "Compute3d", header: "BRepAlgo_NormalProjection.hxx".}
proc setLimit*(this: var BRepAlgoNormalProjection; faceBoundaries: bool = true) {.
    importcpp: "SetLimit", header: "BRepAlgo_NormalProjection.hxx".}
proc build*(this: var BRepAlgoNormalProjection) {.importcpp: "Build",
    header: "BRepAlgo_NormalProjection.hxx".}
proc isDone*(this: BRepAlgoNormalProjection): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepAlgo_NormalProjection.hxx".}
proc projection*(this: BRepAlgoNormalProjection): TopoDS_Shape {.noSideEffect,
    importcpp: "Projection", header: "BRepAlgo_NormalProjection.hxx".}
proc ancestor*(this: BRepAlgoNormalProjection; e: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Ancestor", header: "BRepAlgo_NormalProjection.hxx".}
proc couple*(this: BRepAlgoNormalProjection; e: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Couple", header: "BRepAlgo_NormalProjection.hxx".}
proc generated*(this: var BRepAlgoNormalProjection; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepAlgo_NormalProjection.hxx".}
proc isElementary*(this: BRepAlgoNormalProjection; c: Adaptor3dCurve): bool {.
    noSideEffect, importcpp: "IsElementary",
    header: "BRepAlgo_NormalProjection.hxx".}
proc buildWire*(this: BRepAlgoNormalProjection; liste: var TopToolsListOfShape): bool {.
    noSideEffect, importcpp: "BuildWire", header: "BRepAlgo_NormalProjection.hxx".}
