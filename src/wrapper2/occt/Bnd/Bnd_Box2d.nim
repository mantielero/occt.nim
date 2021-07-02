##  Created on: 1991-01-28
##  Created by: Remi Lequette
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2012 OPEN CASCADE SAS
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
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
type
  BndBox2d* {.importcpp: "Bnd_Box2d", header: "Bnd_Box2d.hxx", bycopy.} = object ## ! Creates an empty 2D
                                                                         ## bounding box.
                                                                         ## ! The
                                                                         ## constructed box is
                                                                         ## qualified Void. Its gap is null.
                                                                         ## ! Bit flags.
    bndBox2d* {.importc: "Bnd_Box2d".}: StandardNODISCARD


proc constructBndBox2d*(): BndBox2d {.constructor, importcpp: "Bnd_Box2d(@)",
                                   header: "Bnd_Box2d.hxx".}
proc setWhole*(this: var BndBox2d) {.importcpp: "SetWhole", header: "Bnd_Box2d.hxx".}
proc setVoid*(this: var BndBox2d) {.importcpp: "SetVoid", header: "Bnd_Box2d.hxx".}
proc set*(this: var BndBox2d; thePnt: GpPnt2d) {.importcpp: "Set",
    header: "Bnd_Box2d.hxx".}
proc set*(this: var BndBox2d; thePnt: GpPnt2d; theDir: GpDir2d) {.importcpp: "Set",
    header: "Bnd_Box2d.hxx".}
proc update*(this: var BndBox2d; aXmin: StandardReal; aYmin: StandardReal;
            aXmax: StandardReal; aYmax: StandardReal) {.importcpp: "Update",
    header: "Bnd_Box2d.hxx".}
proc update*(this: var BndBox2d; x: StandardReal; y: StandardReal) {.
    importcpp: "Update", header: "Bnd_Box2d.hxx".}
proc getGap*(this: BndBox2d): StandardReal {.noSideEffect, importcpp: "GetGap",
    header: "Bnd_Box2d.hxx".}
proc setGap*(this: var BndBox2d; tol: StandardReal) {.importcpp: "SetGap",
    header: "Bnd_Box2d.hxx".}
proc enlarge*(this: var BndBox2d; theTol: StandardReal) {.importcpp: "Enlarge",
    header: "Bnd_Box2d.hxx".}
proc get*(this: BndBox2d; aXmin: var StandardReal; aYmin: var StandardReal;
         aXmax: var StandardReal; aYmax: var StandardReal) {.noSideEffect,
    importcpp: "Get", header: "Bnd_Box2d.hxx".}
proc openXmin*(this: var BndBox2d) {.importcpp: "OpenXmin", header: "Bnd_Box2d.hxx".}
proc openXmax*(this: var BndBox2d) {.importcpp: "OpenXmax", header: "Bnd_Box2d.hxx".}
proc openYmin*(this: var BndBox2d) {.importcpp: "OpenYmin", header: "Bnd_Box2d.hxx".}
proc openYmax*(this: var BndBox2d) {.importcpp: "OpenYmax", header: "Bnd_Box2d.hxx".}
proc isOpenXmin*(this: BndBox2d): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenXmin", header: "Bnd_Box2d.hxx".}
proc isOpenXmax*(this: BndBox2d): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenXmax", header: "Bnd_Box2d.hxx".}
proc isOpenYmin*(this: BndBox2d): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenYmin", header: "Bnd_Box2d.hxx".}
proc isOpenYmax*(this: BndBox2d): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenYmax", header: "Bnd_Box2d.hxx".}
proc isWhole*(this: BndBox2d): StandardBoolean {.noSideEffect, importcpp: "IsWhole",
    header: "Bnd_Box2d.hxx".}
proc isVoid*(this: BndBox2d): StandardBoolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_Box2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc add*(this: var BndBox2d; other: BndBox2d) {.importcpp: "Add",
    header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; thePnt: GpPnt2d) {.importcpp: "Add",
    header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; thePnt: GpPnt2d; theDir: GpDir2d) {.importcpp: "Add",
    header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; d: GpDir2d) {.importcpp: "Add", header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; p: GpPnt2d): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; other: BndBox2d): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; theOther: BndBox2d; theTrsf: GpTrsf2d): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; t1: GpTrsf2d; other: BndBox2d; t2: GpTrsf2d): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc dump*(this: BndBox2d) {.noSideEffect, importcpp: "Dump", header: "Bnd_Box2d.hxx".}
proc squareExtent*(this: BndBox2d): StandardReal {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_Box2d.hxx".}

