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
  ../Extrema/Extrema_ExtCS, ../TColStd/TColStd_SequenceOfReal,
  ../Extrema/Extrema_SequenceOfPOnSurf, ../Extrema/Extrema_SequenceOfPOnCurv,
  ../BRepAdaptor/BRepAdaptor_HSurface, ../Extrema/Extrema_POnCurv,
  ../Extrema/Extrema_POnSurf, ../Standard/Standard_DefineAlloc

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepExtrema_ExtCF* {.importcpp: "BRepExtrema_ExtCF",
                      header: "BRepExtrema_ExtCF.hxx", bycopy.} = object


proc constructBRepExtrema_ExtCF*(): BRepExtrema_ExtCF {.constructor,
    importcpp: "BRepExtrema_ExtCF(@)", header: "BRepExtrema_ExtCF.hxx".}
proc constructBRepExtrema_ExtCF*(E: TopoDS_Edge; F: TopoDS_Face): BRepExtrema_ExtCF {.
    constructor, importcpp: "BRepExtrema_ExtCF(@)", header: "BRepExtrema_ExtCF.hxx".}
proc Initialize*(this: var BRepExtrema_ExtCF; E: TopoDS_Edge; F: TopoDS_Face) {.
    importcpp: "Initialize", header: "BRepExtrema_ExtCF.hxx".}
proc Perform*(this: var BRepExtrema_ExtCF; E: TopoDS_Edge; F: TopoDS_Face) {.
    importcpp: "Perform", header: "BRepExtrema_ExtCF.hxx".}
proc IsDone*(this: BRepExtrema_ExtCF): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_ExtCF.hxx".}
proc NbExt*(this: BRepExtrema_ExtCF): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "BRepExtrema_ExtCF.hxx".}
proc SquareDistance*(this: BRepExtrema_ExtCF; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "BRepExtrema_ExtCF.hxx".}
proc IsParallel*(this: BRepExtrema_ExtCF): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "BRepExtrema_ExtCF.hxx".}
proc ParameterOnEdge*(this: BRepExtrema_ExtCF; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "ParameterOnEdge", header: "BRepExtrema_ExtCF.hxx".}
proc ParameterOnFace*(this: BRepExtrema_ExtCF; N: Standard_Integer;
                     U: var Standard_Real; V: var Standard_Real) {.noSideEffect,
    importcpp: "ParameterOnFace", header: "BRepExtrema_ExtCF.hxx".}
proc PointOnEdge*(this: BRepExtrema_ExtCF; N: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "PointOnEdge", header: "BRepExtrema_ExtCF.hxx".}
proc PointOnFace*(this: BRepExtrema_ExtCF; N: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "PointOnFace", header: "BRepExtrema_ExtCF.hxx".}