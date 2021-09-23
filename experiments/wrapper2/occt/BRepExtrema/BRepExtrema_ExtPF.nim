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
  ../Standard/Standard_DefineAlloc, ../Extrema/Extrema_ExtPS,
  ../Standard/Standard_Integer, ../TColStd/TColStd_SequenceOfReal,
  ../Extrema/Extrema_SequenceOfPOnSurf, ../BRepAdaptor/BRepAdaptor_Surface,
  ../Extrema/Extrema_ExtFlag, ../Extrema/Extrema_ExtAlgo

discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepExtrema_ExtPF* {.importcpp: "BRepExtrema_ExtPF",
                      header: "BRepExtrema_ExtPF.hxx", bycopy.} = object


proc constructBRepExtrema_ExtPF*(): BRepExtrema_ExtPF {.constructor,
    importcpp: "BRepExtrema_ExtPF(@)", header: "BRepExtrema_ExtPF.hxx".}
proc constructBRepExtrema_ExtPF*(TheVertex: TopoDS_Vertex; TheFace: TopoDS_Face;
    TheFlag: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                                TheAlgo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): BRepExtrema_ExtPF {.
    constructor, importcpp: "BRepExtrema_ExtPF(@)", header: "BRepExtrema_ExtPF.hxx".}
proc Initialize*(this: var BRepExtrema_ExtPF; TheFace: TopoDS_Face;
                TheFlag: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                TheAlgo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtPF.hxx".}
proc Perform*(this: var BRepExtrema_ExtPF; TheVertex: TopoDS_Vertex;
             TheFace: TopoDS_Face) {.importcpp: "Perform",
                                   header: "BRepExtrema_ExtPF.hxx".}
proc IsDone*(this: BRepExtrema_ExtPF): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ExtPF.hxx".}
proc NbExt*(this: BRepExtrema_ExtPF): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "BRepExtrema_ExtPF.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtPF; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "BRepExtrema_ExtPF.hxx".}
proc Parameter*(this: BRepExtrema_ExtPF; N: Standard_Integer; U: var Standard_Real;
               V: var Standard_Real) {.noSideEffect, importcpp: "Parameter",
                                    header: "BRepExtrema_ExtPF.hxx".}
proc Point*(this: BRepExtrema_ExtPF; N: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "BRepExtrema_ExtPF.hxx".}
proc SetFlag*(this: var BRepExtrema_ExtPF; F: Extrema_ExtFlag) {.importcpp: "SetFlag",
    header: "BRepExtrema_ExtPF.hxx".}
proc SetAlgo*(this: var BRepExtrema_ExtPF; A: Extrema_ExtAlgo) {.importcpp: "SetAlgo",
    header: "BRepExtrema_ExtPF.hxx".}