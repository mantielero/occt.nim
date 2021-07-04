##  Created on: 1991-02-26
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
  ../Standard/Standard_Real, Extrema_POnCurv2d, Extrema_SequenceOfPOnCurv2d

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_CCLocFOfLocECC2d"
type
  Extrema_LocECC2d* {.importcpp: "Extrema_LocECC2d",
                     header: "Extrema_LocECC2d.hxx", bycopy.} = object ## ! Calculates the distance with a close point. The
                                                                  ## ! close point is defined by a parameter value on each
                                                                  ## ! curve.
                                                                  ## ! The function
                                                                  ## F(u,v)=distance(C1(u),C2(v)) has an
                                                                  ## ! extremun when gradient(f)=0. The algorithm searchs
                                                                  ## ! the zero near the close point.


proc constructExtrema_LocECC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d;
                               U0: Standard_Real; V0: Standard_Real;
                               TolU: Standard_Real; TolV: Standard_Real): Extrema_LocECC2d {.
    constructor, importcpp: "Extrema_LocECC2d(@)", header: "Extrema_LocECC2d.hxx".}
proc IsDone*(this: Extrema_LocECC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_LocECC2d.hxx".}
proc SquareDistance*(this: Extrema_LocECC2d): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_LocECC2d.hxx".}
proc Point*(this: Extrema_LocECC2d; P1: var Extrema_POnCurv2d;
           P2: var Extrema_POnCurv2d) {.noSideEffect, importcpp: "Point",
                                     header: "Extrema_LocECC2d.hxx".}