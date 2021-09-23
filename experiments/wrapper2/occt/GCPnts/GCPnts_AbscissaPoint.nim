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

import
  ../CPnts/CPnts_AbscissaPoint

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
type
  GCPnts_AbscissaPoint* {.importcpp: "GCPnts_AbscissaPoint",
                         header: "GCPnts_AbscissaPoint.hxx", bycopy.} = object ## !
                                                                          ## Computes the length of the Curve <C>.


proc Length*(C: Adaptor3d_Curve): Standard_Real {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor2d_Curve2d): Standard_Real {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor3d_Curve; Tol: Standard_Real): Standard_Real {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor2d_Curve2d; Tol: Standard_Real): Standard_Real {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor3d_Curve; U1: Standard_Real; U2: Standard_Real): Standard_Real {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor2d_Curve2d; U1: Standard_Real; U2: Standard_Real): Standard_Real {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor3d_Curve; U1: Standard_Real; U2: Standard_Real;
            Tol: Standard_Real): Standard_Real {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor2d_Curve2d; U1: Standard_Real; U2: Standard_Real;
            Tol: Standard_Real): Standard_Real {.
    importcpp: "GCPnts_AbscissaPoint::Length(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPnts_AbscissaPoint*(): GCPnts_AbscissaPoint {.constructor,
    importcpp: "GCPnts_AbscissaPoint(@)", header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPnts_AbscissaPoint*(C: Adaptor3d_Curve; Abscissa: Standard_Real;
                                   U0: Standard_Real): GCPnts_AbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPnts_AbscissaPoint*(Tol: Standard_Real; C: Adaptor3d_Curve;
                                   Abscissa: Standard_Real; U0: Standard_Real): GCPnts_AbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPnts_AbscissaPoint*(Tol: Standard_Real; C: Adaptor2d_Curve2d;
                                   Abscissa: Standard_Real; U0: Standard_Real): GCPnts_AbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPnts_AbscissaPoint*(C: Adaptor2d_Curve2d; Abscissa: Standard_Real;
                                   U0: Standard_Real): GCPnts_AbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPnts_AbscissaPoint*(C: Adaptor3d_Curve; Abscissa: Standard_Real;
                                   U0: Standard_Real; Ui: Standard_Real): GCPnts_AbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPnts_AbscissaPoint*(C: Adaptor2d_Curve2d; Abscissa: Standard_Real;
                                   U0: Standard_Real; Ui: Standard_Real): GCPnts_AbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPnts_AbscissaPoint*(C: Adaptor3d_Curve; Abscissa: Standard_Real;
                                   U0: Standard_Real; Ui: Standard_Real;
                                   Tol: Standard_Real): GCPnts_AbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc constructGCPnts_AbscissaPoint*(C: Adaptor2d_Curve2d; Abscissa: Standard_Real;
                                   U0: Standard_Real; Ui: Standard_Real;
                                   Tol: Standard_Real): GCPnts_AbscissaPoint {.
    constructor, importcpp: "GCPnts_AbscissaPoint(@)",
    header: "GCPnts_AbscissaPoint.hxx".}
proc IsDone*(this: GCPnts_AbscissaPoint): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GCPnts_AbscissaPoint.hxx".}
proc Parameter*(this: GCPnts_AbscissaPoint): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "GCPnts_AbscissaPoint.hxx".}