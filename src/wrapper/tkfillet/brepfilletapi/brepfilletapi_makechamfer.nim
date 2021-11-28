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


proc newBRepFilletAPI_MakeChamfer*(s: TopoDS_Shape): BRepFilletAPI_MakeChamfer {.
    cdecl, constructor, importcpp: "BRepFilletAPI_MakeChamfer(@)", dynlib: tkfillet.}
proc add*(this: var BRepFilletAPI_MakeChamfer; e: TopoDS_Edge) {.cdecl,
    importcpp: "Add", dynlib: tkfillet.}
proc add*(this: var BRepFilletAPI_MakeChamfer; dis: cfloat; e: TopoDS_Edge) {.cdecl,
    importcpp: "Add", dynlib: tkfillet.}
proc setDist*(this: var BRepFilletAPI_MakeChamfer; dis: cfloat; ic: cint; f: TopoDS_Face) {.
    cdecl, importcpp: "SetDist", dynlib: tkfillet.}
proc getDist*(this: BRepFilletAPI_MakeChamfer; ic: cint; dis: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDist", dynlib: tkfillet.}
proc add*(this: var BRepFilletAPI_MakeChamfer; dis1: cfloat; dis2: cfloat;
         e: TopoDS_Edge; f: TopoDS_Face) {.cdecl, importcpp: "Add", dynlib: tkfillet.}
proc setDists*(this: var BRepFilletAPI_MakeChamfer; dis1: cfloat; dis2: cfloat;
              ic: cint; f: TopoDS_Face) {.cdecl, importcpp: "SetDists",
                                      dynlib: tkfillet.}
proc dists*(this: BRepFilletAPI_MakeChamfer; ic: cint; dis1: var cfloat;
           dis2: var cfloat) {.noSideEffect, cdecl, importcpp: "Dists",
                            dynlib: tkfillet.}
proc addDA*(this: var BRepFilletAPI_MakeChamfer; dis: cfloat; angle: cfloat;
           e: TopoDS_Edge; f: TopoDS_Face) {.cdecl, importcpp: "AddDA",
    dynlib: tkfillet.}
proc setDistAngle*(this: var BRepFilletAPI_MakeChamfer; dis: cfloat; angle: cfloat;
                  ic: cint; f: TopoDS_Face) {.cdecl, importcpp: "SetDistAngle",
    dynlib: tkfillet.}
proc getDistAngle*(this: BRepFilletAPI_MakeChamfer; ic: cint; dis: var cfloat;
                  angle: var cfloat) {.noSideEffect, cdecl,
                                    importcpp: "GetDistAngle", dynlib: tkfillet.}
proc setMode*(this: var BRepFilletAPI_MakeChamfer; theMode: ChFiDS_ChamfMode) {.cdecl,
    importcpp: "SetMode", dynlib: tkfillet.}
proc isSymetric*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsSymetric", dynlib: tkfillet.}
proc isTwoDistances*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsTwoDistances", dynlib: tkfillet.}
proc isDistanceAngle*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsDistanceAngle", dynlib: tkfillet.}
proc resetContour*(this: var BRepFilletAPI_MakeChamfer; ic: cint) {.cdecl,
    importcpp: "ResetContour", dynlib: tkfillet.}
proc nbContours*(this: BRepFilletAPI_MakeChamfer): cint {.noSideEffect, cdecl,
    importcpp: "NbContours", dynlib: tkfillet.}
proc contour*(this: BRepFilletAPI_MakeChamfer; e: TopoDS_Edge): cint {.noSideEffect,
    cdecl, importcpp: "Contour", dynlib: tkfillet.}
proc nbEdges*(this: BRepFilletAPI_MakeChamfer; i: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbEdges", dynlib: tkfillet.}
proc edge*(this: BRepFilletAPI_MakeChamfer; i: cint; j: cint): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "Edge", dynlib: tkfillet.}
proc remove*(this: var BRepFilletAPI_MakeChamfer; e: TopoDS_Edge) {.cdecl,
    importcpp: "Remove", dynlib: tkfillet.}
proc length*(this: BRepFilletAPI_MakeChamfer; ic: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkfillet.}
proc firstVertex*(this: BRepFilletAPI_MakeChamfer; ic: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "FirstVertex", dynlib: tkfillet.}
proc lastVertex*(this: BRepFilletAPI_MakeChamfer; ic: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "LastVertex", dynlib: tkfillet.}
proc abscissa*(this: BRepFilletAPI_MakeChamfer; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "Abscissa", dynlib: tkfillet.}
proc relativeAbscissa*(this: BRepFilletAPI_MakeChamfer; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "RelativeAbscissa", dynlib: tkfillet.}
proc closedAndTangent*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.
    noSideEffect, cdecl, importcpp: "ClosedAndTangent", dynlib: tkfillet.}
proc closed*(this: BRepFilletAPI_MakeChamfer; ic: cint): bool {.noSideEffect, cdecl,
    importcpp: "Closed", dynlib: tkfillet.}
proc build*(this: var BRepFilletAPI_MakeChamfer) {.cdecl, importcpp: "Build",
    dynlib: tkfillet.}
proc reset*(this: var BRepFilletAPI_MakeChamfer) {.cdecl, importcpp: "Reset",
    dynlib: tkfillet.}
proc builder*(this: BRepFilletAPI_MakeChamfer): Handle[TopOpeBRepBuildHBuilder] {.
    noSideEffect, cdecl, importcpp: "Builder", dynlib: tkfillet.}
proc generated*(this: var BRepFilletAPI_MakeChamfer; eorV: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", dynlib: tkfillet.}
proc modified*(this: var BRepFilletAPI_MakeChamfer; f: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", dynlib: tkfillet.}
proc isDeleted*(this: var BRepFilletAPI_MakeChamfer; f: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", dynlib: tkfillet.}
proc simulate*(this: var BRepFilletAPI_MakeChamfer; ic: cint) {.cdecl,
    importcpp: "Simulate", dynlib: tkfillet.}
proc nbSurf*(this: BRepFilletAPI_MakeChamfer; ic: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbSurf", dynlib: tkfillet.}
proc sect*(this: BRepFilletAPI_MakeChamfer; ic: cint; `is`: cint): Handle[
    ChFiDS_SecHArray1] {.noSideEffect, cdecl, importcpp: "Sect", dynlib: tkfillet.}