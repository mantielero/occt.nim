##  Created on: 1999-06-24
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../TColStd/TColStd_IndexedDataMapOfTransientTransient

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_TranslateTool"
discard "forward decl of TNaming_TranslateTool"
type
  Handle_TNaming_TranslateTool* = handle[TNaming_TranslateTool]

## ! tool to copy underlying TShape of a Shape.
## ! The TranslateTool class is provided to support the
## ! translation of topological data structures  Transient
## ! to  Transient.

type
  TNaming_TranslateTool* {.importcpp: "TNaming_TranslateTool",
                          header: "TNaming_TranslateTool.hxx", bycopy.} = object of Standard_Transient


proc Add*(this: TNaming_TranslateTool; S1: var TopoDS_Shape; S2: TopoDS_Shape) {.
    noSideEffect, importcpp: "Add", header: "TNaming_TranslateTool.hxx".}
proc MakeVertex*(this: TNaming_TranslateTool; S: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeVertex", header: "TNaming_TranslateTool.hxx".}
proc MakeEdge*(this: TNaming_TranslateTool; S: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeEdge", header: "TNaming_TranslateTool.hxx".}
proc MakeWire*(this: TNaming_TranslateTool; S: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeWire", header: "TNaming_TranslateTool.hxx".}
proc MakeFace*(this: TNaming_TranslateTool; S: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeFace", header: "TNaming_TranslateTool.hxx".}
proc MakeShell*(this: TNaming_TranslateTool; S: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeShell", header: "TNaming_TranslateTool.hxx".}
proc MakeSolid*(this: TNaming_TranslateTool; S: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeSolid", header: "TNaming_TranslateTool.hxx".}
proc MakeCompSolid*(this: TNaming_TranslateTool; S: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeCompSolid", header: "TNaming_TranslateTool.hxx".}
proc MakeCompound*(this: TNaming_TranslateTool; S: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeCompound", header: "TNaming_TranslateTool.hxx".}
proc UpdateVertex*(this: TNaming_TranslateTool; S1: TopoDS_Shape;
                  S2: var TopoDS_Shape;
                  M: var TColStd_IndexedDataMapOfTransientTransient) {.
    noSideEffect, importcpp: "UpdateVertex", header: "TNaming_TranslateTool.hxx".}
proc UpdateEdge*(this: TNaming_TranslateTool; S1: TopoDS_Shape; S2: var TopoDS_Shape;
                M: var TColStd_IndexedDataMapOfTransientTransient) {.noSideEffect,
    importcpp: "UpdateEdge", header: "TNaming_TranslateTool.hxx".}
proc UpdateFace*(this: TNaming_TranslateTool; S1: TopoDS_Shape; S2: var TopoDS_Shape;
                M: var TColStd_IndexedDataMapOfTransientTransient) {.noSideEffect,
    importcpp: "UpdateFace", header: "TNaming_TranslateTool.hxx".}
proc UpdateShape*(this: TNaming_TranslateTool; S1: TopoDS_Shape; S2: var TopoDS_Shape) {.
    noSideEffect, importcpp: "UpdateShape", header: "TNaming_TranslateTool.hxx".}
type
  TNaming_TranslateToolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TNaming_TranslateTool::get_type_name(@)",
                              header: "TNaming_TranslateTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TNaming_TranslateTool::get_type_descriptor(@)",
    header: "TNaming_TranslateTool.hxx".}
proc DynamicType*(this: TNaming_TranslateTool): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TNaming_TranslateTool.hxx".}