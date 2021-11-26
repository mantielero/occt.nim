##  Created on: 1999-01-14
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
type
  TopOpeBRepToolFace* {.importcpp: "TopOpeBRepTool_face",
                       header: "TopOpeBRepTool_face.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepToolFace; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_face::operator new",
    header: "TopOpeBRepTool_face.hxx".}
proc `delete`*(this: var TopOpeBRepToolFace; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_face::operator delete",
    header: "TopOpeBRepTool_face.hxx".}
proc `new[]`*(this: var TopOpeBRepToolFace; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_face::operator new[]",
    header: "TopOpeBRepTool_face.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolFace; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_face::operator delete[]",
    header: "TopOpeBRepTool_face.hxx".}
proc `new`*(this: var TopOpeBRepToolFace; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_face::operator new",
    header: "TopOpeBRepTool_face.hxx".}
proc `delete`*(this: var TopOpeBRepToolFace; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_face::operator delete",
    header: "TopOpeBRepTool_face.hxx".}
proc constructTopOpeBRepToolFace*(): TopOpeBRepToolFace {.constructor,
    importcpp: "TopOpeBRepTool_face(@)", header: "TopOpeBRepTool_face.hxx".}
proc init*(this: var TopOpeBRepToolFace; w: TopoDS_Wire; fref: TopoDS_Face): StandardBoolean {.
    importcpp: "Init", header: "TopOpeBRepTool_face.hxx".}
proc w*(this: TopOpeBRepToolFace): TopoDS_Wire {.noSideEffect, importcpp: "W",
    header: "TopOpeBRepTool_face.hxx".}
proc isDone*(this: TopOpeBRepToolFace): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "TopOpeBRepTool_face.hxx".}
proc finite*(this: TopOpeBRepToolFace): StandardBoolean {.noSideEffect,
    importcpp: "Finite", header: "TopOpeBRepTool_face.hxx".}
proc ffinite*(this: TopOpeBRepToolFace): TopoDS_Face {.noSideEffect,
    importcpp: "Ffinite", header: "TopOpeBRepTool_face.hxx".}
proc realF*(this: TopOpeBRepToolFace): TopoDS_Face {.noSideEffect,
    importcpp: "RealF", header: "TopOpeBRepTool_face.hxx".}