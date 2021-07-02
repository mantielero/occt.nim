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
  ExtremaExtPC2d* {.importcpp: "Extrema_ExtPC2d", header: "Extrema_ExtPC2d.hxx",
                   bycopy.} = object


proc constructExtremaExtPC2d*(): ExtremaExtPC2d {.constructor,
    importcpp: "Extrema_ExtPC2d(@)", header: "Extrema_ExtPC2d.hxx".}
proc constructExtremaExtPC2d*(p: GpPnt2d; c: Adaptor2dCurve2d; uinf: StandardReal;
                             usup: StandardReal; tolF: StandardReal = 1.0e-10): ExtremaExtPC2d {.
    constructor, importcpp: "Extrema_ExtPC2d(@)", header: "Extrema_ExtPC2d.hxx".}
proc constructExtremaExtPC2d*(p: GpPnt2d; c: Adaptor2dCurve2d;
                             tolF: StandardReal = 1.0e-10): ExtremaExtPC2d {.
    constructor, importcpp: "Extrema_ExtPC2d(@)", header: "Extrema_ExtPC2d.hxx".}
proc initialize*(this: var ExtremaExtPC2d; c: Adaptor2dCurve2d; uinf: StandardReal;
                usup: StandardReal; tolF: StandardReal = 1.0e-10) {.
    importcpp: "Initialize", header: "Extrema_ExtPC2d.hxx".}
proc perform*(this: var ExtremaExtPC2d; p: GpPnt2d) {.importcpp: "Perform",
    header: "Extrema_ExtPC2d.hxx".}
proc isDone*(this: ExtremaExtPC2d): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPC2d.hxx".}
proc squareDistance*(this: ExtremaExtPC2d; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPC2d.hxx".}
proc nbExt*(this: ExtremaExtPC2d): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPC2d.hxx".}
proc isMin*(this: ExtremaExtPC2d; n: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsMin", header: "Extrema_ExtPC2d.hxx".}
proc point*(this: ExtremaExtPC2d; n: StandardInteger): ExtremaPOnCurv2d {.
    noSideEffect, importcpp: "Point", header: "Extrema_ExtPC2d.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtPC2d; dist1: var StandardReal;
                            dist2: var StandardReal; p1: var GpPnt2d; p2: var GpPnt2d) {.
    noSideEffect, importcpp: "TrimmedSquareDistances",
    header: "Extrema_ExtPC2d.hxx".}

