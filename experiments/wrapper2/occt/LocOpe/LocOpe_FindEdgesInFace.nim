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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_ListIteratorOfListOfShape, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  LocOpe_FindEdgesInFace* {.importcpp: "LocOpe_FindEdgesInFace",
                           header: "LocOpe_FindEdgesInFace.hxx", bycopy.} = object


proc constructLocOpe_FindEdgesInFace*(): LocOpe_FindEdgesInFace {.constructor,
    importcpp: "LocOpe_FindEdgesInFace(@)", header: "LocOpe_FindEdgesInFace.hxx".}
proc constructLocOpe_FindEdgesInFace*(S: TopoDS_Shape; F: TopoDS_Face): LocOpe_FindEdgesInFace {.
    constructor, importcpp: "LocOpe_FindEdgesInFace(@)",
    header: "LocOpe_FindEdgesInFace.hxx".}
proc Set*(this: var LocOpe_FindEdgesInFace; S: TopoDS_Shape; F: TopoDS_Face) {.
    importcpp: "Set", header: "LocOpe_FindEdgesInFace.hxx".}
proc Init*(this: var LocOpe_FindEdgesInFace) {.importcpp: "Init",
    header: "LocOpe_FindEdgesInFace.hxx".}
proc More*(this: LocOpe_FindEdgesInFace): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "LocOpe_FindEdgesInFace.hxx".}
proc Edge*(this: LocOpe_FindEdgesInFace): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "LocOpe_FindEdgesInFace.hxx".}
proc Next*(this: var LocOpe_FindEdgesInFace) {.importcpp: "Next",
    header: "LocOpe_FindEdgesInFace.hxx".}