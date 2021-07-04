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
  ../Extrema/Extrema_ExtCC, ../BRepAdaptor/BRepAdaptor_HCurve,
  ../Standard/Standard_DefineAlloc

discard "forward decl of BRepAdaptor_HCurve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
type
  BRepExtrema_ExtCC* {.importcpp: "BRepExtrema_ExtCC",
                      header: "BRepExtrema_ExtCC.hxx", bycopy.} = object


proc constructBRepExtrema_ExtCC*(): BRepExtrema_ExtCC {.constructor,
    importcpp: "BRepExtrema_ExtCC(@)", header: "BRepExtrema_ExtCC.hxx".}
proc constructBRepExtrema_ExtCC*(E1: TopoDS_Edge; E2: TopoDS_Edge): BRepExtrema_ExtCC {.
    constructor, importcpp: "BRepExtrema_ExtCC(@)", header: "BRepExtrema_ExtCC.hxx".}
proc Initialize*(this: var BRepExtrema_ExtCC; E2: TopoDS_Edge) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtCC.hxx".}
proc Perform*(this: var BRepExtrema_ExtCC; E1: TopoDS_Edge) {.importcpp: "Perform",
    header: "BRepExtrema_ExtCC.hxx".}
proc IsDone*(this: BRepExtrema_ExtCC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ExtCC.hxx".}
proc NbExt*(this: BRepExtrema_ExtCC): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "BRepExtrema_ExtCC.hxx".}
proc IsParallel*(this: BRepExtrema_ExtCC): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "BRepExtrema_ExtCC.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtCC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "BRepExtrema_ExtCC.hxx".}
proc ParameterOnE1*(this: BRepExtrema_ExtCC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "ParameterOnE1", header: "BRepExtrema_ExtCC.hxx".}
proc PointOnE1*(this: BRepExtrema_ExtCC; N: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "PointOnE1", header: "BRepExtrema_ExtCC.hxx".}
proc ParameterOnE2*(this: BRepExtrema_ExtCC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "ParameterOnE2", header: "BRepExtrema_ExtCC.hxx".}
proc PointOnE2*(this: BRepExtrema_ExtCC; N: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "PointOnE2", header: "BRepExtrema_ExtCC.hxx".}
proc TrimmedSquareDistances*(this: BRepExtrema_ExtCC; dist11: var Standard_Real;
                            distP12: var Standard_Real; distP21: var Standard_Real;
                            distP22: var Standard_Real; P11: var gp_Pnt;
                            P12: var gp_Pnt; P21: var gp_Pnt; P22: var gp_Pnt) {.
    noSideEffect, importcpp: "TrimmedSquareDistances",
    header: "BRepExtrema_ExtCC.hxx".}