import breplib_types
import ../topods/topods_types
##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Computes the max distance between edge and its 2d representation on the face.
## ! This class is not intended to process non-sameparameter edges.

proc newBRepLib_CheckCurveOnSurface*(): BRepLib_CheckCurveOnSurface {.cdecl,
    constructor, importcpp: "BRepLib_CheckCurveOnSurface(@)".}
proc newBRepLib_CheckCurveOnSurface*(theEdge: TopoDS_Edge; theFace: TopoDS_Face): BRepLib_CheckCurveOnSurface {.
    cdecl, constructor, importcpp: "BRepLib_CheckCurveOnSurface(@)"
   .}
proc Init*(this: var BRepLib_CheckCurveOnSurface; theEdge: TopoDS_Edge;
          theFace: TopoDS_Face) {.cdecl, importcpp: "Init".}
proc Perform*(this: var BRepLib_CheckCurveOnSurface; isMultiThread: bool = false) {.
    cdecl, importcpp: "Perform".}
proc IsDone*(this: BRepLib_CheckCurveOnSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsDone".}
proc ErrorStatus*(this: BRepLib_CheckCurveOnSurface): cint {.noSideEffect, cdecl,
    importcpp: "ErrorStatus".}
proc MaxDistance*(this: BRepLib_CheckCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxDistance".}
proc MaxParameter*(this: BRepLib_CheckCurveOnSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxParameter".}