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
  ../Standard/Standard_Real, Extrema_PCLocFOfLocEPCOfLocateExtPC2d

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC2d"
type
  Extrema_LocEPCOfLocateExtPC2d* {.importcpp: "Extrema_LocEPCOfLocateExtPC2d",
                                  header: "Extrema_LocEPCOfLocateExtPC2d.hxx",
                                  bycopy.} = object


proc constructExtrema_LocEPCOfLocateExtPC2d*(): Extrema_LocEPCOfLocateExtPC2d {.
    constructor, importcpp: "Extrema_LocEPCOfLocateExtPC2d(@)",
    header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc constructExtrema_LocEPCOfLocateExtPC2d*(P: gp_Pnt2d; C: Adaptor2d_Curve2d;
    U0: Standard_Real; TolU: Standard_Real): Extrema_LocEPCOfLocateExtPC2d {.
    constructor, importcpp: "Extrema_LocEPCOfLocateExtPC2d(@)",
    header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc constructExtrema_LocEPCOfLocateExtPC2d*(P: gp_Pnt2d; C: Adaptor2d_Curve2d;
    U0: Standard_Real; Umin: Standard_Real; Usup: Standard_Real; TolU: Standard_Real): Extrema_LocEPCOfLocateExtPC2d {.
    constructor, importcpp: "Extrema_LocEPCOfLocateExtPC2d(@)",
    header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc Initialize*(this: var Extrema_LocEPCOfLocateExtPC2d; C: Adaptor2d_Curve2d;
                Umin: Standard_Real; Usup: Standard_Real; TolU: Standard_Real) {.
    importcpp: "Initialize", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc Perform*(this: var Extrema_LocEPCOfLocateExtPC2d; P: gp_Pnt2d; U0: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc IsDone*(this: Extrema_LocEPCOfLocateExtPC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc SquareDistance*(this: Extrema_LocEPCOfLocateExtPC2d): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc IsMin*(this: Extrema_LocEPCOfLocateExtPC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsMin", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc Point*(this: Extrema_LocEPCOfLocateExtPC2d): Extrema_POnCurv2d {.noSideEffect,
    importcpp: "Point", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}