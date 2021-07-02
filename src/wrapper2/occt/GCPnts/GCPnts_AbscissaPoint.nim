##  Created on: 1992-03-25
##  Created by: Herve LEGRAND
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
type
  GCPntsAbscissaPoint* {.importcpp: "GCPnts_AbscissaPoint",
                        header: "GCPnts_AbscissaPoint.hxx", bycopy.} = object ## !
                                                                         ## Computes the length of the Curve <C>.


proc length*(c: Adaptor3dCurve): StandardReal {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor2dCurve2d): StandardReal {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor3dCurve; tol: StandardReal): StandardReal {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor2dCurve2d; tol: StandardReal): StandardReal {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor3dCurve; u1: StandardReal; u2: StandardReal): StandardReal {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor2dCurve2d; u1: StandardReal; u2: StandardReal): StandardReal {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor3dCurve; u1: StandardReal; u2: StandardReal; tol: StandardReal): StandardReal {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc length*(c: Adaptor2dCurve2d; u1: StandardReal; u2: StandardReal; tol: StandardReal): StandardReal {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPntsAbscissaPoint*(): GCPntsAbscissaPoint {.constructor,
    importcpp: "GCPnts_AbscissaPoint(@)", header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPntsAbscissaPoint*(c: Adaptor3dCurve; abscissa: StandardReal;
                                  u0: StandardReal): GCPntsAbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPntsAbscissaPoint*(tol: StandardReal; c: Adaptor3dCurve;
                                  abscissa: StandardReal; u0: StandardReal): GCPntsAbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPntsAbscissaPoint*(tol: StandardReal; c: Adaptor2dCurve2d;
                                  abscissa: StandardReal; u0: StandardReal): GCPntsAbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPntsAbscissaPoint*(c: Adaptor2dCurve2d; abscissa: StandardReal;
                                  u0: StandardReal): GCPntsAbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPntsAbscissaPoint*(c: Adaptor3dCurve; abscissa: StandardReal;
                                  u0: StandardReal; ui: StandardReal): GCPntsAbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPntsAbscissaPoint*(c: Adaptor2dCurve2d; abscissa: StandardReal;
                                  u0: StandardReal; ui: StandardReal): GCPntsAbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPntsAbscissaPoint*(c: Adaptor3dCurve; abscissa: StandardReal;
                                  u0: StandardReal; ui: StandardReal;
                                  tol: StandardReal): GCPntsAbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPntsAbscissaPoint*(c: Adaptor2dCurve2d; abscissa: StandardReal;
                                  u0: StandardReal; ui: StandardReal;
                                  tol: StandardReal): GCPntsAbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc isDone*(this: GCPntsAbscissaPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GCPnts_AbscissaPoint.hxx".}
proc parameter*(this: GCPntsAbscissaPoint): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "GCPnts_AbscissaPoint.hxx".}

