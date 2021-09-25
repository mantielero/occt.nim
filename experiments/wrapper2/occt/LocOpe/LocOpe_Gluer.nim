##  Created on: 1996-01-30
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  LocOpeGluer* {.importcpp: "LocOpe_Gluer", header: "LocOpe_Gluer.hxx", bycopy.} = object


proc constructLocOpeGluer*(): LocOpeGluer {.constructor,
    importcpp: "LocOpe_Gluer(@)", header: "LocOpe_Gluer.hxx".}
proc constructLocOpeGluer*(sbase: TopoDS_Shape; snew: TopoDS_Shape): LocOpeGluer {.
    constructor, importcpp: "LocOpe_Gluer(@)", header: "LocOpe_Gluer.hxx".}
proc init*(this: var LocOpeGluer; sbase: TopoDS_Shape; snew: TopoDS_Shape) {.
    importcpp: "Init", header: "LocOpe_Gluer.hxx".}
proc `bind`*(this: var LocOpeGluer; fnew: TopoDS_Face; fbase: TopoDS_Face) {.
    importcpp: "Bind", header: "LocOpe_Gluer.hxx".}
proc `bind`*(this: var LocOpeGluer; enew: TopoDS_Edge; ebase: TopoDS_Edge) {.
    importcpp: "Bind", header: "LocOpe_Gluer.hxx".}
proc opeType*(this: LocOpeGluer): LocOpeOperation {.noSideEffect,
    importcpp: "OpeType", header: "LocOpe_Gluer.hxx".}
proc perform*(this: var LocOpeGluer) {.importcpp: "Perform",
                                   header: "LocOpe_Gluer.hxx".}
proc isDone*(this: LocOpeGluer): bool {.noSideEffect, importcpp: "IsDone",
                                    header: "LocOpe_Gluer.hxx".}
proc resultingShape*(this: LocOpeGluer): TopoDS_Shape {.noSideEffect,
    importcpp: "ResultingShape", header: "LocOpe_Gluer.hxx".}
proc descendantFaces*(this: LocOpeGluer; f: TopoDS_Face): TopToolsListOfShape {.
    noSideEffect, importcpp: "DescendantFaces", header: "LocOpe_Gluer.hxx".}
proc basisShape*(this: LocOpeGluer): TopoDS_Shape {.noSideEffect,
    importcpp: "BasisShape", header: "LocOpe_Gluer.hxx".}
proc gluedShape*(this: LocOpeGluer): TopoDS_Shape {.noSideEffect,
    importcpp: "GluedShape", header: "LocOpe_Gluer.hxx".}
proc edges*(this: LocOpeGluer): TopToolsListOfShape {.noSideEffect,
    importcpp: "Edges", header: "LocOpe_Gluer.hxx".}
proc tgtEdges*(this: LocOpeGluer): TopToolsListOfShape {.noSideEffect,
    importcpp: "TgtEdges", header: "LocOpe_Gluer.hxx".}
