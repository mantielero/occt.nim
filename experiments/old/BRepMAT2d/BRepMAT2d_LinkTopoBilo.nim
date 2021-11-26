##  Created on: 1994-10-07
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of BRepMAT2d_Explorer"
discard "forward decl of BRepMAT2d_BisectingLocus"
discard "forward decl of TopoDS_Shape"
discard "forward decl of MAT_BasicElt"
discard "forward decl of TopoDS_Wire"
type
  BRepMAT2dLinkTopoBilo* {.importcpp: "BRepMAT2d_LinkTopoBilo",
                          header: "BRepMAT2d_LinkTopoBilo.hxx", bycopy.} = object


proc `new`*(this: var BRepMAT2dLinkTopoBilo; theSize: csize_t): pointer {.
    importcpp: "BRepMAT2d_LinkTopoBilo::operator new",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc `delete`*(this: var BRepMAT2dLinkTopoBilo; theAddress: pointer) {.
    importcpp: "BRepMAT2d_LinkTopoBilo::operator delete",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc `new[]`*(this: var BRepMAT2dLinkTopoBilo; theSize: csize_t): pointer {.
    importcpp: "BRepMAT2d_LinkTopoBilo::operator new[]",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc `delete[]`*(this: var BRepMAT2dLinkTopoBilo; theAddress: pointer) {.
    importcpp: "BRepMAT2d_LinkTopoBilo::operator delete[]",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc `new`*(this: var BRepMAT2dLinkTopoBilo; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepMAT2d_LinkTopoBilo::operator new",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc `delete`*(this: var BRepMAT2dLinkTopoBilo; a2: pointer; a3: pointer) {.
    importcpp: "BRepMAT2d_LinkTopoBilo::operator delete",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc constructBRepMAT2dLinkTopoBilo*(): BRepMAT2dLinkTopoBilo {.constructor,
    importcpp: "BRepMAT2d_LinkTopoBilo(@)", header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc constructBRepMAT2dLinkTopoBilo*(explo: BRepMAT2dExplorer;
                                    biLo: BRepMAT2dBisectingLocus): BRepMAT2dLinkTopoBilo {.
    constructor, importcpp: "BRepMAT2d_LinkTopoBilo(@)",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc perform*(this: var BRepMAT2dLinkTopoBilo; explo: BRepMAT2dExplorer;
             biLo: BRepMAT2dBisectingLocus) {.importcpp: "Perform",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc init*(this: var BRepMAT2dLinkTopoBilo; s: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc more*(this: var BRepMAT2dLinkTopoBilo): StandardBoolean {.importcpp: "More",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc next*(this: var BRepMAT2dLinkTopoBilo) {.importcpp: "Next",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc value*(this: BRepMAT2dLinkTopoBilo): Handle[MAT_BasicElt] {.noSideEffect,
    importcpp: "Value", header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc generatingShape*(this: BRepMAT2dLinkTopoBilo; aBE: Handle[MAT_BasicElt]): TopoDS_Shape {.
    noSideEffect, importcpp: "GeneratingShape",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}