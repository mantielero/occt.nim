##  Created on: 1999-09-16
##  Created by: Edward AGAPOV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomAdaptor_HSurfaceOfLinearExtrusion"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of gp_Ax2"
discard "forward decl of Extrema_ExtPExtS"
type
  HandleExtremaExtPExtS* = Handle[ExtremaExtPExtS]

## ! It calculates all the extremum (minimum and
## ! maximum) distances between a point and a linear
## ! extrusion surface.

type
  ExtremaExtPExtS* {.importcpp: "Extrema_ExtPExtS", header: "Extrema_ExtPExtS.hxx",
                    bycopy.} = object of StandardTransient


proc newExtremaExtPExtS*(): ExtremaExtPExtS {.cdecl, constructor,
    importcpp: "Extrema_ExtPExtS(@)", dynlib: tkgeombase.}
proc newExtremaExtPExtS*(p: Pnt; s: Handle[GeomAdaptorHSurfaceOfLinearExtrusion];
                        umin: cfloat; usup: cfloat; vmin: cfloat; vsup: cfloat;
                        tolU: cfloat; tolV: cfloat): ExtremaExtPExtS {.cdecl,
    constructor, importcpp: "Extrema_ExtPExtS(@)", dynlib: tkgeombase.}
proc newExtremaExtPExtS*(p: Pnt; s: Handle[GeomAdaptorHSurfaceOfLinearExtrusion];
                        tolU: cfloat; tolV: cfloat): ExtremaExtPExtS {.cdecl,
    constructor, importcpp: "Extrema_ExtPExtS(@)", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaExtPExtS;
                s: Handle[GeomAdaptorHSurfaceOfLinearExtrusion]; uinf: cfloat;
                usup: cfloat; vinf: cfloat; vsup: cfloat; tolU: cfloat; tolV: cfloat) {.
    cdecl, importcpp: "Initialize", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPExtS; p: Pnt) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtPExtS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtPExtS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtPExtS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc point*(this: ExtremaExtPExtS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}