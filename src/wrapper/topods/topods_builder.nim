import topods_types





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



proc makeWire*(this: TopoDS_Builder; w: var TopoDS_Wire) {.noSideEffect, cdecl,
    importcpp: "MakeWire", header: "TopoDS_Builder.hxx".}
proc makeShell*(this: TopoDS_Builder; s: var TopoDS_Shell) {.noSideEffect, cdecl,
    importcpp: "MakeShell", header: "TopoDS_Builder.hxx".}
proc makeSolid*(this: TopoDS_Builder; s: var TopoDS_Solid) {.noSideEffect, cdecl,
    importcpp: "MakeSolid", header: "TopoDS_Builder.hxx".}
proc makeCompSolid*(this: TopoDS_Builder; c: var TopoDS_CompSolid) {.noSideEffect,
    cdecl, importcpp: "MakeCompSolid", header: "TopoDS_Builder.hxx".}
proc makeCompound*(this: TopoDS_Builder; c: var TopoDS_Compound) {.noSideEffect, cdecl,
    importcpp: "MakeCompound", header: "TopoDS_Builder.hxx".}
proc add*(this: TopoDS_Builder; s: var TopoDS_Shape; c: TopoDS_Shape) {.noSideEffect,
    cdecl, importcpp: "Add", header: "TopoDS_Builder.hxx".}
proc remove*(this: TopoDS_Builder; s: var TopoDS_Shape; c: TopoDS_Shape) {.noSideEffect,
    cdecl, importcpp: "Remove", header: "TopoDS_Builder.hxx".}


