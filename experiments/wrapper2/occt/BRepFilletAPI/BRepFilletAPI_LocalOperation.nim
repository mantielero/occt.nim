##  Created on: 1998-01-29
##  Created by: Laurent BOURESCHE
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepFilletAPI_LocalOperation* {.importcpp: "BRepFilletAPI_LocalOperation",
                                 header: "BRepFilletAPI_LocalOperation.hxx",
                                 bycopy.} = object of BRepBuilderAPI_MakeShape ## ! Adds a
                                                                          ## contour in  the
                                                                          ## builder
                                                                          ## (builds a
                                                                          ## !
                                                                          ## contour  of
                                                                          ## tangent
                                                                          ## edges).


proc add*(this: var BRepFilletAPI_LocalOperation; e: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc resetContour*(this: var BRepFilletAPI_LocalOperation; ic: cint) {.
    importcpp: "ResetContour", header: "BRepFilletAPI_LocalOperation.hxx".}
proc nbContours*(this: BRepFilletAPI_LocalOperation): cint {.noSideEffect,
    importcpp: "NbContours", header: "BRepFilletAPI_LocalOperation.hxx".}
proc contour*(this: BRepFilletAPI_LocalOperation; e: TopoDS_Edge): cint {.
    noSideEffect, importcpp: "Contour", header: "BRepFilletAPI_LocalOperation.hxx".}
proc nbEdges*(this: BRepFilletAPI_LocalOperation; i: cint): cint {.noSideEffect,
    importcpp: "NbEdges", header: "BRepFilletAPI_LocalOperation.hxx".}
proc edge*(this: BRepFilletAPI_LocalOperation; i: cint; j: cint): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "BRepFilletAPI_LocalOperation.hxx".}
proc remove*(this: var BRepFilletAPI_LocalOperation; e: TopoDS_Edge) {.
    importcpp: "Remove", header: "BRepFilletAPI_LocalOperation.hxx".}
proc length*(this: BRepFilletAPI_LocalOperation; ic: cint): cfloat {.noSideEffect,
    importcpp: "Length", header: "BRepFilletAPI_LocalOperation.hxx".}
proc firstVertex*(this: BRepFilletAPI_LocalOperation; ic: cint): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc lastVertex*(this: BRepFilletAPI_LocalOperation; ic: cint): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc abscissa*(this: BRepFilletAPI_LocalOperation; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, importcpp: "Abscissa", header: "BRepFilletAPI_LocalOperation.hxx".}
proc relativeAbscissa*(this: BRepFilletAPI_LocalOperation; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, importcpp: "RelativeAbscissa",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc closedAndTangent*(this: BRepFilletAPI_LocalOperation; ic: cint): bool {.
    noSideEffect, importcpp: "ClosedAndTangent",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc closed*(this: BRepFilletAPI_LocalOperation; ic: cint): bool {.noSideEffect,
    importcpp: "Closed", header: "BRepFilletAPI_LocalOperation.hxx".}
proc reset*(this: var BRepFilletAPI_LocalOperation) {.importcpp: "Reset",
    header: "BRepFilletAPI_LocalOperation.hxx".}
proc simulate*(this: var BRepFilletAPI_LocalOperation; ic: cint) {.
    importcpp: "Simulate", header: "BRepFilletAPI_LocalOperation.hxx".}
proc nbSurf*(this: BRepFilletAPI_LocalOperation; ic: cint): cint {.noSideEffect,
    importcpp: "NbSurf", header: "BRepFilletAPI_LocalOperation.hxx".}
proc sect*(this: BRepFilletAPI_LocalOperation; ic: cint; `is`: cint): Handle[
    ChFiDS_SecHArray1] {.noSideEffect, importcpp: "Sect",
                        header: "BRepFilletAPI_LocalOperation.hxx".}

























