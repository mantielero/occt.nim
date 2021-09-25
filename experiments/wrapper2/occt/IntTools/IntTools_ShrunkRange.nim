##  Created by: Peter KURNEV
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

discard "forward decl of IntTools_Context"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of Bnd_Box"
type
  IntToolsShrunkRange* {.importcpp: "IntTools_ShrunkRange",
                        header: "IntTools_ShrunkRange.hxx", bycopy.} = object


proc constructIntToolsShrunkRange*(): IntToolsShrunkRange {.constructor,
    importcpp: "IntTools_ShrunkRange(@)", header: "IntTools_ShrunkRange.hxx".}
proc destroyIntToolsShrunkRange*(this: var IntToolsShrunkRange) {.
    importcpp: "#.~IntTools_ShrunkRange()", header: "IntTools_ShrunkRange.hxx".}
proc setData*(this: var IntToolsShrunkRange; aE: TopoDS_Edge; aT1: float; aT2: float;
             aV1: TopoDS_Vertex; aV2: TopoDS_Vertex) {.importcpp: "SetData",
    header: "IntTools_ShrunkRange.hxx".}
proc setContext*(this: var IntToolsShrunkRange; aCtx: Handle[IntToolsContext]) {.
    importcpp: "SetContext", header: "IntTools_ShrunkRange.hxx".}
proc context*(this: IntToolsShrunkRange): Handle[IntToolsContext] {.noSideEffect,
    importcpp: "Context", header: "IntTools_ShrunkRange.hxx".}
proc setShrunkRange*(this: var IntToolsShrunkRange; aT1: float; aT2: float) {.
    importcpp: "SetShrunkRange", header: "IntTools_ShrunkRange.hxx".}
proc shrunkRange*(this: IntToolsShrunkRange; aT1: var float; aT2: var float) {.
    noSideEffect, importcpp: "ShrunkRange", header: "IntTools_ShrunkRange.hxx".}
proc bndBox*(this: IntToolsShrunkRange): BndBox {.noSideEffect, importcpp: "BndBox",
    header: "IntTools_ShrunkRange.hxx".}
proc edge*(this: IntToolsShrunkRange): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "IntTools_ShrunkRange.hxx".}
proc perform*(this: var IntToolsShrunkRange) {.importcpp: "Perform",
    header: "IntTools_ShrunkRange.hxx".}
proc isDone*(this: IntToolsShrunkRange): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntTools_ShrunkRange.hxx".}
proc isSplittable*(this: IntToolsShrunkRange): bool {.noSideEffect,
    importcpp: "IsSplittable", header: "IntTools_ShrunkRange.hxx".}
proc length*(this: IntToolsShrunkRange): float {.noSideEffect, importcpp: "Length",
    header: "IntTools_ShrunkRange.hxx".}
