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
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC2d"
type
  ExtremaLocEPCOfLocateExtPC2d* {.importcpp: "Extrema_LocEPCOfLocateExtPC2d",
                                 header: "Extrema_LocEPCOfLocateExtPC2d.hxx",
                                 bycopy.} = object


proc newExtremaLocEPCOfLocateExtPC2d*(): ExtremaLocEPCOfLocateExtPC2d {.cdecl,
    constructor, importcpp: "Extrema_LocEPCOfLocateExtPC2d(@)", dynlib: tkgeombase.}
proc newExtremaLocEPCOfLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; u0: cfloat;
                                     tolU: cfloat): ExtremaLocEPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC2d(@)",
    dynlib: tkgeombase.}
proc newExtremaLocEPCOfLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; u0: cfloat;
                                     umin: cfloat; usup: cfloat; tolU: cfloat): ExtremaLocEPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC2d(@)",
    dynlib: tkgeombase.}
proc initialize*(this: var ExtremaLocEPCOfLocateExtPC2d; c: Adaptor2dCurve2d;
                umin: cfloat; usup: cfloat; tolU: cfloat) {.cdecl,
    importcpp: "Initialize", dynlib: tkgeombase.}
proc perform*(this: var ExtremaLocEPCOfLocateExtPC2d; p: Pnt2d; u0: cfloat) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaLocEPCOfLocateExtPC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaLocEPCOfLocateExtPC2d): cfloat {.noSideEffect,
    cdecl, importcpp: "SquareDistance", dynlib: tkgeombase.}
proc isMin*(this: ExtremaLocEPCOfLocateExtPC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", dynlib: tkgeombase.}
proc point*(this: ExtremaLocEPCOfLocateExtPC2d): ExtremaPOnCurv2d {.noSideEffect,
    cdecl, importcpp: "Point", dynlib: tkgeombase.}