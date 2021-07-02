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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_XY"
discard "forward decl of Law_Function"
discard "forward decl of Law_Composite"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of ChFiDS_FilSpine"
discard "forward decl of ChFiDS_FilSpine"
type
  HandleChFiDS_FilSpine* = Handle[ChFiDS_FilSpine]

## ! Provides  data specific to  the fillets -
## ! vector or rule  of evolution (C2).

type
  ChFiDS_FilSpine* {.importcpp: "ChFiDS_FilSpine", header: "ChFiDS_FilSpine.hxx",
                    bycopy.} = object of ChFiDS_Spine


proc constructChFiDS_FilSpine*(): ChFiDS_FilSpine {.constructor,
    importcpp: "ChFiDS_FilSpine(@)", header: "ChFiDS_FilSpine.hxx".}
proc constructChFiDS_FilSpine*(tol: StandardReal): ChFiDS_FilSpine {.constructor,
    importcpp: "ChFiDS_FilSpine(@)", header: "ChFiDS_FilSpine.hxx".}
proc reset*(this: var ChFiDS_FilSpine; allData: StandardBoolean = standardFalse) {.
    importcpp: "Reset", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; radius: StandardReal; e: TopoDS_Edge) {.
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc unSetRadius*(this: var ChFiDS_FilSpine; e: TopoDS_Edge) {.
    importcpp: "UnSetRadius", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; radius: StandardReal; v: TopoDS_Vertex) {.
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc unSetRadius*(this: var ChFiDS_FilSpine; v: TopoDS_Vertex) {.
    importcpp: "UnSetRadius", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; uandR: GpXY; iinC: StandardInteger) {.
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; radius: StandardReal) {.
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc setRadius*(this: var ChFiDS_FilSpine; c: Handle[LawFunction];
               iinC: StandardInteger) {.importcpp: "SetRadius",
                                      header: "ChFiDS_FilSpine.hxx".}
proc isConstant*(this: ChFiDS_FilSpine): StandardBoolean {.noSideEffect,
    importcpp: "IsConstant", header: "ChFiDS_FilSpine.hxx".}
proc isConstant*(this: ChFiDS_FilSpine; ie: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsConstant", header: "ChFiDS_FilSpine.hxx".}
proc radius*(this: ChFiDS_FilSpine): StandardReal {.noSideEffect,
    importcpp: "Radius", header: "ChFiDS_FilSpine.hxx".}
proc radius*(this: ChFiDS_FilSpine; ie: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Radius", header: "ChFiDS_FilSpine.hxx".}
proc radius*(this: ChFiDS_FilSpine; e: TopoDS_Edge): StandardReal {.noSideEffect,
    importcpp: "Radius", header: "ChFiDS_FilSpine.hxx".}
proc appendElSpine*(this: var ChFiDS_FilSpine; els: Handle[ChFiDS_HElSpine]) {.
    importcpp: "AppendElSpine", header: "ChFiDS_FilSpine.hxx".}
proc law*(this: ChFiDS_FilSpine; els: Handle[ChFiDS_HElSpine]): Handle[LawComposite] {.
    noSideEffect, importcpp: "Law", header: "ChFiDS_FilSpine.hxx".}
proc changeLaw*(this: var ChFiDS_FilSpine; e: TopoDS_Edge): var Handle[LawFunction] {.
    importcpp: "ChangeLaw", header: "ChFiDS_FilSpine.hxx".}
proc maxRadFromSeqAndLaws*(this: ChFiDS_FilSpine): StandardReal {.noSideEffect,
    importcpp: "MaxRadFromSeqAndLaws", header: "ChFiDS_FilSpine.hxx".}
type
  ChFiDS_FilSpinebaseType* = ChFiDS_Spine

proc getTypeName*(): cstring {.importcpp: "ChFiDS_FilSpine::get_type_name(@)",
                            header: "ChFiDS_FilSpine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ChFiDS_FilSpine::get_type_descriptor(@)",
    header: "ChFiDS_FilSpine.hxx".}
proc dynamicType*(this: ChFiDS_FilSpine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_FilSpine.hxx".}

