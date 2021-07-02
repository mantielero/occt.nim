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

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepExtremaExtCF* {.importcpp: "BRepExtrema_ExtCF",
                     header: "BRepExtrema_ExtCF.hxx", bycopy.} = object


proc constructBRepExtremaExtCF*(): BRepExtremaExtCF {.constructor,
    importcpp: "BRepExtrema_ExtCF(@)", header: "BRepExtrema_ExtCF.hxx".}
proc constructBRepExtremaExtCF*(e: TopoDS_Edge; f: TopoDS_Face): BRepExtremaExtCF {.
    constructor, importcpp: "BRepExtrema_ExtCF(@)", header: "BRepExtrema_ExtCF.hxx".}
proc initialize*(this: var BRepExtremaExtCF; e: TopoDS_Edge; f: TopoDS_Face) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtCF.hxx".}
proc perform*(this: var BRepExtremaExtCF; e: TopoDS_Edge; f: TopoDS_Face) {.
    importcpp: "Perform", header: "BRepExtrema_ExtCF.hxx".}
proc isDone*(this: BRepExtremaExtCF): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ExtCF.hxx".}
proc nbExt*(this: BRepExtremaExtCF): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "BRepExtrema_ExtCF.hxx".}
proc squareDistance*(this: BRepExtremaExtCF; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "BRepExtrema_ExtCF.hxx".}
proc isParallel*(this: BRepExtremaExtCF): StandardBoolean {.noSideEffect,
    importcpp: "IsParallel", header: "BRepExtrema_ExtCF.hxx".}
proc parameterOnEdge*(this: BRepExtremaExtCF; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "ParameterOnEdge", header: "BRepExtrema_ExtCF.hxx".}
proc parameterOnFace*(this: BRepExtremaExtCF; n: StandardInteger;
                     u: var StandardReal; v: var StandardReal) {.noSideEffect,
    importcpp: "ParameterOnFace", header: "BRepExtrema_ExtCF.hxx".}
proc pointOnEdge*(this: BRepExtremaExtCF; n: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "PointOnEdge", header: "BRepExtrema_ExtCF.hxx".}
proc pointOnFace*(this: BRepExtremaExtCF; n: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "PointOnFace", header: "BRepExtrema_ExtCF.hxx".}

