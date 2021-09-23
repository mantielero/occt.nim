##  Created on: 1991-02-21
##  Created by: Remi Lequette
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle

discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_FrozenShape"
discard "forward decl of TopoDS_UnCompatibleShapes"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Compound"
type
  TopoDS_Builder* {.importcpp: "TopoDS_Builder", header: "TopoDS_Builder.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Make
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## Wire.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## basic
                                                                                         ## method
                                                                                         ## to
                                                                                         ## make
                                                                                         ## a
                                                                                         ## Shape,
                                                                                         ## used
                                                                                         ## by
                                                                                         ## all
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## Make
                                                                                         ## methods.


proc MakeWire*(this: TopoDS_Builder; W: var TopoDS_Wire) {.noSideEffect,
    importcpp: "MakeWire", header: "TopoDS_Builder.hxx".}
proc MakeShell*(this: TopoDS_Builder; S: var TopoDS_Shell) {.noSideEffect,
    importcpp: "MakeShell", header: "TopoDS_Builder.hxx".}
proc MakeSolid*(this: TopoDS_Builder; S: var TopoDS_Solid) {.noSideEffect,
    importcpp: "MakeSolid", header: "TopoDS_Builder.hxx".}
proc MakeCompSolid*(this: TopoDS_Builder; C: var TopoDS_CompSolid) {.noSideEffect,
    importcpp: "MakeCompSolid", header: "TopoDS_Builder.hxx".}
proc MakeCompound*(this: TopoDS_Builder; C: var TopoDS_Compound) {.noSideEffect,
    importcpp: "MakeCompound", header: "TopoDS_Builder.hxx".}
proc Add*(this: TopoDS_Builder; S: var TopoDS_Shape; C: TopoDS_Shape) {.noSideEffect,
    importcpp: "Add", header: "TopoDS_Builder.hxx".}
proc Remove*(this: TopoDS_Builder; S: var TopoDS_Shape; C: TopoDS_Shape) {.noSideEffect,
    importcpp: "Remove", header: "TopoDS_Builder.hxx".}