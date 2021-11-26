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

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_ExtPElC2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of Extrema_ELPCOfLocateExtPC2d"
discard "forward decl of Extrema_EPCOfELPCOfLocateExtPC2d"
discard "forward decl of Extrema_LocEPCOfLocateExtPC2d"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC2d"
type
  ExtremaLocateExtPC2d* {.importcpp: "Extrema_LocateExtPC2d",
                         header: "Extrema_LocateExtPC2d.hxx", bycopy.} = object


proc newExtremaLocateExtPC2d*(): ExtremaLocateExtPC2d {.cdecl, constructor,
    importcpp: "Extrema_LocateExtPC2d(@)", dynlib: tkgeombase.}
proc newExtremaLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; u0: cfloat; tolF: cfloat): ExtremaLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_LocateExtPC2d(@)", dynlib: tkgeombase.}
proc newExtremaLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; u0: cfloat; umin: cfloat;
                             usup: cfloat; tolF: cfloat): ExtremaLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_LocateExtPC2d(@)", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaLocateExtPC2d; c: Adaptor2dCurve2d; umin: cfloat;
                usup: cfloat; tolF: cfloat) {.cdecl, importcpp: "Initialize",
    dynlib: tkgeombase.}
proc perform*(this: var ExtremaLocateExtPC2d; p: Pnt2d; u0: cfloat) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaLocateExtPC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaLocateExtPC2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc isMin*(this: ExtremaLocateExtPC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", dynlib: tkgeombase.}
proc point*(this: ExtremaLocateExtPC2d): ExtremaPOnCurv2d {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}