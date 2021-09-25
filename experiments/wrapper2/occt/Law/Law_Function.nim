##  Created on: 1993-12-24
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Law_Function"
discard "forward decl of Law_Function"
type
  HandleLawFunction* = Handle[LawFunction]

## ! Root class for evolution laws.

type
  LawFunction* {.importcpp: "Law_Function", header: "Law_Function.hxx", bycopy.} = object of StandardTransient


proc continuity*(this: LawFunction): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Law_Function.hxx".}
proc nbIntervals*(this: LawFunction; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "Law_Function.hxx".}
proc intervals*(this: LawFunction; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Law_Function.hxx".}
proc value*(this: var LawFunction; x: float): float {.importcpp: "Value",
    header: "Law_Function.hxx".}
proc d1*(this: var LawFunction; x: float; f: var float; d: var float) {.importcpp: "D1",
    header: "Law_Function.hxx".}
proc d2*(this: var LawFunction; x: float; f: var float; d: var float; d2: var float) {.
    importcpp: "D2", header: "Law_Function.hxx".}
proc trim*(this: LawFunction; pFirst: float; pLast: float; tol: float): Handle[
    LawFunction] {.noSideEffect, importcpp: "Trim", header: "Law_Function.hxx".}
proc bounds*(this: var LawFunction; pFirst: var float; pLast: var float) {.
    importcpp: "Bounds", header: "Law_Function.hxx".}
type
  LawFunctionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Law_Function::get_type_name(@)",
                            header: "Law_Function.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Law_Function::get_type_descriptor(@)", header: "Law_Function.hxx".}
proc dynamicType*(this: LawFunction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_Function.hxx".}
