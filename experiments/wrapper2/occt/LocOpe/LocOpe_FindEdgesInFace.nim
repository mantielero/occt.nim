##  Created on: 1996-02-15
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  LocOpeFindEdgesInFace* {.importcpp: "LocOpe_FindEdgesInFace",
                          header: "LocOpe_FindEdgesInFace.hxx", bycopy.} = object


proc constructLocOpeFindEdgesInFace*(): LocOpeFindEdgesInFace {.constructor,
    importcpp: "LocOpe_FindEdgesInFace(@)", header: "LocOpe_FindEdgesInFace.hxx".}
proc constructLocOpeFindEdgesInFace*(s: TopoDS_Shape; f: TopoDS_Face): LocOpeFindEdgesInFace {.
    constructor, importcpp: "LocOpe_FindEdgesInFace(@)",
    header: "LocOpe_FindEdgesInFace.hxx".}
proc set*(this: var LocOpeFindEdgesInFace; s: TopoDS_Shape; f: TopoDS_Face) {.
    importcpp: "Set", header: "LocOpe_FindEdgesInFace.hxx".}
proc init*(this: var LocOpeFindEdgesInFace) {.importcpp: "Init",
    header: "LocOpe_FindEdgesInFace.hxx".}
proc more*(this: LocOpeFindEdgesInFace): bool {.noSideEffect, importcpp: "More",
    header: "LocOpe_FindEdgesInFace.hxx".}
proc edge*(this: LocOpeFindEdgesInFace): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "LocOpe_FindEdgesInFace.hxx".}
proc next*(this: var LocOpeFindEdgesInFace) {.importcpp: "Next",
    header: "LocOpe_FindEdgesInFace.hxx".}
