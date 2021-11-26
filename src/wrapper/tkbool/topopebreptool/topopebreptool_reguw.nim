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


proc newTopOpeBRepToolREGUW*(fRef: TopoDS_Face): TopOpeBRepToolREGUW {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_REGUW(@)", dynlib: tkbool.}
proc fref*(this: TopOpeBRepToolREGUW): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Fref", dynlib: tkbool.}
proc setEsplits*(this: var TopOpeBRepToolREGUW;
                esplits: var TopToolsDataMapOfShapeListOfShape) {.cdecl,
    importcpp: "SetEsplits", dynlib: tkbool.}
proc getEsplits*(this: TopOpeBRepToolREGUW;
                esplits: var TopToolsDataMapOfShapeListOfShape) {.noSideEffect,
    cdecl, importcpp: "GetEsplits", dynlib: tkbool.}
proc setOwNw*(this: var TopOpeBRepToolREGUW;
             owNw: var TopToolsDataMapOfShapeListOfShape) {.cdecl,
    importcpp: "SetOwNw", dynlib: tkbool.}
proc getOwNw*(this: TopOpeBRepToolREGUW;
             owNw: var TopToolsDataMapOfShapeListOfShape) {.noSideEffect, cdecl,
    importcpp: "GetOwNw", dynlib: tkbool.}
proc splitEds*(this: var TopOpeBRepToolREGUW): bool {.cdecl, importcpp: "SplitEds",
    dynlib: tkbool.}
proc init*(this: var TopOpeBRepToolREGUW; s: TopoDS_Shape) {.cdecl, importcpp: "Init",
    dynlib: tkbool.}
proc s*(this: TopOpeBRepToolREGUW): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "S", dynlib: tkbool.}
proc hasInit*(this: TopOpeBRepToolREGUW): bool {.noSideEffect, cdecl,
    importcpp: "HasInit", dynlib: tkbool.}
proc mapS*(this: var TopOpeBRepToolREGUW): bool {.cdecl, importcpp: "MapS",
    dynlib: tkbool.}
proc regu*(this: var TopOpeBRepToolREGUW; istep: cint; scur: TopoDS_Shape;
          splits: var TopToolsListOfShape): bool {.cdecl, importcpp: "REGU",
    dynlib: tkbool.}
proc regu*(this: var TopOpeBRepToolREGUW): bool {.cdecl, importcpp: "REGU",
    dynlib: tkbool.}
proc getSplits*(this: TopOpeBRepToolREGUW; splits: var TopToolsListOfShape): bool {.
    noSideEffect, cdecl, importcpp: "GetSplits", dynlib: tkbool.}
proc initBlock*(this: var TopOpeBRepToolREGUW): bool {.cdecl, importcpp: "InitBlock",
    dynlib: tkbool.}
proc nextinBlock*(this: var TopOpeBRepToolREGUW): bool {.cdecl,
    importcpp: "NextinBlock", dynlib: tkbool.}
proc nearestE*(this: TopOpeBRepToolREGUW; loe: TopToolsListOfShape;
              efound: var TopoDS_Edge): bool {.noSideEffect, cdecl,
    importcpp: "NearestE", dynlib: tkbool.}
proc connexity*(this: TopOpeBRepToolREGUW; v: TopoDS_Vertex;
               co: var TopOpeBRepToolConnexity): bool {.noSideEffect, cdecl,
    importcpp: "Connexity", dynlib: tkbool.}
proc addNewConnexity*(this: var TopOpeBRepToolREGUW; v: TopoDS_Vertex; oriKey: cint;
                     e: TopoDS_Edge): bool {.cdecl, importcpp: "AddNewConnexity",
    dynlib: tkbool.}
proc removeOldConnexity*(this: var TopOpeBRepToolREGUW; v: TopoDS_Vertex;
                        oriKey: cint; e: TopoDS_Edge): bool {.cdecl,
    importcpp: "RemoveOldConnexity", dynlib: tkbool.}
proc updateMultiple*(this: var TopOpeBRepToolREGUW; v: TopoDS_Vertex): bool {.cdecl,
    importcpp: "UpdateMultiple", dynlib: tkbool.}