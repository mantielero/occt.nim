import ../gp/gp_types
import ../standard/standard_types
import ../topods/topods_types
import chfids_types
import ../law/law_types





##  Created on: 1995-04-24
##  Created by: Modelistation
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





proc newChFiDS_FilSpine*(): ChFiDS_FilSpine {.cdecl, constructor,
    importcpp: "ChFiDS_FilSpine(@)", header: "ChFiDS_FilSpine.hxx".}
proc newChFiDS_FilSpine*(tol: cfloat): ChFiDS_FilSpine {.cdecl, constructor,
    importcpp: "ChFiDS_FilSpine(@)", header: "ChFiDS_FilSpine.hxx".}
proc reset*(this: var ChFiDS_FilSpine; allData: bool = false) {.cdecl,
    importcpp: "Reset", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; radius: cfloat; e: TopoDS_Edge) {.cdecl,
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc unSetRadius*(this: var ChFiDS_FilSpine; e: TopoDS_Edge) {.cdecl,
    importcpp: "UnSetRadius", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; radius: cfloat; v: TopoDS_Vertex) {.cdecl,
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc unSetRadius*(this: var ChFiDS_FilSpine; v: TopoDS_Vertex) {.cdecl,
    importcpp: "UnSetRadius", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; uandR: gp_Xy; iinC: cint) {.cdecl,
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; radius: cfloat) {.cdecl,
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; c: Handle[LawFunction]; iinC: cint) {.cdecl,
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc isConstant*(this: ChFiDS_FilSpine): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "ChFiDS_FilSpine.hxx".}
proc isConstant*(this: ChFiDS_FilSpine; ie: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsConstant", header: "ChFiDS_FilSpine.hxx".}
proc radius*(this: ChFiDS_FilSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "Radius", header: "ChFiDS_FilSpine.hxx".}
proc radius*(this: ChFiDS_FilSpine; ie: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Radius", header: "ChFiDS_FilSpine.hxx".}
proc radius*(this: ChFiDS_FilSpine; e: TopoDS_Edge): cfloat {.noSideEffect, cdecl,
    importcpp: "Radius", header: "ChFiDS_FilSpine.hxx".}
proc appendElSpine*(this: var ChFiDS_FilSpine; els: Handle[ChFiDS_HElSpine]) {.cdecl,
    importcpp: "AppendElSpine", header: "ChFiDS_FilSpine.hxx".}
proc law*(this: ChFiDS_FilSpine; els: Handle[ChFiDS_HElSpine]): Handle[LawComposite] {.
    noSideEffect, cdecl, importcpp: "Law", header: "ChFiDS_FilSpine.hxx".}
proc changeLaw*(this: var ChFiDS_FilSpine; e: TopoDS_Edge): var Handle[LawFunction] {.
    cdecl, importcpp: "ChangeLaw", header: "ChFiDS_FilSpine.hxx".}
proc maxRadFromSeqAndLaws*(this: ChFiDS_FilSpine): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxRadFromSeqAndLaws", header: "ChFiDS_FilSpine.hxx".}


