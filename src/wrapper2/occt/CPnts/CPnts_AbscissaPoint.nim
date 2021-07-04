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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, CPnts_MyRootFunction

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
type
  CPnts_AbscissaPoint* {.importcpp: "CPnts_AbscissaPoint",
                        header: "CPnts_AbscissaPoint.hxx", bycopy.} = object ## ! Computes the length of the Curve <C>.


proc Length*(C: Adaptor3d_Curve): Standard_Real {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor2d_Curve2d): Standard_Real {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor3d_Curve; Tol: Standard_Real): Standard_Real {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor2d_Curve2d; Tol: Standard_Real): Standard_Real {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor3d_Curve; U1: Standard_Real; U2: Standard_Real): Standard_Real {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor2d_Curve2d; U1: Standard_Real; U2: Standard_Real): Standard_Real {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor3d_Curve; U1: Standard_Real; U2: Standard_Real;
            Tol: Standard_Real): Standard_Real {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc Length*(C: Adaptor2d_Curve2d; U1: Standard_Real; U2: Standard_Real;
            Tol: Standard_Real): Standard_Real {.
    importcpp: "CPnts_AbscissaPoint::Length(@)", header: "CPnts_AbscissaPoint.hxx".}
proc constructCPnts_AbscissaPoint*(): CPnts_AbscissaPoint {.constructor,
    importcpp: "CPnts_AbscissaPoint(@)", header: "CPnts_AbscissaPoint.hxx".}
proc constructCPnts_AbscissaPoint*(C: Adaptor3d_Curve; Abscissa: Standard_Real;
                                  U0: Standard_Real; Resolution: Standard_Real): CPnts_AbscissaPoint {.
    constructor, importcpp: "CPnts_AbscissaPoint(@)",
    header: "CPnts_AbscissaPoint.hxx".}
proc constructCPnts_AbscissaPoint*(C: Adaptor2d_Curve2d; Abscissa: Standard_Real;
                                  U0: Standard_Real; Resolution: Standard_Real): CPnts_AbscissaPoint {.
    constructor, importcpp: "CPnts_AbscissaPoint(@)",
    header: "CPnts_AbscissaPoint.hxx".}
proc constructCPnts_AbscissaPoint*(C: Adaptor3d_Curve; Abscissa: Standard_Real;
                                  U0: Standard_Real; Ui: Standard_Real;
                                  Resolution: Standard_Real): CPnts_AbscissaPoint {.
    constructor, importcpp: "CPnts_AbscissaPoint(@)",
    header: "CPnts_AbscissaPoint.hxx".}
proc constructCPnts_AbscissaPoint*(C: Adaptor2d_Curve2d; Abscissa: Standard_Real;
                                  U0: Standard_Real; Ui: Standard_Real;
                                  Resolution: Standard_Real): CPnts_AbscissaPoint {.
    constructor, importcpp: "CPnts_AbscissaPoint(@)",
    header: "CPnts_AbscissaPoint.hxx".}
proc Init*(this: var CPnts_AbscissaPoint; C: Adaptor3d_Curve) {.importcpp: "Init",
    header: "CPnts_AbscissaPoint.hxx".}
proc Init*(this: var CPnts_AbscissaPoint; C: Adaptor2d_Curve2d) {.importcpp: "Init",
    header: "CPnts_AbscissaPoint.hxx".}
proc Init*(this: var CPnts_AbscissaPoint; C: Adaptor3d_Curve; Tol: Standard_Real) {.
    importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc Init*(this: var CPnts_AbscissaPoint; C: Adaptor2d_Curve2d; Tol: Standard_Real) {.
    importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc Init*(this: var CPnts_AbscissaPoint; C: Adaptor3d_Curve; U1: Standard_Real;
          U2: Standard_Real) {.importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc Init*(this: var CPnts_AbscissaPoint; C: Adaptor2d_Curve2d; U1: Standard_Real;
          U2: Standard_Real) {.importcpp: "Init", header: "CPnts_AbscissaPoint.hxx".}
proc Init*(this: var CPnts_AbscissaPoint; C: Adaptor3d_Curve; U1: Standard_Real;
          U2: Standard_Real; Tol: Standard_Real) {.importcpp: "Init",
    header: "CPnts_AbscissaPoint.hxx".}
proc Init*(this: var CPnts_AbscissaPoint; C: Adaptor2d_Curve2d; U1: Standard_Real;
          U2: Standard_Real; Tol: Standard_Real) {.importcpp: "Init",
    header: "CPnts_AbscissaPoint.hxx".}
proc Perform*(this: var CPnts_AbscissaPoint; Abscissa: Standard_Real;
             U0: Standard_Real; Resolution: Standard_Real) {.importcpp: "Perform",
    header: "CPnts_AbscissaPoint.hxx".}
proc Perform*(this: var CPnts_AbscissaPoint; Abscissa: Standard_Real;
             U0: Standard_Real; Ui: Standard_Real; Resolution: Standard_Real) {.
    importcpp: "Perform", header: "CPnts_AbscissaPoint.hxx".}
proc AdvPerform*(this: var CPnts_AbscissaPoint; Abscissa: Standard_Real;
                U0: Standard_Real; Ui: Standard_Real; Resolution: Standard_Real) {.
    importcpp: "AdvPerform", header: "CPnts_AbscissaPoint.hxx".}
proc IsDone*(this: CPnts_AbscissaPoint): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "CPnts_AbscissaPoint.hxx".}
proc Parameter*(this: CPnts_AbscissaPoint): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "CPnts_AbscissaPoint.hxx".}
proc SetParameter*(this: var CPnts_AbscissaPoint; P: Standard_Real) {.
    importcpp: "SetParameter", header: "CPnts_AbscissaPoint.hxx".}