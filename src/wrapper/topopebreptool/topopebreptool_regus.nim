import topopebreptool_types
import ../toptools/toptools_types
import ../topods/topods_types





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



proc newTopOpeBRepToolREGUS*(): TopOpeBRepToolREGUS {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_REGUS(@)", header: "TopOpeBRepTool_REGUS.hxx".}
proc init*(this: var TopOpeBRepToolREGUS; s: TopoDS_Shape) {.cdecl, importcpp: "Init",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc s*(this: TopOpeBRepToolREGUS): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "S", header: "TopOpeBRepTool_REGUS.hxx".}
proc mapS*(this: var TopOpeBRepToolREGUS): bool {.cdecl, importcpp: "MapS",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc wireToFace*(fanc: TopoDS_Face; nWs: TopToolsListOfShape;
                nFs: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_REGUS::WireToFace(@)", header: "TopOpeBRepTool_REGUS.hxx".}
proc splitF*(fanc: TopoDS_Face; fSplits: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool_REGUS::SplitF(@)", header: "TopOpeBRepTool_REGUS.hxx".}
proc splitFaces*(this: var TopOpeBRepToolREGUS): bool {.cdecl,
    importcpp: "SplitFaces", header: "TopOpeBRepTool_REGUS.hxx".}
proc regu*(this: var TopOpeBRepToolREGUS): bool {.cdecl, importcpp: "REGU",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc setFsplits*(this: var TopOpeBRepToolREGUS;
                fsplits: var TopToolsDataMapOfShapeListOfShape) {.cdecl,
    importcpp: "SetFsplits", header: "TopOpeBRepTool_REGUS.hxx".}
proc getFsplits*(this: TopOpeBRepToolREGUS;
                fsplits: var TopToolsDataMapOfShapeListOfShape) {.noSideEffect,
    cdecl, importcpp: "GetFsplits", header: "TopOpeBRepTool_REGUS.hxx".}
proc setOshNsh*(this: var TopOpeBRepToolREGUS;
               oshNsh: var TopToolsDataMapOfShapeListOfShape) {.cdecl,
    importcpp: "SetOshNsh", header: "TopOpeBRepTool_REGUS.hxx".}
proc getOshNsh*(this: TopOpeBRepToolREGUS;
               oshNsh: var TopToolsDataMapOfShapeListOfShape) {.noSideEffect, cdecl,
    importcpp: "GetOshNsh", header: "TopOpeBRepTool_REGUS.hxx".}
proc initBlock*(this: var TopOpeBRepToolREGUS): bool {.cdecl, importcpp: "InitBlock",
    header: "TopOpeBRepTool_REGUS.hxx".}
proc nextinBlock*(this: var TopOpeBRepToolREGUS): bool {.cdecl,
    importcpp: "NextinBlock", header: "TopOpeBRepTool_REGUS.hxx".}
proc nearestF*(this: TopOpeBRepToolREGUS; e: TopoDS_Edge; lof: TopToolsListOfShape;
              ffound: var TopoDS_Face): bool {.noSideEffect, cdecl,
    importcpp: "NearestF", header: "TopOpeBRepTool_REGUS.hxx".}


