##  Created on: 1995-11-15
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Law_BSpline"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Law_Function"
discard "forward decl of Law_BSpFunc"
type
  HandleLawBSpFunc* = Handle[LawBSpFunc]

## ! Law Function based on a BSpline curve 1d.  Package
## ! methods and classes are implemented in package Law
## ! to    construct  the  basis    curve with  several
## ! constraints.

type
  LawBSpFunc* {.importcpp: "Law_BSpFunc", header: "Law_BSpFunc.hxx", bycopy.} = object of LawFunction


proc newLawBSpFunc*(): LawBSpFunc {.cdecl, constructor, importcpp: "Law_BSpFunc(@)",
                                 dynlib: tkgeomalgo.}
proc newLawBSpFunc*(c: Handle[LawBSpline]; first: cfloat; last: cfloat): LawBSpFunc {.
    cdecl, constructor, importcpp: "Law_BSpFunc(@)", dynlib: tkgeomalgo.}
proc continuity*(this: LawBSpFunc): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkgeomalgo.}
proc nbIntervals*(this: LawBSpFunc; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: LawBSpFunc; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkgeomalgo.}
proc value*(this: var LawBSpFunc; x: cfloat): cfloat {.cdecl, importcpp: "Value",
    dynlib: tkgeomalgo.}
proc d1*(this: var LawBSpFunc; x: cfloat; f: var cfloat; d: var cfloat) {.cdecl,
    importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: var LawBSpFunc; x: cfloat; f: var cfloat; d: var cfloat; d2: var cfloat) {.
    cdecl, importcpp: "D2", dynlib: tkgeomalgo.}
proc trim*(this: LawBSpFunc; pFirst: cfloat; pLast: cfloat; tol: cfloat): Handle[
    LawFunction] {.noSideEffect, cdecl, importcpp: "Trim", dynlib: tkgeomalgo.}
proc bounds*(this: var LawBSpFunc; pFirst: var cfloat; pLast: var cfloat) {.cdecl,
    importcpp: "Bounds", dynlib: tkgeomalgo.}
proc curve*(this: LawBSpFunc): Handle[LawBSpline] {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkgeomalgo.}
proc setCurve*(this: var LawBSpFunc; c: Handle[LawBSpline]) {.cdecl,
    importcpp: "SetCurve", dynlib: tkgeomalgo.}