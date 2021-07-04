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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Wire,
  ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Face

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
type
  TopOpeBRepTool_face* {.importcpp: "TopOpeBRepTool_face",
                        header: "TopOpeBRepTool_face.hxx", bycopy.} = object


proc constructTopOpeBRepTool_face*(): TopOpeBRepTool_face {.constructor,
    importcpp: "TopOpeBRepTool_face(@)", header: "TopOpeBRepTool_face.hxx".}
proc Init*(this: var TopOpeBRepTool_face; W: TopoDS_Wire; Fref: TopoDS_Face): Standard_Boolean {.
    importcpp: "Init", header: "TopOpeBRepTool_face.hxx".}
proc W*(this: TopOpeBRepTool_face): TopoDS_Wire {.noSideEffect, importcpp: "W",
    header: "TopOpeBRepTool_face.hxx".}
proc IsDone*(this: TopOpeBRepTool_face): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "TopOpeBRepTool_face.hxx".}
proc Finite*(this: TopOpeBRepTool_face): Standard_Boolean {.noSideEffect,
    importcpp: "Finite", header: "TopOpeBRepTool_face.hxx".}
proc Ffinite*(this: TopOpeBRepTool_face): TopoDS_Face {.noSideEffect,
    importcpp: "Ffinite", header: "TopOpeBRepTool_face.hxx".}
proc RealF*(this: TopOpeBRepTool_face): TopoDS_Face {.noSideEffect,
    importcpp: "RealF", header: "TopOpeBRepTool_face.hxx".}