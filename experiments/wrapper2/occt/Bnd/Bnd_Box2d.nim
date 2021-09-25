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


proc constructBndBox2d*(): BndBox2d {.constructor, importcpp: "Bnd_Box2d(@)",
                                   header: "Bnd_Box2d.hxx".}
proc setWhole*(this: var BndBox2d) {.importcpp: "SetWhole", header: "Bnd_Box2d.hxx".}
proc setVoid*(this: var BndBox2d) {.importcpp: "SetVoid", header: "Bnd_Box2d.hxx".}
proc set*(this: var BndBox2d; thePnt: Pnt2d) {.importcpp: "Set", header: "Bnd_Box2d.hxx".}
proc set*(this: var BndBox2d; thePnt: Pnt2d; theDir: Dir2d) {.importcpp: "Set",
    header: "Bnd_Box2d.hxx".}
proc update*(this: var BndBox2d; aXmin: float; aYmin: float; aXmax: float; aYmax: float) {.
    importcpp: "Update", header: "Bnd_Box2d.hxx".}
proc update*(this: var BndBox2d; x: float; y: float) {.importcpp: "Update",
    header: "Bnd_Box2d.hxx".}
proc getGap*(this: BndBox2d): float {.noSideEffect, importcpp: "GetGap",
                                  header: "Bnd_Box2d.hxx".}
proc setGap*(this: var BndBox2d; tol: float) {.importcpp: "SetGap",
    header: "Bnd_Box2d.hxx".}
proc enlarge*(this: var BndBox2d; theTol: float) {.importcpp: "Enlarge",
    header: "Bnd_Box2d.hxx".}
proc get*(this: BndBox2d; aXmin: var float; aYmin: var float; aXmax: var float;
         aYmax: var float) {.noSideEffect, importcpp: "Get", header: "Bnd_Box2d.hxx".}
proc openXmin*(this: var BndBox2d) {.importcpp: "OpenXmin", header: "Bnd_Box2d.hxx".}
proc openXmax*(this: var BndBox2d) {.importcpp: "OpenXmax", header: "Bnd_Box2d.hxx".}
proc openYmin*(this: var BndBox2d) {.importcpp: "OpenYmin", header: "Bnd_Box2d.hxx".}
proc openYmax*(this: var BndBox2d) {.importcpp: "OpenYmax", header: "Bnd_Box2d.hxx".}
proc isOpenXmin*(this: BndBox2d): bool {.noSideEffect, importcpp: "IsOpenXmin",
                                     header: "Bnd_Box2d.hxx".}
proc isOpenXmax*(this: BndBox2d): bool {.noSideEffect, importcpp: "IsOpenXmax",
                                     header: "Bnd_Box2d.hxx".}
proc isOpenYmin*(this: BndBox2d): bool {.noSideEffect, importcpp: "IsOpenYmin",
                                     header: "Bnd_Box2d.hxx".}
proc isOpenYmax*(this: BndBox2d): bool {.noSideEffect, importcpp: "IsOpenYmax",
                                     header: "Bnd_Box2d.hxx".}
proc isWhole*(this: BndBox2d): bool {.noSideEffect, importcpp: "IsWhole",
                                  header: "Bnd_Box2d.hxx".}
proc isVoid*(this: BndBox2d): bool {.noSideEffect, importcpp: "IsVoid",
                                 header: "Bnd_Box2d.hxx".}
proc transformed*(this: BndBox2d; t: Trsf2d): BndBox2d {.noSideEffect,
    importcpp: "Transformed", header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; other: BndBox2d) {.importcpp: "Add",
    header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; thePnt: Pnt2d) {.importcpp: "Add", header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; thePnt: Pnt2d; theDir: Dir2d) {.importcpp: "Add",
    header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; d: Dir2d) {.importcpp: "Add", header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; p: Pnt2d): bool {.noSideEffect, importcpp: "IsOut",
                                        header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; other: BndBox2d): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; theOther: BndBox2d; theTrsf: Trsf2d): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; t1: Trsf2d; other: BndBox2d; t2: Trsf2d): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc dump*(this: BndBox2d) {.noSideEffect, importcpp: "Dump", header: "Bnd_Box2d.hxx".}
proc squareExtent*(this: BndBox2d): float {.noSideEffect, importcpp: "SquareExtent",
                                        header: "Bnd_Box2d.hxx".}
