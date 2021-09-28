##  Created on: 1998-12-08
##  Created by: Xuan PHAM PHU
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopOpeBRepTool_connexity"
type
  TopOpeBRepToolREGUW* {.importcpp: "TopOpeBRepTool_REGUW",
                        header: "TopOpeBRepTool_REGUW.hxx", bycopy.} = object


proc constructTopOpeBRepToolREGUW*(fRef: TopoDS_Face): TopOpeBRepToolREGUW {.
    constructor, importcpp: "TopOpeBRepTool_REGUW(@)",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc fref*(this: TopOpeBRepToolREGUW): TopoDS_Face {.noSideEffect, importcpp: "Fref",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc setEsplits*(this: var TopOpeBRepToolREGUW;
                esplits: var TopToolsDataMapOfShapeListOfShape) {.
    importcpp: "SetEsplits", header: "TopOpeBRepTool_REGUW.hxx".}
proc getEsplits*(this: TopOpeBRepToolREGUW;
                esplits: var TopToolsDataMapOfShapeListOfShape) {.noSideEffect,
    importcpp: "GetEsplits", header: "TopOpeBRepTool_REGUW.hxx".}
proc setOwNw*(this: var TopOpeBRepToolREGUW;
             owNw: var TopToolsDataMapOfShapeListOfShape) {.importcpp: "SetOwNw",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc getOwNw*(this: TopOpeBRepToolREGUW;
             owNw: var TopToolsDataMapOfShapeListOfShape) {.noSideEffect,
    importcpp: "GetOwNw", header: "TopOpeBRepTool_REGUW.hxx".}
proc splitEds*(this: var TopOpeBRepToolREGUW): bool {.importcpp: "SplitEds",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc init*(this: var TopOpeBRepToolREGUW; s: TopoDS_Shape) {.importcpp: "Init",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc s*(this: TopOpeBRepToolREGUW): TopoDS_Shape {.noSideEffect, importcpp: "S",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc hasInit*(this: TopOpeBRepToolREGUW): bool {.noSideEffect, importcpp: "HasInit",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc mapS*(this: var TopOpeBRepToolREGUW): bool {.importcpp: "MapS",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc regu*(this: var TopOpeBRepToolREGUW; istep: cint; scur: TopoDS_Shape;
          splits: var TopToolsListOfShape): bool {.importcpp: "REGU",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc regu*(this: var TopOpeBRepToolREGUW): bool {.importcpp: "REGU",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc getSplits*(this: TopOpeBRepToolREGUW; splits: var TopToolsListOfShape): bool {.
    noSideEffect, importcpp: "GetSplits", header: "TopOpeBRepTool_REGUW.hxx".}
proc initBlock*(this: var TopOpeBRepToolREGUW): bool {.importcpp: "InitBlock",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc nextinBlock*(this: var TopOpeBRepToolREGUW): bool {.importcpp: "NextinBlock",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc nearestE*(this: TopOpeBRepToolREGUW; loe: TopToolsListOfShape;
              efound: var TopoDS_Edge): bool {.noSideEffect, importcpp: "NearestE",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc connexity*(this: TopOpeBRepToolREGUW; v: TopoDS_Vertex;
               co: var TopOpeBRepToolConnexity): bool {.noSideEffect,
    importcpp: "Connexity", header: "TopOpeBRepTool_REGUW.hxx".}
proc addNewConnexity*(this: var TopOpeBRepToolREGUW; v: TopoDS_Vertex; oriKey: cint;
                     e: TopoDS_Edge): bool {.importcpp: "AddNewConnexity",
    header: "TopOpeBRepTool_REGUW.hxx".}
proc removeOldConnexity*(this: var TopOpeBRepToolREGUW; v: TopoDS_Vertex;
                        oriKey: cint; e: TopoDS_Edge): bool {.
    importcpp: "RemoveOldConnexity", header: "TopOpeBRepTool_REGUW.hxx".}
proc updateMultiple*(this: var TopOpeBRepToolREGUW; v: TopoDS_Vertex): bool {.
    importcpp: "UpdateMultiple", header: "TopOpeBRepTool_REGUW.hxx".}

























