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

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_TranslateTool"
discard "forward decl of TNaming_TranslateTool"
type
  HandleC1C1* = Handle[TNamingTranslateTool]

## ! tool to copy underlying TShape of a Shape.
## ! The TranslateTool class is provided to support the
## ! translation of topological data structures  Transient
## ! to  Transient.

type
  TNamingTranslateTool* {.importcpp: "TNaming_TranslateTool",
                         header: "TNaming_TranslateTool.hxx", bycopy.} = object of StandardTransient


proc add*(this: TNamingTranslateTool; s1: var TopoDS_Shape; s2: TopoDS_Shape) {.
    noSideEffect, importcpp: "Add", header: "TNaming_TranslateTool.hxx".}
proc makeVertex*(this: TNamingTranslateTool; s: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeVertex", header: "TNaming_TranslateTool.hxx".}
proc makeEdge*(this: TNamingTranslateTool; s: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeEdge", header: "TNaming_TranslateTool.hxx".}
proc makeWire*(this: TNamingTranslateTool; s: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeWire", header: "TNaming_TranslateTool.hxx".}
proc makeFace*(this: TNamingTranslateTool; s: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeFace", header: "TNaming_TranslateTool.hxx".}
proc makeShell*(this: TNamingTranslateTool; s: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeShell", header: "TNaming_TranslateTool.hxx".}
proc makeSolid*(this: TNamingTranslateTool; s: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeSolid", header: "TNaming_TranslateTool.hxx".}
proc makeCompSolid*(this: TNamingTranslateTool; s: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeCompSolid", header: "TNaming_TranslateTool.hxx".}
proc makeCompound*(this: TNamingTranslateTool; s: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeCompound", header: "TNaming_TranslateTool.hxx".}
proc updateVertex*(this: TNamingTranslateTool; s1: TopoDS_Shape;
                  s2: var TopoDS_Shape;
                  m: var TColStdIndexedDataMapOfTransientTransient) {.noSideEffect,
    importcpp: "UpdateVertex", header: "TNaming_TranslateTool.hxx".}
proc updateEdge*(this: TNamingTranslateTool; s1: TopoDS_Shape; s2: var TopoDS_Shape;
                m: var TColStdIndexedDataMapOfTransientTransient) {.noSideEffect,
    importcpp: "UpdateEdge", header: "TNaming_TranslateTool.hxx".}
proc updateFace*(this: TNamingTranslateTool; s1: TopoDS_Shape; s2: var TopoDS_Shape;
                m: var TColStdIndexedDataMapOfTransientTransient) {.noSideEffect,
    importcpp: "UpdateFace", header: "TNaming_TranslateTool.hxx".}
proc updateShape*(this: TNamingTranslateTool; s1: TopoDS_Shape; s2: var TopoDS_Shape) {.
    noSideEffect, importcpp: "UpdateShape", header: "TNaming_TranslateTool.hxx".}
type
  TNamingTranslateToolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TNaming_TranslateTool::get_type_name(@)",
                            header: "TNaming_TranslateTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TNaming_TranslateTool::get_type_descriptor(@)",
    header: "TNaming_TranslateTool.hxx".}
proc dynamicType*(this: TNamingTranslateTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TNaming_TranslateTool.hxx".}

























