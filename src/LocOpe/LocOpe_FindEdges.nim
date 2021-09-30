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
discard "forward decl of TopoDS_Edge"
type
  LocOpeFindEdges* {.importcpp: "LocOpe_FindEdges", header: "LocOpe_FindEdges.hxx",
                    bycopy.} = object


proc constructLocOpeFindEdges*(): LocOpeFindEdges {.constructor,
    importcpp: "LocOpe_FindEdges(@)", header: "LocOpe_FindEdges.hxx".}
proc constructLocOpeFindEdges*(fFrom: TopoDS_Shape; fTo: TopoDS_Shape): LocOpeFindEdges {.
    constructor, importcpp: "LocOpe_FindEdges(@)", header: "LocOpe_FindEdges.hxx".}
proc set*(this: var LocOpeFindEdges; fFrom: TopoDS_Shape; fTo: TopoDS_Shape) {.
    importcpp: "Set", header: "LocOpe_FindEdges.hxx".}
proc initIterator*(this: var LocOpeFindEdges) {.importcpp: "InitIterator",
    header: "LocOpe_FindEdges.hxx".}
proc more*(this: LocOpeFindEdges): bool {.noSideEffect, importcpp: "More",
                                      header: "LocOpe_FindEdges.hxx".}
proc edgeFrom*(this: LocOpeFindEdges): TopoDS_Edge {.noSideEffect,
    importcpp: "EdgeFrom", header: "LocOpe_FindEdges.hxx".}
proc edgeTo*(this: LocOpeFindEdges): TopoDS_Edge {.noSideEffect, importcpp: "EdgeTo",
    header: "LocOpe_FindEdges.hxx".}
proc next*(this: var LocOpeFindEdges) {.importcpp: "Next",
                                    header: "LocOpe_FindEdges.hxx".}

























