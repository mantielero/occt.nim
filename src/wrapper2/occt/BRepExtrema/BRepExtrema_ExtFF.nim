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
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepExtremaExtFF* {.importcpp: "BRepExtrema_ExtFF",
                     header: "BRepExtrema_ExtFF.hxx", bycopy.} = object


proc constructBRepExtremaExtFF*(): BRepExtremaExtFF {.constructor,
    importcpp: "BRepExtrema_ExtFF(@)", header: "BRepExtrema_ExtFF.hxx".}
proc constructBRepExtremaExtFF*(f1: TopoDS_Face; f2: TopoDS_Face): BRepExtremaExtFF {.
    constructor, importcpp: "BRepExtrema_ExtFF(@)", header: "BRepExtrema_ExtFF.hxx".}
proc initialize*(this: var BRepExtremaExtFF; f2: TopoDS_Face) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtFF.hxx".}
proc perform*(this: var BRepExtremaExtFF; f1: TopoDS_Face; f2: TopoDS_Face) {.
    importcpp: "Perform", header: "BRepExtrema_ExtFF.hxx".}
proc isDone*(this: BRepExtremaExtFF): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ExtFF.hxx".}
proc isParallel*(this: BRepExtremaExtFF): StandardBoolean {.noSideEffect,
    importcpp: "IsParallel", header: "BRepExtrema_ExtFF.hxx".}
proc nbExt*(this: BRepExtremaExtFF): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "BRepExtrema_ExtFF.hxx".}
proc squareDistance*(this: BRepExtremaExtFF; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "BRepExtrema_ExtFF.hxx".}
proc parameterOnFace1*(this: BRepExtremaExtFF; n: StandardInteger;
                      u: var StandardReal; v: var StandardReal) {.noSideEffect,
    importcpp: "ParameterOnFace1", header: "BRepExtrema_ExtFF.hxx".}
proc parameterOnFace2*(this: BRepExtremaExtFF; n: StandardInteger;
                      u: var StandardReal; v: var StandardReal) {.noSideEffect,
    importcpp: "ParameterOnFace2", header: "BRepExtrema_ExtFF.hxx".}
proc pointOnFace1*(this: BRepExtremaExtFF; n: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "PointOnFace1", header: "BRepExtrema_ExtFF.hxx".}
proc pointOnFace2*(this: BRepExtremaExtFF; n: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "PointOnFace2", header: "BRepExtrema_ExtFF.hxx".}

