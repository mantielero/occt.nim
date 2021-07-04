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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TColgp/TColgp_SequenceOfXY,
  ../Law/Law_Laws, ChFiDS_Spine, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_XY"
discard "forward decl of Law_Function"
discard "forward decl of Law_Composite"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of ChFiDS_FilSpine"
discard "forward decl of ChFiDS_FilSpine"
type
  Handle_ChFiDS_FilSpine* = handle[ChFiDS_FilSpine]

## ! Provides  data specific to  the fillets -
## ! vector or rule  of evolution (C2).

type
  ChFiDS_FilSpine* {.importcpp: "ChFiDS_FilSpine", header: "ChFiDS_FilSpine.hxx",
                    bycopy.} = object of ChFiDS_Spine


proc constructChFiDS_FilSpine*(): ChFiDS_FilSpine {.constructor,
    importcpp: "ChFiDS_FilSpine(@)", header: "ChFiDS_FilSpine.hxx".}
proc constructChFiDS_FilSpine*(Tol: Standard_Real): ChFiDS_FilSpine {.constructor,
    importcpp: "ChFiDS_FilSpine(@)", header: "ChFiDS_FilSpine.hxx".}
proc Reset*(this: var ChFiDS_FilSpine; AllData: Standard_Boolean = Standard_False) {.
    importcpp: "Reset", header: "ChFiDS_FilSpine.hxx".}
proc SetRadius*(this: var ChFiDS_FilSpine; Radius: Standard_Real; E: TopoDS_Edge) {.
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc UnSetRadius*(this: var ChFiDS_FilSpine; E: TopoDS_Edge) {.
    importcpp: "UnSetRadius", header: "ChFiDS_FilSpine.hxx".}
proc SetRadius*(this: var ChFiDS_FilSpine; Radius: Standard_Real; V: TopoDS_Vertex) {.
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc UnSetRadius*(this: var ChFiDS_FilSpine; V: TopoDS_Vertex) {.
    importcpp: "UnSetRadius", header: "ChFiDS_FilSpine.hxx".}
proc SetRadius*(this: var ChFiDS_FilSpine; UandR: gp_XY; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc SetRadius*(this: var ChFiDS_FilSpine; Radius: Standard_Real) {.
    importcpp: "SetRadius", header: "ChFiDS_FilSpine.hxx".}
proc SetRadius*(this: var ChFiDS_FilSpine; C: handle[Law_Function];
               IinC: Standard_Integer) {.importcpp: "SetRadius",
                                       header: "ChFiDS_FilSpine.hxx".}
proc IsConstant*(this: ChFiDS_FilSpine): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "ChFiDS_FilSpine.hxx".}
proc IsConstant*(this: ChFiDS_FilSpine; IE: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsConstant", header: "ChFiDS_FilSpine.hxx".}
proc Radius*(this: ChFiDS_FilSpine): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "ChFiDS_FilSpine.hxx".}
proc Radius*(this: ChFiDS_FilSpine; IE: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Radius", header: "ChFiDS_FilSpine.hxx".}
proc Radius*(this: ChFiDS_FilSpine; E: TopoDS_Edge): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "ChFiDS_FilSpine.hxx".}
proc AppendElSpine*(this: var ChFiDS_FilSpine; Els: handle[ChFiDS_HElSpine]) {.
    importcpp: "AppendElSpine", header: "ChFiDS_FilSpine.hxx".}
proc Law*(this: ChFiDS_FilSpine; Els: handle[ChFiDS_HElSpine]): handle[Law_Composite] {.
    noSideEffect, importcpp: "Law", header: "ChFiDS_FilSpine.hxx".}
proc ChangeLaw*(this: var ChFiDS_FilSpine; E: TopoDS_Edge): var handle[Law_Function] {.
    importcpp: "ChangeLaw", header: "ChFiDS_FilSpine.hxx".}
proc MaxRadFromSeqAndLaws*(this: ChFiDS_FilSpine): Standard_Real {.noSideEffect,
    importcpp: "MaxRadFromSeqAndLaws", header: "ChFiDS_FilSpine.hxx".}
type
  ChFiDS_FilSpinebase_type* = ChFiDS_Spine

proc get_type_name*(): cstring {.importcpp: "ChFiDS_FilSpine::get_type_name(@)",
                              header: "ChFiDS_FilSpine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ChFiDS_FilSpine::get_type_descriptor(@)",
    header: "ChFiDS_FilSpine.hxx".}
proc DynamicType*(this: ChFiDS_FilSpine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_FilSpine.hxx".}