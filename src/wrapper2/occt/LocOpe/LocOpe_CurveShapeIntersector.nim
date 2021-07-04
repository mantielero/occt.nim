##  Created on: 1995-05-29
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  LocOpe_SequenceOfPntFace, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TopAbs/TopAbs_Orientation

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Ax1"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Circ"
discard "forward decl of LocOpe_PntFace"
type
  LocOpe_CurveShapeIntersector* {.importcpp: "LocOpe_CurveShapeIntersector",
                                 header: "LocOpe_CurveShapeIntersector.hxx",
                                 bycopy.} = object ## ! Empty constructor.


proc constructLocOpe_CurveShapeIntersector*(): LocOpe_CurveShapeIntersector {.
    constructor, importcpp: "LocOpe_CurveShapeIntersector(@)",
    header: "LocOpe_CurveShapeIntersector.hxx".}
proc constructLocOpe_CurveShapeIntersector*(Axis: gp_Ax1; S: TopoDS_Shape): LocOpe_CurveShapeIntersector {.
    constructor, importcpp: "LocOpe_CurveShapeIntersector(@)",
    header: "LocOpe_CurveShapeIntersector.hxx".}
proc constructLocOpe_CurveShapeIntersector*(C: gp_Circ; S: TopoDS_Shape): LocOpe_CurveShapeIntersector {.
    constructor, importcpp: "LocOpe_CurveShapeIntersector(@)",
    header: "LocOpe_CurveShapeIntersector.hxx".}
proc Init*(this: var LocOpe_CurveShapeIntersector; Axis: gp_Ax1; S: TopoDS_Shape) {.
    importcpp: "Init", header: "LocOpe_CurveShapeIntersector.hxx".}
proc Init*(this: var LocOpe_CurveShapeIntersector; C: gp_Circ; S: TopoDS_Shape) {.
    importcpp: "Init", header: "LocOpe_CurveShapeIntersector.hxx".}
proc IsDone*(this: LocOpe_CurveShapeIntersector): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_CurveShapeIntersector.hxx".}
proc NbPoints*(this: LocOpe_CurveShapeIntersector): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "LocOpe_CurveShapeIntersector.hxx".}
proc Point*(this: LocOpe_CurveShapeIntersector; Index: Standard_Integer): LocOpe_PntFace {.
    noSideEffect, importcpp: "Point", header: "LocOpe_CurveShapeIntersector.hxx".}
proc LocalizeAfter*(this: LocOpe_CurveShapeIntersector; From: Standard_Real;
                   Or: var TopAbs_Orientation; IndFrom: var Standard_Integer;
                   IndTo: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LocalizeAfter", header: "LocOpe_CurveShapeIntersector.hxx".}
proc LocalizeBefore*(this: LocOpe_CurveShapeIntersector; From: Standard_Real;
                    Or: var TopAbs_Orientation; IndFrom: var Standard_Integer;
                    IndTo: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LocalizeBefore", header: "LocOpe_CurveShapeIntersector.hxx".}
proc LocalizeAfter*(this: LocOpe_CurveShapeIntersector; FromInd: Standard_Integer;
                   Or: var TopAbs_Orientation; IndFrom: var Standard_Integer;
                   IndTo: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LocalizeAfter", header: "LocOpe_CurveShapeIntersector.hxx".}
proc LocalizeBefore*(this: LocOpe_CurveShapeIntersector; FromInd: Standard_Integer;
                    Or: var TopAbs_Orientation; IndFrom: var Standard_Integer;
                    IndTo: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LocalizeBefore", header: "LocOpe_CurveShapeIntersector.hxx".}