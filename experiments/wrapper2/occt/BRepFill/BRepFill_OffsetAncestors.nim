##  Created on: 1995-09-01
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of BRepFill_OffsetWire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
type
  BRepFillOffsetAncestors* {.importcpp: "BRepFill_OffsetAncestors",
                            header: "BRepFill_OffsetAncestors.hxx", bycopy.} = object


proc constructBRepFillOffsetAncestors*(): BRepFillOffsetAncestors {.constructor,
    importcpp: "BRepFill_OffsetAncestors(@)",
    header: "BRepFill_OffsetAncestors.hxx".}
proc constructBRepFillOffsetAncestors*(paral: var BRepFillOffsetWire): BRepFillOffsetAncestors {.
    constructor, importcpp: "BRepFill_OffsetAncestors(@)",
    header: "BRepFill_OffsetAncestors.hxx".}
proc perform*(this: var BRepFillOffsetAncestors; paral: var BRepFillOffsetWire) {.
    importcpp: "Perform", header: "BRepFill_OffsetAncestors.hxx".}
proc isDone*(this: BRepFillOffsetAncestors): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_OffsetAncestors.hxx".}
proc hasAncestor*(this: BRepFillOffsetAncestors; s1: TopoDS_Edge): bool {.
    noSideEffect, importcpp: "HasAncestor", header: "BRepFill_OffsetAncestors.hxx".}
proc ancestor*(this: BRepFillOffsetAncestors; s1: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Ancestor", header: "BRepFill_OffsetAncestors.hxx".}

























