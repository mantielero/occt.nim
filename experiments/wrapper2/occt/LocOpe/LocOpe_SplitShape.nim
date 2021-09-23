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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Shape, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_MapOfShape, ../TopTools/TopTools_ListOfShape,
  ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
type
  LocOpe_SplitShape* {.importcpp: "LocOpe_SplitShape",
                      header: "LocOpe_SplitShape.hxx", bycopy.} = object ## ! Empty constructor.


proc constructLocOpe_SplitShape*(): LocOpe_SplitShape {.constructor,
    importcpp: "LocOpe_SplitShape(@)", header: "LocOpe_SplitShape.hxx".}
proc constructLocOpe_SplitShape*(S: TopoDS_Shape): LocOpe_SplitShape {.constructor,
    importcpp: "LocOpe_SplitShape(@)", header: "LocOpe_SplitShape.hxx".}
proc Init*(this: var LocOpe_SplitShape; S: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_SplitShape.hxx".}
proc CanSplit*(this: LocOpe_SplitShape; E: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "CanSplit", header: "LocOpe_SplitShape.hxx".}
proc Add*(this: var LocOpe_SplitShape; V: TopoDS_Vertex; P: Standard_Real;
         E: TopoDS_Edge) {.importcpp: "Add", header: "LocOpe_SplitShape.hxx".}
proc Add*(this: var LocOpe_SplitShape; W: TopoDS_Wire; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "Add", header: "LocOpe_SplitShape.hxx".}
proc Add*(this: var LocOpe_SplitShape; Lwires: TopTools_ListOfShape; F: TopoDS_Face): Standard_Boolean {.
    importcpp: "Add", header: "LocOpe_SplitShape.hxx".}
proc Shape*(this: LocOpe_SplitShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "LocOpe_SplitShape.hxx".}
proc DescendantShapes*(this: var LocOpe_SplitShape; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "DescendantShapes", header: "LocOpe_SplitShape.hxx".}
proc LeftOf*(this: var LocOpe_SplitShape; W: TopoDS_Wire; F: TopoDS_Face): TopTools_ListOfShape {.
    importcpp: "LeftOf", header: "LocOpe_SplitShape.hxx".}