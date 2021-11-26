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


proc add*(this: var BRepFilletAPI_LocalOperation; e: TopoDS_Edge) {.cdecl,
    importcpp: "Add", dynlib: tkfillet.}
proc resetContour*(this: var BRepFilletAPI_LocalOperation; ic: cint) {.cdecl,
    importcpp: "ResetContour", dynlib: tkfillet.}
proc nbContours*(this: BRepFilletAPI_LocalOperation): cint {.noSideEffect, cdecl,
    importcpp: "NbContours", dynlib: tkfillet.}
proc contour*(this: BRepFilletAPI_LocalOperation; e: TopoDS_Edge): cint {.
    noSideEffect, cdecl, importcpp: "Contour", dynlib: tkfillet.}
proc nbEdges*(this: BRepFilletAPI_LocalOperation; i: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbEdges", dynlib: tkfillet.}
proc edge*(this: BRepFilletAPI_LocalOperation; i: cint; j: cint): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "Edge", dynlib: tkfillet.}
proc remove*(this: var BRepFilletAPI_LocalOperation; e: TopoDS_Edge) {.cdecl,
    importcpp: "Remove", dynlib: tkfillet.}
proc length*(this: BRepFilletAPI_LocalOperation; ic: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Length", dynlib: tkfillet.}
proc firstVertex*(this: BRepFilletAPI_LocalOperation; ic: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "FirstVertex", dynlib: tkfillet.}
proc lastVertex*(this: BRepFilletAPI_LocalOperation; ic: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "LastVertex", dynlib: tkfillet.}
proc abscissa*(this: BRepFilletAPI_LocalOperation; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "Abscissa", dynlib: tkfillet.}
proc relativeAbscissa*(this: BRepFilletAPI_LocalOperation; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "RelativeAbscissa", dynlib: tkfillet.}
proc closedAndTangent*(this: BRepFilletAPI_LocalOperation; ic: cint): bool {.
    noSideEffect, cdecl, importcpp: "ClosedAndTangent", dynlib: tkfillet.}
proc closed*(this: BRepFilletAPI_LocalOperation; ic: cint): bool {.noSideEffect, cdecl,
    importcpp: "Closed", dynlib: tkfillet.}
proc reset*(this: var BRepFilletAPI_LocalOperation) {.cdecl, importcpp: "Reset",
    dynlib: tkfillet.}
proc simulate*(this: var BRepFilletAPI_LocalOperation; ic: cint) {.cdecl,
    importcpp: "Simulate", dynlib: tkfillet.}
proc nbSurf*(this: BRepFilletAPI_LocalOperation; ic: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbSurf", dynlib: tkfillet.}
proc sect*(this: BRepFilletAPI_LocalOperation; ic: cint; `is`: cint): Handle[
    ChFiDS_SecHArray1] {.noSideEffect, cdecl, importcpp: "Sect", dynlib: tkfillet.}