import law_types

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

discard "forward decl of Law_Function"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Law_Composite"




proc newLawComposite*(): LawComposite {.cdecl, constructor,
                                     importcpp: "Law_Composite(@)",
                                     header: "Law_Composite.hxx".}
proc newLawComposite*(first: cfloat; last: cfloat; tol: cfloat): LawComposite {.cdecl,
    constructor, importcpp: "Law_Composite(@)", header: "Law_Composite.hxx".}
proc continuity*(this: LawComposite): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Law_Composite.hxx".}
proc nbIntervals*(this: LawComposite; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", header: "Law_Composite.hxx".}
proc intervals*(this: LawComposite; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "Law_Composite.hxx".}
proc value*(this: var LawComposite; x: cfloat): cfloat {.cdecl, importcpp: "Value",
    header: "Law_Composite.hxx".}
proc d1*(this: var LawComposite; x: cfloat; f: var cfloat; d: var cfloat) {.cdecl,
    importcpp: "D1", header: "Law_Composite.hxx".}
proc d2*(this: var LawComposite; x: cfloat; f: var cfloat; d: var cfloat; d2: var cfloat) {.
    cdecl, importcpp: "D2", header: "Law_Composite.hxx".}
proc trim*(this: LawComposite; pFirst: cfloat; pLast: cfloat; tol: cfloat): Handle[
    LawFunction] {.noSideEffect, cdecl, importcpp: "Trim", header: "Law_Composite.hxx".}
proc bounds*(this: var LawComposite; pFirst: var cfloat; pLast: var cfloat) {.cdecl,
    importcpp: "Bounds", header: "Law_Composite.hxx".}
proc changeElementaryLaw*(this: var LawComposite; w: cfloat): var Handle[LawFunction] {.
    cdecl, importcpp: "ChangeElementaryLaw", header: "Law_Composite.hxx".}
proc changeLaws*(this: var LawComposite): var LawLaws {.cdecl, importcpp: "ChangeLaws",
    header: "Law_Composite.hxx".}
proc isPeriodic*(this: LawComposite): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Law_Composite.hxx".}
proc setPeriodic*(this: var LawComposite) {.cdecl, importcpp: "SetPeriodic",
                                        header: "Law_Composite.hxx".}
