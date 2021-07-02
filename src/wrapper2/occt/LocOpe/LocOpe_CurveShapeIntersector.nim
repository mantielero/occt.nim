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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Ax1"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Circ"
discard "forward decl of LocOpe_PntFace"
type
  LocOpeCurveShapeIntersector* {.importcpp: "LocOpe_CurveShapeIntersector",
                                header: "LocOpe_CurveShapeIntersector.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor.


proc constructLocOpeCurveShapeIntersector*(): LocOpeCurveShapeIntersector {.
    constructor, importcpp: "LocOpe_CurveShapeIntersector(@)",
    header: "LocOpe_CurveShapeIntersector.hxx".}
proc constructLocOpeCurveShapeIntersector*(axis: GpAx1; s: TopoDS_Shape): LocOpeCurveShapeIntersector {.
    constructor, importcpp: "LocOpe_CurveShapeIntersector(@)",
    header: "LocOpe_CurveShapeIntersector.hxx".}
proc constructLocOpeCurveShapeIntersector*(c: GpCirc; s: TopoDS_Shape): LocOpeCurveShapeIntersector {.
    constructor, importcpp: "LocOpe_CurveShapeIntersector(@)",
    header: "LocOpe_CurveShapeIntersector.hxx".}
proc init*(this: var LocOpeCurveShapeIntersector; axis: GpAx1; s: TopoDS_Shape) {.
    importcpp: "Init", header: "LocOpe_CurveShapeIntersector.hxx".}
proc init*(this: var LocOpeCurveShapeIntersector; c: GpCirc; s: TopoDS_Shape) {.
    importcpp: "Init", header: "LocOpe_CurveShapeIntersector.hxx".}
proc isDone*(this: LocOpeCurveShapeIntersector): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_CurveShapeIntersector.hxx".}
proc nbPoints*(this: LocOpeCurveShapeIntersector): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "LocOpe_CurveShapeIntersector.hxx".}
proc point*(this: LocOpeCurveShapeIntersector; index: StandardInteger): LocOpePntFace {.
    noSideEffect, importcpp: "Point", header: "LocOpe_CurveShapeIntersector.hxx".}
proc localizeAfter*(this: LocOpeCurveShapeIntersector; `from`: StandardReal;
                   `or`: var TopAbsOrientation; indFrom: var StandardInteger;
                   indTo: var StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "LocalizeAfter", header: "LocOpe_CurveShapeIntersector.hxx".}
proc localizeBefore*(this: LocOpeCurveShapeIntersector; `from`: StandardReal;
                    `or`: var TopAbsOrientation; indFrom: var StandardInteger;
                    indTo: var StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "LocalizeBefore", header: "LocOpe_CurveShapeIntersector.hxx".}
proc localizeAfter*(this: LocOpeCurveShapeIntersector; fromInd: StandardInteger;
                   `or`: var TopAbsOrientation; indFrom: var StandardInteger;
                   indTo: var StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "LocalizeAfter", header: "LocOpe_CurveShapeIntersector.hxx".}
proc localizeBefore*(this: LocOpeCurveShapeIntersector; fromInd: StandardInteger;
                    `or`: var TopAbsOrientation; indFrom: var StandardInteger;
                    indTo: var StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "LocalizeBefore", header: "LocOpe_CurveShapeIntersector.hxx".}

