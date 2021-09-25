##  Created on: 1991-07-15
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
type
  CPntsAbscissaPoint* {.importcpp: "CPnts_AbscissaPoint",
                       header: "CPnts_AbscissaPoint.hxx", bycopy.} = object ## ! Computes the length of the Curve <C>.


proc length*(c: Adaptor3dCurve): float {.importcpp: "CPnts_AbscissaPoint::Length(@)",
                                     header: "CPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor2dCurve2d): float {.importcpp: "CPnts_AbscissaPoint::Length(@)",
                                       header: "CPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor3dCurve; tol: float): float {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor2dCurve2d; tol: float): float {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor3dCurve; u1: float; u2: float): float {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor2dCurve2d; u1: float; u2: float): float {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor3dCurve; u1: float; u2: float; tol: float): float {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor2dCurve2d; u1: float; u2: float; tol: float): float {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc constructCPntsAbscissaPoint*(): CPntsAbscissaPoint {.constructor,
    importcpp: "CPnts_AbscissaPoint(@)", header: "CPnts_AbscissaPoint.hxx".}
proc constructCPntsAbscissaPoint*(c: Adaptor3dCurve; abscissa: float; u0: float;
                                 resolution: float): CPntsAbscissaPoint {.
    constructor, importcpp: "CPnts_AbscissaPoint(@)",
    header: "CPnts_AbscissaPoint.hxx".}
proc constructCPntsAbscissaPoint*(c: Adaptor2dCurve2d; abscissa: float; u0: float;
                                 resolution: float): CPntsAbscissaPoint {.
    constructor, importcpp: "CPnts_AbscissaPoint(@)",
    header: "CPnts_AbscissaPoint.hxx".}
proc constructCPntsAbscissaPoint*(c: Adaptor3dCurve; abscissa: float; u0: float;
                                 ui: float; resolution: float): CPntsAbscissaPoint {.
    constructor, importcpp: "CPnts_AbscissaPoint(@)",
    header: "CPnts_AbscissaPoint.hxx".}
proc constructCPntsAbscissaPoint*(c: Adaptor2dCurve2d; abscissa: float; u0: float;
                                 ui: float; resolution: float): CPntsAbscissaPoint {.
    constructor, importcpp: "CPnts_AbscissaPoint(@)",
    header: "CPnts_AbscissaPoint.hxx".}
proc init*(this: var CPntsAbscissaPoint; c: Adaptor3dCurve) {.importcpp: "Init",
    header: "CPnts_AbscissaPoint.hxx".}
proc init*(this: var CPntsAbscissaPoint; c: Adaptor2dCurve2d) {.importcpp: "Init",
    header: "CPnts_AbscissaPoint.hxx".}
proc init*(this: var CPntsAbscissaPoint; c: Adaptor3dCurve; tol: float) {.
    importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc init*(this: var CPntsAbscissaPoint; c: Adaptor2dCurve2d; tol: float) {.
    importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc init*(this: var CPntsAbscissaPoint; c: Adaptor3dCurve; u1: float; u2: float) {.
    importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc init*(this: var CPntsAbscissaPoint; c: Adaptor2dCurve2d; u1: float; u2: float) {.
    importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc init*(this: var CPntsAbscissaPoint; c: Adaptor3dCurve; u1: float; u2: float;
          tol: float) {.importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc init*(this: var CPntsAbscissaPoint; c: Adaptor2dCurve2d; u1: float; u2: float;
          tol: float) {.importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc perform*(this: var CPntsAbscissaPoint; abscissa: float; u0: float;
             resolution: float) {.importcpp: "Perform",
                                header: "CPnts_AbscissaPoint.hxx".}
proc perform*(this: var CPntsAbscissaPoint; abscissa: float; u0: float; ui: float;
             resolution: float) {.importcpp: "Perform",
                                header: "CPnts_AbscissaPoint.hxx".}
proc advPerform*(this: var CPntsAbscissaPoint; abscissa: float; u0: float; ui: float;
                resolution: float) {.importcpp: "AdvPerform",
                                   header: "CPnts_AbscissaPoint.hxx".}
proc isDone*(this: CPntsAbscissaPoint): bool {.noSideEffect, importcpp: "IsDone",
    header: "CPnts_AbscissaPoint.hxx".}
proc parameter*(this: CPntsAbscissaPoint): float {.noSideEffect,
    importcpp: "Parameter", header: "CPnts_AbscissaPoint.hxx".}
proc setParameter*(this: var CPntsAbscissaPoint; p: float) {.
    importcpp: "SetParameter", header: "CPnts_AbscissaPoint.hxx".}
