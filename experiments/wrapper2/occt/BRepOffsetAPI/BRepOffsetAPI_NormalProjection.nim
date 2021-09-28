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
type
  BRepOffsetAPI_NormalProjection* {.importcpp: "BRepOffsetAPI_NormalProjection", header: "BRepOffsetAPI_NormalProjection.hxx",
                                   bycopy.} = object of BRepBuilderAPI_MakeShape ## !
                                                                            ## Constructs an
                                                                            ## empty
                                                                            ## framework to
                                                                            ## define
                                                                            ## projection on
                                                                            ## ! a
                                                                            ## shape
                                                                            ## according to the
                                                                            ## normal from each
                                                                            ## point to be
                                                                            ## !
                                                                            ## projected to the
                                                                            ## shape.


proc constructBRepOffsetAPI_NormalProjection*(): BRepOffsetAPI_NormalProjection {.
    constructor, importcpp: "BRepOffsetAPI_NormalProjection(@)",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc constructBRepOffsetAPI_NormalProjection*(s: TopoDS_Shape): BRepOffsetAPI_NormalProjection {.
    constructor, importcpp: "BRepOffsetAPI_NormalProjection(@)",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc init*(this: var BRepOffsetAPI_NormalProjection; s: TopoDS_Shape) {.
    importcpp: "Init", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc add*(this: var BRepOffsetAPI_NormalProjection; toProj: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc setParams*(this: var BRepOffsetAPI_NormalProjection; tol3D: cfloat;
               tol2D: cfloat; internalContinuity: GeomAbsShape; maxDegree: cint;
               maxSeg: cint) {.importcpp: "SetParams",
                             header: "BRepOffsetAPI_NormalProjection.hxx".}
proc setMaxDistance*(this: var BRepOffsetAPI_NormalProjection; maxDist: cfloat) {.
    importcpp: "SetMaxDistance", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc setLimit*(this: var BRepOffsetAPI_NormalProjection; faceBoundaries: bool = true) {.
    importcpp: "SetLimit", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc compute3d*(this: var BRepOffsetAPI_NormalProjection; with3d: bool = true) {.
    importcpp: "Compute3d", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc build*(this: var BRepOffsetAPI_NormalProjection) {.importcpp: "Build",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc isDone*(this: BRepOffsetAPI_NormalProjection): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc projection*(this: BRepOffsetAPI_NormalProjection): TopoDS_Shape {.noSideEffect,
    importcpp: "Projection", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc couple*(this: BRepOffsetAPI_NormalProjection; e: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Couple", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc generated*(this: var BRepOffsetAPI_NormalProjection; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc ancestor*(this: BRepOffsetAPI_NormalProjection; e: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Ancestor",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc buildWire*(this: BRepOffsetAPI_NormalProjection;
               liste: var TopToolsListOfShape): bool {.noSideEffect,
    importcpp: "BuildWire", header: "BRepOffsetAPI_NormalProjection.hxx".}

























