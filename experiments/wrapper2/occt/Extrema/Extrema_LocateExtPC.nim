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
  ../Standard/Standard_Handle, Extrema_POnCurv, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  Extrema_LocEPCOfLocateExtPC, Extrema_ELPCOfLocateExtPC,
  ../GeomAbs/GeomAbs_CurveType, ../Standard/Standard_Integer,
  Extrema_SequenceOfPOnCurv

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_ExtPElC"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_ELPCOfLocateExtPC"
discard "forward decl of Extrema_EPCOfELPCOfLocateExtPC"
discard "forward decl of Extrema_LocEPCOfLocateExtPC"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC"
type
  Extrema_LocateExtPC* {.importcpp: "Extrema_LocateExtPC",
                        header: "Extrema_LocateExtPC.hxx", bycopy.} = object


proc constructExtrema_LocateExtPC*(): Extrema_LocateExtPC {.constructor,
    importcpp: "Extrema_LocateExtPC(@)", header: "Extrema_LocateExtPC.hxx".}
proc constructExtrema_LocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve; U0: Standard_Real;
                                  TolF: Standard_Real): Extrema_LocateExtPC {.
    constructor, importcpp: "Extrema_LocateExtPC(@)",
    header: "Extrema_LocateExtPC.hxx".}
proc constructExtrema_LocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve; U0: Standard_Real;
                                  Umin: Standard_Real; Usup: Standard_Real;
                                  TolF: Standard_Real): Extrema_LocateExtPC {.
    constructor, importcpp: "Extrema_LocateExtPC(@)",
    header: "Extrema_LocateExtPC.hxx".}
proc Initialize*(this: var Extrema_LocateExtPC; C: Adaptor3d_Curve;
                Umin: Standard_Real; Usup: Standard_Real; TolF: Standard_Real) {.
    importcpp: "Initialize", header: "Extrema_LocateExtPC.hxx".}
proc Perform*(this: var Extrema_LocateExtPC; P: gp_Pnt; U0: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_LocateExtPC.hxx".}
proc IsDone*(this: Extrema_LocateExtPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_LocateExtPC.hxx".}
proc SquareDistance*(this: Extrema_LocateExtPC): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_LocateExtPC.hxx".}
proc IsMin*(this: Extrema_LocateExtPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsMin", header: "Extrema_LocateExtPC.hxx".}
proc Point*(this: Extrema_LocateExtPC): Extrema_POnCurv {.noSideEffect,
    importcpp: "Point", header: "Extrema_LocateExtPC.hxx".}