import brepextrema_types

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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"

proc newBRepExtrema_ExtCF*(): BRepExtrema_ExtCF {.cdecl, constructor,
    importcpp: "BRepExtrema_ExtCF(@)", header: "BRepExtrema_ExtCF.hxx".}
proc newBRepExtrema_ExtCF*(E: TopoDS_Edge; F: TopoDS_Face): BRepExtrema_ExtCF {.cdecl,
    constructor, importcpp: "BRepExtrema_ExtCF(@)", header: "BRepExtrema_ExtCF.hxx".}
proc Initialize*(this: var BRepExtrema_ExtCF; E: TopoDS_Edge; F: TopoDS_Face) {.cdecl,
    importcpp: "Initialize", header: "BRepExtrema_ExtCF.hxx".}
proc Perform*(this: var BRepExtrema_ExtCF; E: TopoDS_Edge; F: TopoDS_Face) {.cdecl,
    importcpp: "Perform", header: "BRepExtrema_ExtCF.hxx".}
proc IsDone*(this: BRepExtrema_ExtCF): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_ExtCF.hxx".}
proc NbExt*(this: BRepExtrema_ExtCF): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "BRepExtrema_ExtCF.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtCF; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "BRepExtrema_ExtCF.hxx".}
proc IsParallel*(this: BRepExtrema_ExtCF): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "BRepExtrema_ExtCF.hxx".}
proc ParameterOnEdge*(this: BRepExtrema_ExtCF; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnEdge", header: "BRepExtrema_ExtCF.hxx".}
proc ParameterOnFace*(this: BRepExtrema_ExtCF; N: cint; U: var cfloat; V: var cfloat) {.
    noSideEffect, cdecl, importcpp: "ParameterOnFace",
    header: "BRepExtrema_ExtCF.hxx".}
proc PointOnEdge*(this: BRepExtrema_ExtCF; N: cint): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnEdge", header: "BRepExtrema_ExtCF.hxx".}
proc PointOnFace*(this: BRepExtrema_ExtCF; N: cint): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnFace", header: "BRepExtrema_ExtCF.hxx".}