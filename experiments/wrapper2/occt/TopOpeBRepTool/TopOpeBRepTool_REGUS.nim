##  Created on: 1999-01-04
##  Created by: Xuan PHAM PHU
##  Copyright (c) 1999 Matra Datavision
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
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_IndexedMapOfShape, ../Standard/Standard_Integer,
  ../TopTools/TopTools_MapOfShape, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  TopOpeBRepTool_REGUS* {.importcpp: "TopOpeBRepTool_REGUS",
                         header: "TopOpeBRepTool_REGUS.hxx", bycopy.} = object


proc constructTopOpeBRepTool_REGUS*(): TopOpeBRepTool_REGUS {.constructor,
    importcpp: "TopOpeBRepTool_REGUS(@)", header: "TopOpeBRepTool_REGUS.hxx".}
proc Init*(this: var TopOpeBRepTool_REGUS; S: TopoDS_Shape) {.importcpp: "Init",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc S*(this: TopOpeBRepTool_REGUS): TopoDS_Shape {.noSideEffect, importcpp: "S",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc MapS*(this: var TopOpeBRepTool_REGUS): Standard_Boolean {.importcpp: "MapS",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc WireToFace*(Fanc: TopoDS_Face; nWs: TopTools_ListOfShape;
                nFs: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_REGUS::WireToFace(@)",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc SplitF*(Fanc: TopoDS_Face; FSplits: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool_REGUS::SplitF(@)",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc SplitFaces*(this: var TopOpeBRepTool_REGUS): Standard_Boolean {.
    importcpp: "SplitFaces", header: "TopOpeBRepTool_REGUS.hxx".}
proc REGU*(this: var TopOpeBRepTool_REGUS): Standard_Boolean {.importcpp: "REGU",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc SetFsplits*(this: var TopOpeBRepTool_REGUS;
                Fsplits: var TopTools_DataMapOfShapeListOfShape) {.
    importcpp: "SetFsplits", header: "TopOpeBRepTool_REGUS.hxx".}
proc GetFsplits*(this: TopOpeBRepTool_REGUS;
                Fsplits: var TopTools_DataMapOfShapeListOfShape) {.noSideEffect,
    importcpp: "GetFsplits", header: "TopOpeBRepTool_REGUS.hxx".}
proc SetOshNsh*(this: var TopOpeBRepTool_REGUS;
               OshNsh: var TopTools_DataMapOfShapeListOfShape) {.
    importcpp: "SetOshNsh", header: "TopOpeBRepTool_REGUS.hxx".}
proc GetOshNsh*(this: TopOpeBRepTool_REGUS;
               OshNsh: var TopTools_DataMapOfShapeListOfShape) {.noSideEffect,
    importcpp: "GetOshNsh", header: "TopOpeBRepTool_REGUS.hxx".}
proc InitBlock*(this: var TopOpeBRepTool_REGUS): Standard_Boolean {.
    importcpp: "InitBlock", header: "TopOpeBRepTool_REGUS.hxx".}
proc NextinBlock*(this: var TopOpeBRepTool_REGUS): Standard_Boolean {.
    importcpp: "NextinBlock", header: "TopOpeBRepTool_REGUS.hxx".}
proc NearestF*(this: TopOpeBRepTool_REGUS; e: TopoDS_Edge; lof: TopTools_ListOfShape;
              ffound: var TopoDS_Face): Standard_Boolean {.noSideEffect,
    importcpp: "NearestF", header: "TopOpeBRepTool_REGUS.hxx".}