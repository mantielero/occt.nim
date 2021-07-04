##  Created on: 1996-06-11
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Address,
  ../Standard/Standard_Integer, LocOpe_SequenceOfLin, LocOpe_SequenceOfCirc,
  ../TColGeom/TColGeom_SequenceOfCurve, ../Standard/Standard_Real,
  ../TopAbs/TopAbs_Orientation

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Shape"
discard "forward decl of LocOpe_PntFace"
type
  LocOpe_CSIntersector* {.importcpp: "LocOpe_CSIntersector",
                         header: "LocOpe_CSIntersector.hxx", bycopy.} = object ## ! Empty
                                                                          ## constructor.


proc constructLocOpe_CSIntersector*(): LocOpe_CSIntersector {.constructor,
    importcpp: "LocOpe_CSIntersector(@)", header: "LocOpe_CSIntersector.hxx".}
proc constructLocOpe_CSIntersector*(S: TopoDS_Shape): LocOpe_CSIntersector {.
    constructor, importcpp: "LocOpe_CSIntersector(@)",
    header: "LocOpe_CSIntersector.hxx".}
proc Init*(this: var LocOpe_CSIntersector; S: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_CSIntersector.hxx".}
proc Perform*(this: var LocOpe_CSIntersector; Slin: LocOpe_SequenceOfLin) {.
    importcpp: "Perform", header: "LocOpe_CSIntersector.hxx".}
proc Perform*(this: var LocOpe_CSIntersector; Scir: LocOpe_SequenceOfCirc) {.
    importcpp: "Perform", header: "LocOpe_CSIntersector.hxx".}
proc Perform*(this: var LocOpe_CSIntersector; Scur: TColGeom_SequenceOfCurve) {.
    importcpp: "Perform", header: "LocOpe_CSIntersector.hxx".}
proc IsDone*(this: LocOpe_CSIntersector): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_CSIntersector.hxx".}
proc NbPoints*(this: LocOpe_CSIntersector; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbPoints", header: "LocOpe_CSIntersector.hxx".}
proc Point*(this: LocOpe_CSIntersector; I: Standard_Integer; Index: Standard_Integer): LocOpe_PntFace {.
    noSideEffect, importcpp: "Point", header: "LocOpe_CSIntersector.hxx".}
proc LocalizeAfter*(this: LocOpe_CSIntersector; I: Standard_Integer;
                   From: Standard_Real; Tol: Standard_Real;
                   Or: var TopAbs_Orientation; IndFrom: var Standard_Integer;
                   IndTo: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LocalizeAfter", header: "LocOpe_CSIntersector.hxx".}
proc LocalizeBefore*(this: LocOpe_CSIntersector; I: Standard_Integer;
                    From: Standard_Real; Tol: Standard_Real;
                    Or: var TopAbs_Orientation; IndFrom: var Standard_Integer;
                    IndTo: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LocalizeBefore", header: "LocOpe_CSIntersector.hxx".}
proc LocalizeAfter*(this: LocOpe_CSIntersector; I: Standard_Integer;
                   FromInd: Standard_Integer; Tol: Standard_Real;
                   Or: var TopAbs_Orientation; IndFrom: var Standard_Integer;
                   IndTo: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LocalizeAfter", header: "LocOpe_CSIntersector.hxx".}
proc LocalizeBefore*(this: LocOpe_CSIntersector; I: Standard_Integer;
                    FromInd: Standard_Integer; Tol: Standard_Real;
                    Or: var TopAbs_Orientation; IndFrom: var Standard_Integer;
                    IndTo: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LocalizeBefore", header: "LocOpe_CSIntersector.hxx".}
proc Destroy*(this: var LocOpe_CSIntersector) {.importcpp: "Destroy",
    header: "LocOpe_CSIntersector.hxx".}
proc destroyLocOpe_CSIntersector*(this: var LocOpe_CSIntersector) {.
    importcpp: "#.~LocOpe_CSIntersector()", header: "LocOpe_CSIntersector.hxx".}