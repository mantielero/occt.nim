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
  ../Standard/Standard_Handle, ../Standard/Standard_Address, ../gp/gp_Pnt,
  Extrema_ExtPElC, Extrema_SequenceOfPOnCurv, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, Extrema_EPCOfELPCOfLocateExtPC,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_CurveType,
  ../TColStd/TColStd_SequenceOfBoolean, ../TColStd/TColStd_SequenceOfReal

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_ExtPElC"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_EPCOfELPCOfLocateExtPC"
discard "forward decl of Extrema_PCFOfEPCOfELPCOfLocateExtPC"
type
  Extrema_ELPCOfLocateExtPC* {.importcpp: "Extrema_ELPCOfLocateExtPC",
                              header: "Extrema_ELPCOfLocateExtPC.hxx", bycopy.} = object


proc constructExtrema_ELPCOfLocateExtPC*(): Extrema_ELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_ELPCOfLocateExtPC(@)",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc constructExtrema_ELPCOfLocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve;
                                        Uinf: Standard_Real; Usup: Standard_Real;
                                        TolF: Standard_Real = 1.0e-10): Extrema_ELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_ELPCOfLocateExtPC(@)",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc constructExtrema_ELPCOfLocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve;
                                        TolF: Standard_Real = 1.0e-10): Extrema_ELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_ELPCOfLocateExtPC(@)",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc Initialize*(this: var Extrema_ELPCOfLocateExtPC; C: Adaptor3d_Curve;
                Uinf: Standard_Real; Usup: Standard_Real;
                TolF: Standard_Real = 1.0e-10) {.importcpp: "Initialize",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc Perform*(this: var Extrema_ELPCOfLocateExtPC; P: gp_Pnt) {.importcpp: "Perform",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc IsDone*(this: Extrema_ELPCOfLocateExtPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc SquareDistance*(this: Extrema_ELPCOfLocateExtPC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc NbExt*(this: Extrema_ELPCOfLocateExtPC): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc IsMin*(this: Extrema_ELPCOfLocateExtPC; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc Point*(this: Extrema_ELPCOfLocateExtPC; N: Standard_Integer): Extrema_POnCurv {.
    noSideEffect, importcpp: "Point", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ELPCOfLocateExtPC;
                            dist1: var Standard_Real; dist2: var Standard_Real;
                            P1: var gp_Pnt; P2: var gp_Pnt) {.noSideEffect,
    importcpp: "TrimmedSquareDistances", header: "Extrema_ELPCOfLocateExtPC.hxx".}