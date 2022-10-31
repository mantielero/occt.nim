import law_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types



##  Created on: 1995-01-12
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





proc newLawLinear*(): LawLinear {.cdecl, constructor, importcpp: "Law_Linear(@)",
                               header: "Law_Linear.hxx".}
proc set*(this: var LawLinear; pdeb: cfloat; valdeb: cfloat; pfin: cfloat; valfin: cfloat) {.
    cdecl, importcpp: "Set", header: "Law_Linear.hxx".}
proc continuity*(this: LawLinear): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Law_Linear.hxx".}
proc nbIntervals*(this: LawLinear; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "Law_Linear.hxx".}
proc intervals*(this: LawLinear; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Law_Linear.hxx".}
proc value*(this: var LawLinear; x: cfloat): cfloat {.cdecl, importcpp: "Value",
    header: "Law_Linear.hxx".}
proc d1*(this: var LawLinear; x: cfloat; f: var cfloat; d: var cfloat) {.cdecl,
    importcpp: "D1", header: "Law_Linear.hxx".}
proc d2*(this: var LawLinear; x: cfloat; f: var cfloat; d: var cfloat; d2: var cfloat) {.cdecl,
    importcpp: "D2", header: "Law_Linear.hxx".}
proc trim*(this: LawLinear; pFirst: cfloat; pLast: cfloat; tol: cfloat): Handle[
    LawFunction] {.noSideEffect, cdecl, importcpp: "Trim", header: "Law_Linear.hxx".}
proc bounds*(this: var LawLinear; pFirst: var cfloat; pLast: var cfloat) {.cdecl,
    importcpp: "Bounds", header: "Law_Linear.hxx".}

