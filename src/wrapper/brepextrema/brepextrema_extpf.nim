import brepextrema_types
import ../topods/topods_types
import ../extrema/extrema_types
import ../gp/gp_types
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

discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"

proc newBRepExtrema_ExtPF*(): BRepExtrema_ExtPF {.cdecl, constructor,
    importcpp: "BRepExtrema_ExtPF(@)", header: "BRepExtrema_ExtPF.hxx".}
proc newBRepExtrema_ExtPF*(TheVertex: TopoDS_Vertex; TheFace: TopoDS_Face;
                          TheFlag: Extrema_ExtFlag = extremaExtFlagMINMAX;
                          TheAlgo: Extrema_ExtAlgo = extremaExtAlgoGrad): BRepExtrema_ExtPF {.
    cdecl, constructor, importcpp: "BRepExtrema_ExtPF(@)",
    header: "BRepExtrema_ExtPF.hxx".}
proc Initialize*(this: var BRepExtrema_ExtPF; TheFace: TopoDS_Face;
                TheFlag: Extrema_ExtFlag = extremaExtFlagMINMAX;
                TheAlgo: Extrema_ExtAlgo = extremaExtAlgoGrad) {.cdecl,
    importcpp: "Initialize", header: "BRepExtrema_ExtPF.hxx".}
proc Perform*(this: var BRepExtrema_ExtPF; TheVertex: TopoDS_Vertex;
             TheFace: TopoDS_Face) {.cdecl, importcpp: "Perform",
                                   header: "BRepExtrema_ExtPF.hxx".}
proc IsDone*(this: BRepExtrema_ExtPF): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_ExtPF.hxx".}
proc NbExt*(this: BRepExtrema_ExtPF): cint {.noSideEffect, cdecl, importcpp: "NbExt",
    header: "BRepExtrema_ExtPF.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtPF; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "BRepExtrema_ExtPF.hxx".}
proc Parameter*(this: BRepExtrema_ExtPF; N: cint; U: var cfloat; V: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameter", header: "BRepExtrema_ExtPF.hxx".}
proc Point*(this: BRepExtrema_ExtPF; N: cint): PntObj {.noSideEffect, cdecl,
    importcpp: "Point", header: "BRepExtrema_ExtPF.hxx".}
proc SetFlag*(this: var BRepExtrema_ExtPF; F: Extrema_ExtFlag) {.cdecl,
    importcpp: "SetFlag", header: "BRepExtrema_ExtPF.hxx".}
proc SetAlgo*(this: var BRepExtrema_ExtPF; A: Extrema_ExtAlgo) {.cdecl,
    importcpp: "SetAlgo", header: "BRepExtrema_ExtPF.hxx".}