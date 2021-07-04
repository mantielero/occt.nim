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
  ../Standard/Standard_Handle, ../Standard/Standard_Address, ../gp/gp_Pnt2d,
  Extrema_ExtPElC2d, Extrema_SequenceOfPOnCurv2d, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, Extrema_EPCOfExtPC2d, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_CurveType, ../TColStd/TColStd_SequenceOfBoolean,
  ../TColStd/TColStd_SequenceOfReal

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_ExtPElC2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of Extrema_EPCOfExtPC2d"
discard "forward decl of Extrema_PCFOfEPCOfExtPC2d"
type
  Extrema_ExtPC2d* {.importcpp: "Extrema_ExtPC2d", header: "Extrema_ExtPC2d.hxx",
                    bycopy.} = object


proc constructExtrema_ExtPC2d*(): Extrema_ExtPC2d {.constructor,
    importcpp: "Extrema_ExtPC2d(@)", header: "Extrema_ExtPC2d.hxx".}
proc constructExtrema_ExtPC2d*(P: gp_Pnt2d; C: Adaptor2d_Curve2d;
                              Uinf: Standard_Real; Usup: Standard_Real;
                              TolF: Standard_Real = 1.0e-10): Extrema_ExtPC2d {.
    constructor, importcpp: "Extrema_ExtPC2d(@)", header: "Extrema_ExtPC2d.hxx".}
proc constructExtrema_ExtPC2d*(P: gp_Pnt2d; C: Adaptor2d_Curve2d;
                              TolF: Standard_Real = 1.0e-10): Extrema_ExtPC2d {.
    constructor, importcpp: "Extrema_ExtPC2d(@)", header: "Extrema_ExtPC2d.hxx".}
proc Initialize*(this: var Extrema_ExtPC2d; C: Adaptor2d_Curve2d; Uinf: Standard_Real;
                Usup: Standard_Real; TolF: Standard_Real = 1.0e-10) {.
    importcpp: "Initialize", header: "Extrema_ExtPC2d.hxx".}
proc Perform*(this: var Extrema_ExtPC2d; P: gp_Pnt2d) {.importcpp: "Perform",
    header: "Extrema_ExtPC2d.hxx".}
proc IsDone*(this: Extrema_ExtPC2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPC2d.hxx".}
proc SquareDistance*(this: Extrema_ExtPC2d; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPC2d.hxx".}
proc NbExt*(this: Extrema_ExtPC2d): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPC2d.hxx".}
proc IsMin*(this: Extrema_ExtPC2d; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin", header: "Extrema_ExtPC2d.hxx".}
proc Point*(this: Extrema_ExtPC2d; N: Standard_Integer): Extrema_POnCurv2d {.
    noSideEffect, importcpp: "Point", header: "Extrema_ExtPC2d.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ExtPC2d; dist1: var Standard_Real;
                            dist2: var Standard_Real; P1: var gp_Pnt2d;
                            P2: var gp_Pnt2d) {.noSideEffect,
    importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPC2d.hxx".}