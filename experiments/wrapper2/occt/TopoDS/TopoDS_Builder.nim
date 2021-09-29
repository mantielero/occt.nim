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


proc `new`*(this: var TopoDS_Builder; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Builder::operator new", header: "TopoDS_Builder.hxx".}
proc `delete`*(this: var TopoDS_Builder; theAddress: pointer) {.
    importcpp: "TopoDS_Builder::operator delete", header: "TopoDS_Builder.hxx".}
proc `new[]`*(this: var TopoDS_Builder; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Builder::operator new[]", header: "TopoDS_Builder.hxx".}
proc `delete[]`*(this: var TopoDS_Builder; theAddress: pointer) {.
    importcpp: "TopoDS_Builder::operator delete[]", header: "TopoDS_Builder.hxx".}
proc `new`*(this: var TopoDS_Builder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Builder::operator new", header: "TopoDS_Builder.hxx".}
proc `delete`*(this: var TopoDS_Builder; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Builder::operator delete", header: "TopoDS_Builder.hxx".}
proc makeWire*(this: TopoDS_Builder; w: var TopoDS_Wire) {.noSideEffect,
    importcpp: "MakeWire", header: "TopoDS_Builder.hxx".}
proc makeShell*(this: TopoDS_Builder; s: var TopoDS_Shell) {.noSideEffect,
    importcpp: "MakeShell", header: "TopoDS_Builder.hxx".}
proc makeSolid*(this: TopoDS_Builder; s: var TopoDS_Solid) {.noSideEffect,
    importcpp: "MakeSolid", header: "TopoDS_Builder.hxx".}
proc makeCompSolid*(this: TopoDS_Builder; c: var TopoDS_CompSolid) {.noSideEffect,
    importcpp: "MakeCompSolid", header: "TopoDS_Builder.hxx".}
proc makeCompound*(this: TopoDS_Builder; c: var TopoDS_Compound) {.noSideEffect,
    importcpp: "MakeCompound", header: "TopoDS_Builder.hxx".}
proc add*(this: TopoDS_Builder; s: var TopoDS_Shape; c: TopoDS_Shape) {.noSideEffect,
    importcpp: "Add", header: "TopoDS_Builder.hxx".}
proc remove*(this: TopoDS_Builder; s: var TopoDS_Shape; c: TopoDS_Shape) {.noSideEffect,
    importcpp: "Remove", header: "TopoDS_Builder.hxx".}