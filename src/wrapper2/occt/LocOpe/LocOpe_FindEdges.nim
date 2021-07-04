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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_ListIteratorOfListOfShape, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
type
  LocOpe_FindEdges* {.importcpp: "LocOpe_FindEdges",
                     header: "LocOpe_FindEdges.hxx", bycopy.} = object


proc constructLocOpe_FindEdges*(): LocOpe_FindEdges {.constructor,
    importcpp: "LocOpe_FindEdges(@)", header: "LocOpe_FindEdges.hxx".}
proc constructLocOpe_FindEdges*(FFrom: TopoDS_Shape; FTo: TopoDS_Shape): LocOpe_FindEdges {.
    constructor, importcpp: "LocOpe_FindEdges(@)", header: "LocOpe_FindEdges.hxx".}
proc Set*(this: var LocOpe_FindEdges; FFrom: TopoDS_Shape; FTo: TopoDS_Shape) {.
    importcpp: "Set", header: "LocOpe_FindEdges.hxx".}
proc InitIterator*(this: var LocOpe_FindEdges) {.importcpp: "InitIterator",
    header: "LocOpe_FindEdges.hxx".}
proc More*(this: LocOpe_FindEdges): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "LocOpe_FindEdges.hxx".}
proc EdgeFrom*(this: LocOpe_FindEdges): TopoDS_Edge {.noSideEffect,
    importcpp: "EdgeFrom", header: "LocOpe_FindEdges.hxx".}
proc EdgeTo*(this: LocOpe_FindEdges): TopoDS_Edge {.noSideEffect,
    importcpp: "EdgeTo", header: "LocOpe_FindEdges.hxx".}
proc Next*(this: var LocOpe_FindEdges) {.importcpp: "Next",
                                     header: "LocOpe_FindEdges.hxx".}