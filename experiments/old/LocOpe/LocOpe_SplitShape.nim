##  Created on: 1995-07-11
##  Created by: Jacques GOUSSARD
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
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
type
  LocOpeSplitShape* {.importcpp: "LocOpe_SplitShape",
                     header: "LocOpe_SplitShape.hxx", bycopy.} = object ## ! Empty constructor.


proc constructLocOpeSplitShape*(): LocOpeSplitShape {.constructor,
    importcpp: "LocOpe_SplitShape(@)", header: "LocOpe_SplitShape.hxx".}
proc constructLocOpeSplitShape*(s: TopoDS_Shape): LocOpeSplitShape {.constructor,
    importcpp: "LocOpe_SplitShape(@)", header: "LocOpe_SplitShape.hxx".}
proc init*(this: var LocOpeSplitShape; s: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_SplitShape.hxx".}
proc canSplit*(this: LocOpeSplitShape; e: TopoDS_Edge): bool {.noSideEffect,
    importcpp: "CanSplit", header: "LocOpe_SplitShape.hxx".}
proc add*(this: var LocOpeSplitShape; v: TopoDS_Vertex; p: cfloat; e: TopoDS_Edge) {.
    importcpp: "Add", header: "LocOpe_SplitShape.hxx".}
proc add*(this: var LocOpeSplitShape; w: TopoDS_Wire; f: TopoDS_Face): bool {.
    importcpp: "Add", header: "LocOpe_SplitShape.hxx".}
proc add*(this: var LocOpeSplitShape; lwires: TopToolsListOfShape; f: TopoDS_Face): bool {.
    importcpp: "Add", header: "LocOpe_SplitShape.hxx".}
proc shape*(this: LocOpeSplitShape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_SplitShape.hxx".}
proc descendantShapes*(this: var LocOpeSplitShape; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "DescendantShapes", header: "LocOpe_SplitShape.hxx".}
proc leftOf*(this: var LocOpeSplitShape; w: TopoDS_Wire; f: TopoDS_Face): TopToolsListOfShape {.
    importcpp: "LeftOf", header: "LocOpe_SplitShape.hxx".}

























