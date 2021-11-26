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


proc newBndBox2d*(): BndBox2d {.cdecl, constructor, importcpp: "Bnd_Box2d(@)",
                             dynlib: tkmath.}
proc setWhole*(this: var BndBox2d) {.cdecl, importcpp: "SetWhole", dynlib: tkmath.}
proc setVoid*(this: var BndBox2d) {.cdecl, importcpp: "SetVoid", dynlib: tkmath.}
proc set*(this: var BndBox2d; thePnt: Pnt2d) {.cdecl, importcpp: "Set", dynlib: tkmath.}
proc set*(this: var BndBox2d; thePnt: Pnt2d; theDir: Dir2d) {.cdecl, importcpp: "Set",
    dynlib: tkmath.}
proc update*(this: var BndBox2d; aXmin: cfloat; aYmin: cfloat; aXmax: cfloat;
            aYmax: cfloat) {.cdecl, importcpp: "Update", dynlib: tkmath.}
proc update*(this: var BndBox2d; x: cfloat; y: cfloat) {.cdecl, importcpp: "Update",
    dynlib: tkmath.}
proc getGap*(this: BndBox2d): cfloat {.noSideEffect, cdecl, importcpp: "GetGap",
                                   dynlib: tkmath.}
proc setGap*(this: var BndBox2d; tol: cfloat) {.cdecl, importcpp: "SetGap",
    dynlib: tkmath.}
proc enlarge*(this: var BndBox2d; theTol: cfloat) {.cdecl, importcpp: "Enlarge",
    dynlib: tkmath.}
proc get*(this: BndBox2d; aXmin: var cfloat; aYmin: var cfloat; aXmax: var cfloat;
         aYmax: var cfloat) {.noSideEffect, cdecl, importcpp: "Get", dynlib: tkmath.}
proc openXmin*(this: var BndBox2d) {.cdecl, importcpp: "OpenXmin", dynlib: tkmath.}
proc openXmax*(this: var BndBox2d) {.cdecl, importcpp: "OpenXmax", dynlib: tkmath.}
proc openYmin*(this: var BndBox2d) {.cdecl, importcpp: "OpenYmin", dynlib: tkmath.}
proc openYmax*(this: var BndBox2d) {.cdecl, importcpp: "OpenYmax", dynlib: tkmath.}
proc isOpenXmin*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsOpenXmin",
                                     dynlib: tkmath.}
proc isOpenXmax*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsOpenXmax",
                                     dynlib: tkmath.}
proc isOpenYmin*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsOpenYmin",
                                     dynlib: tkmath.}
proc isOpenYmax*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsOpenYmax",
                                     dynlib: tkmath.}
proc isWhole*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsWhole",
                                  dynlib: tkmath.}
proc isVoid*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                                 dynlib: tkmath.}
proc transformed*(this: BndBox2d; t: Trsf2d): BndBox2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc add*(this: var BndBox2d; other: BndBox2d) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndBox2d; thePnt: Pnt2d) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndBox2d; thePnt: Pnt2d; theDir: Dir2d) {.cdecl, importcpp: "Add",
    dynlib: tkmath.}
proc add*(this: var BndBox2d; d: Dir2d) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc isOut*(this: BndBox2d; p: Pnt2d): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                        dynlib: tkmath.}
proc isOut*(this: BndBox2d; other: BndBox2d): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndBox2d; theOther: BndBox2d; theTrsf: Trsf2d): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndBox2d; t1: Trsf2d; other: BndBox2d; t2: Trsf2d): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", dynlib: tkmath.}
proc dump*(this: BndBox2d) {.noSideEffect, cdecl, importcpp: "Dump", dynlib: tkmath.}
proc squareExtent*(this: BndBox2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareExtent", dynlib: tkmath.}