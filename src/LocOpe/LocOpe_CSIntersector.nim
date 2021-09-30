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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TopoDS_Shape"
discard "forward decl of LocOpe_PntFace"
type
  LocOpeCSIntersector* {.importcpp: "LocOpe_CSIntersector",
                        header: "LocOpe_CSIntersector.hxx", bycopy.} = object ## ! Empty
                                                                         ## constructor.


proc constructLocOpeCSIntersector*(): LocOpeCSIntersector {.constructor,
    importcpp: "LocOpe_CSIntersector(@)", header: "LocOpe_CSIntersector.hxx".}
proc constructLocOpeCSIntersector*(s: TopoDS_Shape): LocOpeCSIntersector {.
    constructor, importcpp: "LocOpe_CSIntersector(@)",
    header: "LocOpe_CSIntersector.hxx".}
proc init*(this: var LocOpeCSIntersector; s: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_CSIntersector.hxx".}
proc perform*(this: var LocOpeCSIntersector; slin: LocOpeSequenceOfLin) {.
    importcpp: "Perform", header: "LocOpe_CSIntersector.hxx".}
proc perform*(this: var LocOpeCSIntersector; scir: LocOpeSequenceOfCirc) {.
    importcpp: "Perform", header: "LocOpe_CSIntersector.hxx".}
proc perform*(this: var LocOpeCSIntersector; scur: TColGeomSequenceOfCurve) {.
    importcpp: "Perform", header: "LocOpe_CSIntersector.hxx".}
proc isDone*(this: LocOpeCSIntersector): bool {.noSideEffect, importcpp: "IsDone",
    header: "LocOpe_CSIntersector.hxx".}
proc nbPoints*(this: LocOpeCSIntersector; i: cint): cint {.noSideEffect,
    importcpp: "NbPoints", header: "LocOpe_CSIntersector.hxx".}
proc point*(this: LocOpeCSIntersector; i: cint; index: cint): LocOpePntFace {.
    noSideEffect, importcpp: "Point", header: "LocOpe_CSIntersector.hxx".}
proc localizeAfter*(this: LocOpeCSIntersector; i: cint; `from`: cfloat; tol: cfloat;
                   `or`: var TopAbsOrientation; indFrom: var cint; indTo: var cint): bool {.
    noSideEffect, importcpp: "LocalizeAfter", header: "LocOpe_CSIntersector.hxx".}
proc localizeBefore*(this: LocOpeCSIntersector; i: cint; `from`: cfloat; tol: cfloat;
                    `or`: var TopAbsOrientation; indFrom: var cint; indTo: var cint): bool {.
    noSideEffect, importcpp: "LocalizeBefore", header: "LocOpe_CSIntersector.hxx".}
proc localizeAfter*(this: LocOpeCSIntersector; i: cint; fromInd: cint; tol: cfloat;
                   `or`: var TopAbsOrientation; indFrom: var cint; indTo: var cint): bool {.
    noSideEffect, importcpp: "LocalizeAfter", header: "LocOpe_CSIntersector.hxx".}
proc localizeBefore*(this: LocOpeCSIntersector; i: cint; fromInd: cint; tol: cfloat;
                    `or`: var TopAbsOrientation; indFrom: var cint; indTo: var cint): bool {.
    noSideEffect, importcpp: "LocalizeBefore", header: "LocOpe_CSIntersector.hxx".}
proc destroy*(this: var LocOpeCSIntersector) {.importcpp: "Destroy",
    header: "LocOpe_CSIntersector.hxx".}
proc destroyLocOpeCSIntersector*(this: var LocOpeCSIntersector) {.
    importcpp: "#.~LocOpe_CSIntersector()", header: "LocOpe_CSIntersector.hxx".}

























