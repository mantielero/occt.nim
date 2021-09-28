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
discard "forward decl of Law_BSpFunc"
type
  HandleC1C1* = Handle[LawBSpFunc]

## ! Law Function based on a BSpline curve 1d.  Package
## ! methods and classes are implemented in package Law
## ! to    construct  the  basis    curve with  several
## ! constraints.

type
  LawBSpFunc* {.importcpp: "Law_BSpFunc", header: "Law_BSpFunc.hxx", bycopy.} = object of LawFunction


proc constructLawBSpFunc*(): LawBSpFunc {.constructor, importcpp: "Law_BSpFunc(@)",
                                       header: "Law_BSpFunc.hxx".}
proc constructLawBSpFunc*(c: Handle[LawBSpline]; first: cfloat; last: cfloat): LawBSpFunc {.
    constructor, importcpp: "Law_BSpFunc(@)", header: "Law_BSpFunc.hxx".}
proc continuity*(this: LawBSpFunc): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Law_BSpFunc.hxx".}
proc nbIntervals*(this: LawBSpFunc; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "Law_BSpFunc.hxx".}
proc intervals*(this: LawBSpFunc; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Law_BSpFunc.hxx".}
proc value*(this: var LawBSpFunc; x: cfloat): cfloat {.importcpp: "Value",
    header: "Law_BSpFunc.hxx".}
proc d1*(this: var LawBSpFunc; x: cfloat; f: var cfloat; d: var cfloat) {.importcpp: "D1",
    header: "Law_BSpFunc.hxx".}
proc d2*(this: var LawBSpFunc; x: cfloat; f: var cfloat; d: var cfloat; d2: var cfloat) {.
    importcpp: "D2", header: "Law_BSpFunc.hxx".}
proc trim*(this: LawBSpFunc; pFirst: cfloat; pLast: cfloat; tol: cfloat): Handle[
    LawFunction] {.noSideEffect, importcpp: "Trim", header: "Law_BSpFunc.hxx".}
proc bounds*(this: var LawBSpFunc; pFirst: var cfloat; pLast: var cfloat) {.
    importcpp: "Bounds", header: "Law_BSpFunc.hxx".}
proc curve*(this: LawBSpFunc): Handle[LawBSpline] {.noSideEffect, importcpp: "Curve",
    header: "Law_BSpFunc.hxx".}
proc setCurve*(this: var LawBSpFunc; c: Handle[LawBSpline]) {.importcpp: "SetCurve",
    header: "Law_BSpFunc.hxx".}
type
  LawBSpFuncbaseType* = LawFunction

proc getTypeName*(): cstring {.importcpp: "Law_BSpFunc::get_type_name(@)",
                            header: "Law_BSpFunc.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Law_BSpFunc::get_type_descriptor(@)", header: "Law_BSpFunc.hxx".}
proc dynamicType*(this: LawBSpFunc): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_BSpFunc.hxx".}

























