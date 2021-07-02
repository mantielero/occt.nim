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

discard "forward decl of BRepAdaptor_HCurve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
type
  BRepExtremaExtCC* {.importcpp: "BRepExtrema_ExtCC",
                     header: "BRepExtrema_ExtCC.hxx", bycopy.} = object


proc constructBRepExtremaExtCC*(): BRepExtremaExtCC {.constructor,
    importcpp: "BRepExtrema_ExtCC(@)", header: "BRepExtrema_ExtCC.hxx".}
proc constructBRepExtremaExtCC*(e1: TopoDS_Edge; e2: TopoDS_Edge): BRepExtremaExtCC {.
    constructor, importcpp: "BRepExtrema_ExtCC(@)", header: "BRepExtrema_ExtCC.hxx".}
proc initialize*(this: var BRepExtremaExtCC; e2: TopoDS_Edge) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtCC.hxx".}
proc perform*(this: var BRepExtremaExtCC; e1: TopoDS_Edge) {.importcpp: "Perform",
    header: "BRepExtrema_ExtCC.hxx".}
proc isDone*(this: BRepExtremaExtCC): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ExtCC.hxx".}
proc nbExt*(this: BRepExtremaExtCC): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "BRepExtrema_ExtCC.hxx".}
proc isParallel*(this: BRepExtremaExtCC): StandardBoolean {.noSideEffect,
    importcpp: "IsParallel", header: "BRepExtrema_ExtCC.hxx".}
proc squareDistance*(this: BRepExtremaExtCC; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "BRepExtrema_ExtCC.hxx".}
proc parameterOnE1*(this: BRepExtremaExtCC; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "ParameterOnE1", header: "BRepExtrema_ExtCC.hxx".}
proc pointOnE1*(this: BRepExtremaExtCC; n: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "PointOnE1", header: "BRepExtrema_ExtCC.hxx".}
proc parameterOnE2*(this: BRepExtremaExtCC; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "ParameterOnE2", header: "BRepExtrema_ExtCC.hxx".}
proc pointOnE2*(this: BRepExtremaExtCC; n: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "PointOnE2", header: "BRepExtrema_ExtCC.hxx".}
proc trimmedSquareDistances*(this: BRepExtremaExtCC; dist11: var StandardReal;
                            distP12: var StandardReal; distP21: var StandardReal;
                            distP22: var StandardReal; p11: var GpPnt; p12: var GpPnt;
                            p21: var GpPnt; p22: var GpPnt) {.noSideEffect,
    importcpp: "TrimmedSquareDistances", header: "BRepExtrema_ExtCC.hxx".}

