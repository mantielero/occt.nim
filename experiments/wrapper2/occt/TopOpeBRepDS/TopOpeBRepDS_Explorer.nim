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


proc `new`*(this: var TopOpeBRepDS_Explorer; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_Explorer::operator new",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc `delete`*(this: var TopOpeBRepDS_Explorer; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_Explorer::operator delete",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_Explorer; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_Explorer::operator new[]",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_Explorer; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_Explorer::operator delete[]",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc `new`*(this: var TopOpeBRepDS_Explorer; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_Explorer::operator new",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc `delete`*(this: var TopOpeBRepDS_Explorer; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_Explorer::operator delete",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc constructTopOpeBRepDS_Explorer*(): TopOpeBRepDS_Explorer {.constructor,
    importcpp: "TopOpeBRepDS_Explorer(@)", header: "TopOpeBRepDS_Explorer.hxx".}
proc constructTopOpeBRepDS_Explorer*(hds: Handle[TopOpeBRepDS_HDataStructure];
                                    t: TopAbsShapeEnum = topAbsSHAPE;
                                    findkeep: StandardBoolean = true): TopOpeBRepDS_Explorer {.
    constructor, importcpp: "TopOpeBRepDS_Explorer(@)",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc init*(this: var TopOpeBRepDS_Explorer;
          hds: Handle[TopOpeBRepDS_HDataStructure];
          t: TopAbsShapeEnum = topAbsSHAPE; findkeep: StandardBoolean = true) {.
    importcpp: "Init", header: "TopOpeBRepDS_Explorer.hxx".}
proc `type`*(this: TopOpeBRepDS_Explorer): TopAbsShapeEnum {.noSideEffect,
    importcpp: "Type", header: "TopOpeBRepDS_Explorer.hxx".}
proc more*(this: TopOpeBRepDS_Explorer): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepDS_Explorer.hxx".}
proc next*(this: var TopOpeBRepDS_Explorer) {.importcpp: "Next",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc current*(this: TopOpeBRepDS_Explorer): TopoDS_Shape {.noSideEffect,
    importcpp: "Current", header: "TopOpeBRepDS_Explorer.hxx".}
proc index*(this: TopOpeBRepDS_Explorer): int {.noSideEffect, importcpp: "Index",
    header: "TopOpeBRepDS_Explorer.hxx".}
proc face*(this: TopOpeBRepDS_Explorer): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRepDS_Explorer.hxx".}
proc edge*(this: TopOpeBRepDS_Explorer): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "TopOpeBRepDS_Explorer.hxx".}
proc vertex*(this: TopOpeBRepDS_Explorer): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "TopOpeBRepDS_Explorer.hxx".}