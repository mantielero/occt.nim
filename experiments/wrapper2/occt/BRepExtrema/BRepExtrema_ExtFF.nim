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
  ../Extrema/Extrema_ExtSS, ../TColStd/TColStd_SequenceOfReal,
  ../Extrema/Extrema_SequenceOfPOnSurf, ../BRepAdaptor/BRepAdaptor_HSurface,
  ../Extrema/Extrema_POnSurf, ../Standard/Standard_DefineAlloc

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepExtrema_ExtFF* {.importcpp: "BRepExtrema_ExtFF",
                      header: "BRepExtrema_ExtFF.hxx", bycopy.} = object


proc constructBRepExtrema_ExtFF*(): BRepExtrema_ExtFF {.constructor,
    importcpp: "BRepExtrema_ExtFF(@)", header: "BRepExtrema_ExtFF.hxx".}
proc constructBRepExtrema_ExtFF*(F1: TopoDS_Face; F2: TopoDS_Face): BRepExtrema_ExtFF {.
    constructor, importcpp: "BRepExtrema_ExtFF(@)", header: "BRepExtrema_ExtFF.hxx".}
proc Initialize*(this: var BRepExtrema_ExtFF; F2: TopoDS_Face) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtFF.hxx".}
proc Perform*(this: var BRepExtrema_ExtFF; F1: TopoDS_Face; F2: TopoDS_Face) {.
    importcpp: "Perform", header: "BRepExtrema_ExtFF.hxx".}
proc IsDone*(this: BRepExtrema_ExtFF): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ExtFF.hxx".}
proc IsParallel*(this: BRepExtrema_ExtFF): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "BRepExtrema_ExtFF.hxx".}
proc NbExt*(this: BRepExtrema_ExtFF): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "BRepExtrema_ExtFF.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtFF; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "BRepExtrema_ExtFF.hxx".}
proc ParameterOnFace1*(this: BRepExtrema_ExtFF; N: Standard_Integer;
                      U: var Standard_Real; V: var Standard_Real) {.noSideEffect,
    importcpp: "ParameterOnFace1", header: "BRepExtrema_ExtFF.hxx".}
proc ParameterOnFace2*(this: BRepExtrema_ExtFF; N: Standard_Integer;
                      U: var Standard_Real; V: var Standard_Real) {.noSideEffect,
    importcpp: "ParameterOnFace2", header: "BRepExtrema_ExtFF.hxx".}
proc PointOnFace1*(this: BRepExtrema_ExtFF; N: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "PointOnFace1", header: "BRepExtrema_ExtFF.hxx".}
proc PointOnFace2*(this: BRepExtrema_ExtFF; N: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "PointOnFace2", header: "BRepExtrema_ExtFF.hxx".}