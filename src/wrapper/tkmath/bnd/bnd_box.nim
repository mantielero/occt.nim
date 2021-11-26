##  Created on: 1991-01-28
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pln"
type
  BndBox* {.importcpp: "Bnd_Box", header: "Bnd_Box.hxx", bycopy.} = object ## ! Creates an empty Box.
                                                                   ## ! The constructed box is qualified Void. Its gap is null.
                                                                   ## ! Bit flags.


proc newBndBox*(): BndBox {.cdecl, constructor, importcpp: "Bnd_Box(@)", dynlib: tkmath.}
proc newBndBox*(theMin: Pnt; theMax: Pnt): BndBox {.cdecl, constructor,
    importcpp: "Bnd_Box(@)", dynlib: tkmath.}
proc setWhole*(this: var BndBox) {.cdecl, importcpp: "SetWhole", dynlib: tkmath.}
proc setVoid*(this: var BndBox) {.cdecl, importcpp: "SetVoid", dynlib: tkmath.}
proc set*(this: var BndBox; p: Pnt) {.cdecl, importcpp: "Set", dynlib: tkmath.}
proc set*(this: var BndBox; p: Pnt; d: Dir) {.cdecl, importcpp: "Set", dynlib: tkmath.}
proc update*(this: var BndBox; aXmin: cfloat; aYmin: cfloat; aZmin: cfloat; aXmax: cfloat;
            aYmax: cfloat; aZmax: cfloat) {.cdecl, importcpp: "Update", dynlib: tkmath.}
proc update*(this: var BndBox; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "Update", dynlib: tkmath.}
proc getGap*(this: BndBox): cfloat {.noSideEffect, cdecl, importcpp: "GetGap",
                                 dynlib: tkmath.}
proc setGap*(this: var BndBox; tol: cfloat) {.cdecl, importcpp: "SetGap", dynlib: tkmath.}
proc enlarge*(this: var BndBox; tol: cfloat) {.cdecl, importcpp: "Enlarge",
    dynlib: tkmath.}
proc get*(this: BndBox; theXmin: var cfloat; theYmin: var cfloat; theZmin: var cfloat;
         theXmax: var cfloat; theYmax: var cfloat; theZmax: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Get", dynlib: tkmath.}
proc cornerMin*(this: BndBox): Pnt {.noSideEffect, cdecl, importcpp: "CornerMin",
                                 dynlib: tkmath.}
proc cornerMax*(this: BndBox): Pnt {.noSideEffect, cdecl, importcpp: "CornerMax",
                                 dynlib: tkmath.}
proc openXmin*(this: var BndBox) {.cdecl, importcpp: "OpenXmin", dynlib: tkmath.}
proc openXmax*(this: var BndBox) {.cdecl, importcpp: "OpenXmax", dynlib: tkmath.}
proc openYmin*(this: var BndBox) {.cdecl, importcpp: "OpenYmin", dynlib: tkmath.}
proc openYmax*(this: var BndBox) {.cdecl, importcpp: "OpenYmax", dynlib: tkmath.}
proc openZmin*(this: var BndBox) {.cdecl, importcpp: "OpenZmin", dynlib: tkmath.}
proc openZmax*(this: var BndBox) {.cdecl, importcpp: "OpenZmax", dynlib: tkmath.}
proc isOpen*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpen",
                               dynlib: tkmath.}
proc isOpenXmin*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenXmin",
                                   dynlib: tkmath.}
proc isOpenXmax*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenXmax",
                                   dynlib: tkmath.}
proc isOpenYmin*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenYmin",
                                   dynlib: tkmath.}
proc isOpenYmax*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenYmax",
                                   dynlib: tkmath.}
proc isOpenZmin*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenZmin",
                                   dynlib: tkmath.}
proc isOpenZmax*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenZmax",
                                   dynlib: tkmath.}
proc isWhole*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsWhole",
                                dynlib: tkmath.}
proc isVoid*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               dynlib: tkmath.}
proc isXThin*(this: BndBox; tol: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsXThin", dynlib: tkmath.}
proc isYThin*(this: BndBox; tol: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsYThin", dynlib: tkmath.}
proc isZThin*(this: BndBox; tol: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsZThin", dynlib: tkmath.}
proc isThin*(this: BndBox; tol: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsThin", dynlib: tkmath.}
proc transformed*(this: BndBox; t: Trsf): BndBox {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc add*(this: var BndBox; other: BndBox) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndBox; p: Pnt) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndBox; p: Pnt; d: Dir) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndBox; d: Dir) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc isOut*(this: BndBox; p: Pnt): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                    dynlib: tkmath.}
proc isOut*(this: BndBox; L: Lin): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                    dynlib: tkmath.}
proc isOut*(this: BndBox; p: Pln): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                    dynlib: tkmath.}
proc isOut*(this: BndBox; other: BndBox): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndBox; other: BndBox; t: Trsf): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndBox; t1: Trsf; other: BndBox; t2: Trsf): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndBox; p1: Pnt; p2: Pnt; d: Dir): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc distance*(this: BndBox; other: BndBox): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc dump*(this: BndBox) {.noSideEffect, cdecl, importcpp: "Dump", dynlib: tkmath.}
proc squareExtent*(this: BndBox): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", dynlib: tkmath.}
proc finitePart*(this: BndBox): BndBox {.noSideEffect, cdecl, importcpp: "FinitePart",
                                     dynlib: tkmath.}
proc hasFinitePart*(this: BndBox): bool {.noSideEffect, cdecl,
                                      importcpp: "HasFinitePart", dynlib: tkmath.}
proc dumpJson*(this: BndBox; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*(this: var BndBox; theSStream: StandardSStream;
                  theStreamPos: var cint): bool {.cdecl, importcpp: "InitFromJson",
    dynlib: tkmath.}