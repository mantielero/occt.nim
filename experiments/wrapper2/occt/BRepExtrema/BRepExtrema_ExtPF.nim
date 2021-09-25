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
discard "forward decl of gp_Pnt"
type
  BRepExtremaExtPF* {.importcpp: "BRepExtrema_ExtPF",
                     header: "BRepExtrema_ExtPF.hxx", bycopy.} = object


proc constructBRepExtremaExtPF*(): BRepExtremaExtPF {.constructor,
    importcpp: "BRepExtrema_ExtPF(@)", header: "BRepExtrema_ExtPF.hxx".}
proc constructBRepExtremaExtPF*(theVertex: TopoDS_Vertex; theFace: TopoDS_Face;
                               theFlag: ExtremaExtFlag = extremaExtFlagMINMAX;
                               theAlgo: ExtremaExtAlgo = extremaExtAlgoGrad): BRepExtremaExtPF {.
    constructor, importcpp: "BRepExtrema_ExtPF(@)", header: "BRepExtrema_ExtPF.hxx".}
proc initialize*(this: var BRepExtremaExtPF; theFace: TopoDS_Face;
                theFlag: ExtremaExtFlag = extremaExtFlagMINMAX;
                theAlgo: ExtremaExtAlgo = extremaExtAlgoGrad) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtPF.hxx".}
proc perform*(this: var BRepExtremaExtPF; theVertex: TopoDS_Vertex;
             theFace: TopoDS_Face) {.importcpp: "Perform",
                                   header: "BRepExtrema_ExtPF.hxx".}
proc isDone*(this: BRepExtremaExtPF): bool {.noSideEffect, importcpp: "IsDone",
    header: "BRepExtrema_ExtPF.hxx".}
proc nbExt*(this: BRepExtremaExtPF): int {.noSideEffect, importcpp: "NbExt",
                                       header: "BRepExtrema_ExtPF.hxx".}
proc squareDistance*(this: BRepExtremaExtPF; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "BRepExtrema_ExtPF.hxx".}
proc parameter*(this: BRepExtremaExtPF; n: int; u: var float; v: var float) {.noSideEffect,
    importcpp: "Parameter", header: "BRepExtrema_ExtPF.hxx".}
proc point*(this: BRepExtremaExtPF; n: int): Pnt {.noSideEffect, importcpp: "Point",
    header: "BRepExtrema_ExtPF.hxx".}
proc setFlag*(this: var BRepExtremaExtPF; f: ExtremaExtFlag) {.importcpp: "SetFlag",
    header: "BRepExtrema_ExtPF.hxx".}
proc setAlgo*(this: var BRepExtremaExtPF; a: ExtremaExtAlgo) {.importcpp: "SetAlgo",
    header: "BRepExtrema_ExtPF.hxx".}
