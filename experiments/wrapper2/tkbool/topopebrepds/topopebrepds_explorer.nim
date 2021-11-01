##  Created on: 1999-01-05
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  TopOpeBRepDS_Explorer* {.importcpp: "TopOpeBRepDS_Explorer",
                          header: "TopOpeBRepDS_Explorer.hxx", bycopy.} = object


proc newTopOpeBRepDS_Explorer*(): TopOpeBRepDS_Explorer {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_Explorer(@)", dynlib: tkbool.}
proc newTopOpeBRepDS_Explorer*(hds: Handle[TopOpeBRepDS_HDataStructure];
                              t: TopAbsShapeEnum = topAbsSHAPE;
                              findkeep: bool = true): TopOpeBRepDS_Explorer {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_Explorer(@)", dynlib: tkbool.}
proc init*(this: var TopOpeBRepDS_Explorer;
          hds: Handle[TopOpeBRepDS_HDataStructure];
          t: TopAbsShapeEnum = topAbsSHAPE; findkeep: bool = true) {.cdecl,
    importcpp: "Init", dynlib: tkbool.}
proc `type`*(this: TopOpeBRepDS_Explorer): TopAbsShapeEnum {.noSideEffect, cdecl,
    importcpp: "Type", dynlib: tkbool.}
proc more*(this: TopOpeBRepDS_Explorer): bool {.noSideEffect, cdecl,
    importcpp: "More", dynlib: tkbool.}
proc next*(this: var TopOpeBRepDS_Explorer) {.cdecl, importcpp: "Next", dynlib: tkbool.}
proc current*(this: TopOpeBRepDS_Explorer): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Current", dynlib: tkbool.}
proc index*(this: TopOpeBRepDS_Explorer): cint {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkbool.}
proc face*(this: TopOpeBRepDS_Explorer): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkbool.}
proc edge*(this: TopOpeBRepDS_Explorer): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", dynlib: tkbool.}
proc vertex*(this: TopOpeBRepDS_Explorer): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex", dynlib: tkbool.}