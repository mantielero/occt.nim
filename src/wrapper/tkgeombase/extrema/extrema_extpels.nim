##  Created on: 1991-02-21
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
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Sphere"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaExtPElS* {.importcpp: "Extrema_ExtPElS", header: "Extrema_ExtPElS.hxx",
                   bycopy.} = object


proc newExtremaExtPElS*(): ExtremaExtPElS {.cdecl, constructor,
    importcpp: "Extrema_ExtPElS(@)", dynlib: tkgeombase.}
proc newExtremaExtPElS*(p: Pnt; s: Cylinder; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Cylinder; tol: cfloat) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElS*(p: Pnt; s: Pln; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Pln; tol: cfloat) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElS*(p: Pnt; s: Cone; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Cone; tol: cfloat) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElS*(p: Pnt; s: Torus; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Torus; tol: cfloat) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElS*(p: Pnt; s: Sphere; tol: cfloat): ExtremaExtPElS {.cdecl,
    constructor, importcpp: "Extrema_ExtPElS(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElS; p: Pnt; s: Sphere; tol: cfloat) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtPElS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtPElS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtPElS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc point*(this: ExtremaExtPElS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}