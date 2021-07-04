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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_DataMapOfShapeShape

discard "forward decl of StdFail_NotDone"
discard "forward decl of BRepFill_OffsetWire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
type
  BRepFill_OffsetAncestors* {.importcpp: "BRepFill_OffsetAncestors",
                             header: "BRepFill_OffsetAncestors.hxx", bycopy.} = object


proc constructBRepFill_OffsetAncestors*(): BRepFill_OffsetAncestors {.constructor,
    importcpp: "BRepFill_OffsetAncestors(@)",
    header: "BRepFill_OffsetAncestors.hxx".}
proc constructBRepFill_OffsetAncestors*(Paral: var BRepFill_OffsetWire): BRepFill_OffsetAncestors {.
    constructor, importcpp: "BRepFill_OffsetAncestors(@)",
    header: "BRepFill_OffsetAncestors.hxx".}
proc Perform*(this: var BRepFill_OffsetAncestors; Paral: var BRepFill_OffsetWire) {.
    importcpp: "Perform", header: "BRepFill_OffsetAncestors.hxx".}
proc IsDone*(this: BRepFill_OffsetAncestors): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_OffsetAncestors.hxx".}
proc HasAncestor*(this: BRepFill_OffsetAncestors; S1: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "HasAncestor", header: "BRepFill_OffsetAncestors.hxx".}
proc Ancestor*(this: BRepFill_OffsetAncestors; S1: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Ancestor", header: "BRepFill_OffsetAncestors.hxx".}