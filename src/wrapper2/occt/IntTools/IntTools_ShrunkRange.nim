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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Vertex,
  ../Standard/Standard_Real, ../Bnd/Bnd_Box, ../Standard/Standard_Integer

discard "forward decl of IntTools_Context"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of Bnd_Box"
type
  IntTools_ShrunkRange* {.importcpp: "IntTools_ShrunkRange",
                         header: "IntTools_ShrunkRange.hxx", bycopy.} = object


proc constructIntTools_ShrunkRange*(): IntTools_ShrunkRange {.constructor,
    importcpp: "IntTools_ShrunkRange(@)", header: "IntTools_ShrunkRange.hxx".}
proc destroyIntTools_ShrunkRange*(this: var IntTools_ShrunkRange) {.
    importcpp: "#.~IntTools_ShrunkRange()", header: "IntTools_ShrunkRange.hxx".}
proc SetData*(this: var IntTools_ShrunkRange; aE: TopoDS_Edge; aT1: Standard_Real;
             aT2: Standard_Real; aV1: TopoDS_Vertex; aV2: TopoDS_Vertex) {.
    importcpp: "SetData", header: "IntTools_ShrunkRange.hxx".}
proc SetContext*(this: var IntTools_ShrunkRange; aCtx: handle[IntTools_Context]) {.
    importcpp: "SetContext", header: "IntTools_ShrunkRange.hxx".}
proc Context*(this: IntTools_ShrunkRange): handle[IntTools_Context] {.noSideEffect,
    importcpp: "Context", header: "IntTools_ShrunkRange.hxx".}
proc SetShrunkRange*(this: var IntTools_ShrunkRange; aT1: Standard_Real;
                    aT2: Standard_Real) {.importcpp: "SetShrunkRange",
                                        header: "IntTools_ShrunkRange.hxx".}
proc ShrunkRange*(this: IntTools_ShrunkRange; aT1: var Standard_Real;
                 aT2: var Standard_Real) {.noSideEffect, importcpp: "ShrunkRange",
                                        header: "IntTools_ShrunkRange.hxx".}
proc BndBox*(this: IntTools_ShrunkRange): Bnd_Box {.noSideEffect,
    importcpp: "BndBox", header: "IntTools_ShrunkRange.hxx".}
proc Edge*(this: IntTools_ShrunkRange): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "IntTools_ShrunkRange.hxx".}
proc Perform*(this: var IntTools_ShrunkRange) {.importcpp: "Perform",
    header: "IntTools_ShrunkRange.hxx".}
proc IsDone*(this: IntTools_ShrunkRange): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntTools_ShrunkRange.hxx".}
proc IsSplittable*(this: IntTools_ShrunkRange): Standard_Boolean {.noSideEffect,
    importcpp: "IsSplittable", header: "IntTools_ShrunkRange.hxx".}
proc Length*(this: IntTools_ShrunkRange): Standard_Real {.noSideEffect,
    importcpp: "Length", header: "IntTools_ShrunkRange.hxx".}