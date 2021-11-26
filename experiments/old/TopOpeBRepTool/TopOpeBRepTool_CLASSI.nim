##  Created on: 1999-01-13
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box2d"
discard "forward decl of TopOpeBRepTool_face"
type
  TopOpeBRepToolCLASSI* {.importcpp: "TopOpeBRepTool_CLASSI",
                         header: "TopOpeBRepTool_CLASSI.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepToolCLASSI; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_CLASSI::operator new",
    header: "TopOpeBRepTool_CLASSI.hxx".}
proc `delete`*(this: var TopOpeBRepToolCLASSI; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_CLASSI::operator delete",
    header: "TopOpeBRepTool_CLASSI.hxx".}
proc `new[]`*(this: var TopOpeBRepToolCLASSI; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_CLASSI::operator new[]",
    header: "TopOpeBRepTool_CLASSI.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolCLASSI; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_CLASSI::operator delete[]",
    header: "TopOpeBRepTool_CLASSI.hxx".}
proc `new`*(this: var TopOpeBRepToolCLASSI; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_CLASSI::operator new",
    header: "TopOpeBRepTool_CLASSI.hxx".}
proc `delete`*(this: var TopOpeBRepToolCLASSI; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_CLASSI::operator delete",
    header: "TopOpeBRepTool_CLASSI.hxx".}
proc constructTopOpeBRepToolCLASSI*(): TopOpeBRepToolCLASSI {.constructor,
    importcpp: "TopOpeBRepTool_CLASSI(@)", header: "TopOpeBRepTool_CLASSI.hxx".}
proc init2d*(this: var TopOpeBRepToolCLASSI; fref: TopoDS_Face) {.importcpp: "Init2d",
    header: "TopOpeBRepTool_CLASSI.hxx".}
proc hasInit2d*(this: TopOpeBRepToolCLASSI): StandardBoolean {.noSideEffect,
    importcpp: "HasInit2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc add2d*(this: var TopOpeBRepToolCLASSI; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "Add2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc getBox2d*(this: var TopOpeBRepToolCLASSI; s: TopoDS_Shape; box2d: var BndBox2d): StandardBoolean {.
    importcpp: "GetBox2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc classiBnd2d*(this: var TopOpeBRepToolCLASSI; s1: TopoDS_Shape; s2: TopoDS_Shape;
                 tol: StandardReal; checklarge: StandardBoolean): int {.
    importcpp: "ClassiBnd2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc classip2d*(this: var TopOpeBRepToolCLASSI; s1: TopoDS_Shape; s2: TopoDS_Shape;
               stabnd2d12: int): int {.importcpp: "Classip2d",
                                    header: "TopOpeBRepTool_CLASSI.hxx".}
proc getface*(this: TopOpeBRepToolCLASSI; s: TopoDS_Shape; fa: var TopOpeBRepToolFace): StandardBoolean {.
    noSideEffect, importcpp: "Getface", header: "TopOpeBRepTool_CLASSI.hxx".}
proc classilist*(this: var TopOpeBRepToolCLASSI; lS: TopToolsListOfShape;
                mapgreasma: var TopToolsDataMapOfShapeListOfShape): StandardBoolean {.
    importcpp: "Classilist", header: "TopOpeBRepTool_CLASSI.hxx".}