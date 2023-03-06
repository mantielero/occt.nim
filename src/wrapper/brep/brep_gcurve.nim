import brep_types
import ../gp/gp_types
import ../standard/standard_types





##  Created on: 1995-03-09
##  Created by: Laurent PAINNOT
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





proc setRange*(this: var BRepGCurve; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetRange", header: "BRep_GCurve.hxx".}
proc range*(this: BRepGCurve; first: var cfloat; last: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Range", header: "BRep_GCurve.hxx".}
proc first*(this: BRepGCurve): cfloat {.noSideEffect, cdecl, importcpp: "First",
                                    header: "BRep_GCurve.hxx".}
proc last*(this: BRepGCurve): cfloat {.noSideEffect, cdecl, importcpp: "Last",
                                   header: "BRep_GCurve.hxx".}
proc first*(this: var BRepGCurve; f: cfloat) {.cdecl, importcpp: "First", header: "BRep_GCurve.hxx".}
proc last*(this: var BRepGCurve; L: cfloat) {.cdecl, importcpp: "Last", header: "BRep_GCurve.hxx".}
proc d0*(this: BRepGCurve; u: cfloat; p: var PntObj) {.noSideEffect, cdecl, importcpp: "D0",
    header: "BRep_GCurve.hxx".}
proc update*(this: var BRepGCurve) {.cdecl, importcpp: "Update", header: "BRep_GCurve.hxx".}
proc dumpJson*(this: BRepGCurve; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "BRep_GCurve.hxx".}


