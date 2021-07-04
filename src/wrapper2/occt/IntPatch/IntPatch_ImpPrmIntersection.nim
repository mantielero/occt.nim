##  Created on: 1992-05-07
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  IntPatch_SequenceOfPoint, IntPatch_SequenceOfLine, IntPatch_TheSOnBounds,
  IntPatch_TheSearchInside, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_Line"
type
  IntPatch_ImpPrmIntersection* {.importcpp: "IntPatch_ImpPrmIntersection",
                                header: "IntPatch_ImpPrmIntersection.hxx", bycopy.} = object


proc constructIntPatch_ImpPrmIntersection*(): IntPatch_ImpPrmIntersection {.
    constructor, importcpp: "IntPatch_ImpPrmIntersection(@)",
    header: "IntPatch_ImpPrmIntersection.hxx".}
proc constructIntPatch_ImpPrmIntersection*(Surf1: handle[Adaptor3d_HSurface];
    D1: handle[Adaptor3d_TopolTool]; Surf2: handle[Adaptor3d_HSurface];
    D2: handle[Adaptor3d_TopolTool]; TolArc: Standard_Real; TolTang: Standard_Real;
    Fleche: Standard_Real; Pas: Standard_Real): IntPatch_ImpPrmIntersection {.
    constructor, importcpp: "IntPatch_ImpPrmIntersection(@)",
    header: "IntPatch_ImpPrmIntersection.hxx".}
proc SetStartPoint*(this: var IntPatch_ImpPrmIntersection; U: Standard_Real;
                   V: Standard_Real) {.importcpp: "SetStartPoint",
                                     header: "IntPatch_ImpPrmIntersection.hxx".}
proc Perform*(this: var IntPatch_ImpPrmIntersection;
             Surf1: handle[Adaptor3d_HSurface]; D1: handle[Adaptor3d_TopolTool];
             Surf2: handle[Adaptor3d_HSurface]; D2: handle[Adaptor3d_TopolTool];
             TolArc: Standard_Real; TolTang: Standard_Real; Fleche: Standard_Real;
             Pas: Standard_Real) {.importcpp: "Perform",
                                 header: "IntPatch_ImpPrmIntersection.hxx".}
proc IsDone*(this: IntPatch_ImpPrmIntersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_ImpPrmIntersection.hxx".}
proc IsEmpty*(this: IntPatch_ImpPrmIntersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_ImpPrmIntersection.hxx".}
proc NbPnts*(this: IntPatch_ImpPrmIntersection): Standard_Integer {.noSideEffect,
    importcpp: "NbPnts", header: "IntPatch_ImpPrmIntersection.hxx".}
proc Point*(this: IntPatch_ImpPrmIntersection; Index: Standard_Integer): IntPatch_Point {.
    noSideEffect, importcpp: "Point", header: "IntPatch_ImpPrmIntersection.hxx".}
proc NbLines*(this: IntPatch_ImpPrmIntersection): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_ImpPrmIntersection.hxx".}
proc Line*(this: IntPatch_ImpPrmIntersection; Index: Standard_Integer): handle[
    IntPatch_Line] {.noSideEffect, importcpp: "Line",
                    header: "IntPatch_ImpPrmIntersection.hxx".}