import law_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import ../geomabs/geomabs_types





##  Created on: 1996-03-29
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1996-1999 Matra Datavision
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





proc newLawConstant*(): LawConstant {.cdecl, constructor,
                                   importcpp: "Law_Constant(@)",
                                   header: "Law_Constant.hxx".}
proc set*(this: var LawConstant; radius: cfloat; pFirst: cfloat; pLast: cfloat) {.cdecl,
    importcpp: "Set", header: "Law_Constant.hxx".}
proc continuity*(this: LawConstant): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Law_Constant.hxx".}
proc nbIntervals*(this: LawConstant; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "Law_Constant.hxx".}
proc intervals*(this: LawConstant; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Law_Constant.hxx".}
proc value*(this: var LawConstant; x: cfloat): cfloat {.cdecl, importcpp: "Value",
    header: "Law_Constant.hxx".}
proc d1*(this: var LawConstant; x: cfloat; f: var cfloat; d: var cfloat) {.cdecl,
    importcpp: "D1", header: "Law_Constant.hxx".}
proc d2*(this: var LawConstant; x: cfloat; f: var cfloat; d: var cfloat; d2: var cfloat) {.
    cdecl, importcpp: "D2", header: "Law_Constant.hxx".}
proc trim*(this: LawConstant; pFirst: cfloat; pLast: cfloat; tol: cfloat): Handle[
    LawFunction] {.noSideEffect, cdecl, importcpp: "Trim", header: "Law_Constant.hxx".}
proc bounds*(this: var LawConstant; pFirst: var cfloat; pLast: var cfloat) {.cdecl,
    importcpp: "Bounds", header: "Law_Constant.hxx".}


