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


proc constructBndBox*(): BndBox {.constructor, importcpp: "Bnd_Box(@)",
                               header: "Bnd_Box.hxx".}
proc constructBndBox*(theMin: Pnt; theMax: Pnt): BndBox {.constructor,
    importcpp: "Bnd_Box(@)", header: "Bnd_Box.hxx".}
proc setWhole*(this: var BndBox) {.importcpp: "SetWhole", header: "Bnd_Box.hxx".}
proc setVoid*(this: var BndBox) {.importcpp: "SetVoid", header: "Bnd_Box.hxx".}
proc set*(this: var BndBox; p: Pnt) {.importcpp: "Set", header: "Bnd_Box.hxx".}
proc set*(this: var BndBox; p: Pnt; d: Dir) {.importcpp: "Set", header: "Bnd_Box.hxx".}
proc update*(this: var BndBox; aXmin: float; aYmin: float; aZmin: float; aXmax: float;
            aYmax: float; aZmax: float) {.importcpp: "Update", header: "Bnd_Box.hxx".}
proc update*(this: var BndBox; x: float; y: float; z: float) {.importcpp: "Update",
    header: "Bnd_Box.hxx".}
proc getGap*(this: BndBox): float {.noSideEffect, importcpp: "GetGap",
                                header: "Bnd_Box.hxx".}
proc setGap*(this: var BndBox; tol: float) {.importcpp: "SetGap", header: "Bnd_Box.hxx".}
proc enlarge*(this: var BndBox; tol: float) {.importcpp: "Enlarge",
                                        header: "Bnd_Box.hxx".}
proc get*(this: BndBox; theXmin: var float; theYmin: var float; theZmin: var float;
         theXmax: var float; theYmax: var float; theZmax: var float) {.noSideEffect,
    importcpp: "Get", header: "Bnd_Box.hxx".}
proc cornerMin*(this: BndBox): Pnt {.noSideEffect, importcpp: "CornerMin",
                                 header: "Bnd_Box.hxx".}
proc cornerMax*(this: BndBox): Pnt {.noSideEffect, importcpp: "CornerMax",
                                 header: "Bnd_Box.hxx".}
proc openXmin*(this: var BndBox) {.importcpp: "OpenXmin", header: "Bnd_Box.hxx".}
proc openXmax*(this: var BndBox) {.importcpp: "OpenXmax", header: "Bnd_Box.hxx".}
proc openYmin*(this: var BndBox) {.importcpp: "OpenYmin", header: "Bnd_Box.hxx".}
proc openYmax*(this: var BndBox) {.importcpp: "OpenYmax", header: "Bnd_Box.hxx".}
proc openZmin*(this: var BndBox) {.importcpp: "OpenZmin", header: "Bnd_Box.hxx".}
proc openZmax*(this: var BndBox) {.importcpp: "OpenZmax", header: "Bnd_Box.hxx".}
proc isOpen*(this: BndBox): bool {.noSideEffect, importcpp: "IsOpen",
                               header: "Bnd_Box.hxx".}
proc isOpenXmin*(this: BndBox): bool {.noSideEffect, importcpp: "IsOpenXmin",
                                   header: "Bnd_Box.hxx".}
proc isOpenXmax*(this: BndBox): bool {.noSideEffect, importcpp: "IsOpenXmax",
                                   header: "Bnd_Box.hxx".}
proc isOpenYmin*(this: BndBox): bool {.noSideEffect, importcpp: "IsOpenYmin",
                                   header: "Bnd_Box.hxx".}
proc isOpenYmax*(this: BndBox): bool {.noSideEffect, importcpp: "IsOpenYmax",
                                   header: "Bnd_Box.hxx".}
proc isOpenZmin*(this: BndBox): bool {.noSideEffect, importcpp: "IsOpenZmin",
                                   header: "Bnd_Box.hxx".}
proc isOpenZmax*(this: BndBox): bool {.noSideEffect, importcpp: "IsOpenZmax",
                                   header: "Bnd_Box.hxx".}
proc isWhole*(this: BndBox): bool {.noSideEffect, importcpp: "IsWhole",
                                header: "Bnd_Box.hxx".}
proc isVoid*(this: BndBox): bool {.noSideEffect, importcpp: "IsVoid",
                               header: "Bnd_Box.hxx".}
proc isXThin*(this: BndBox; tol: float): bool {.noSideEffect, importcpp: "IsXThin",
    header: "Bnd_Box.hxx".}
proc isYThin*(this: BndBox; tol: float): bool {.noSideEffect, importcpp: "IsYThin",
    header: "Bnd_Box.hxx".}
proc isZThin*(this: BndBox; tol: float): bool {.noSideEffect, importcpp: "IsZThin",
    header: "Bnd_Box.hxx".}
proc isThin*(this: BndBox; tol: float): bool {.noSideEffect, importcpp: "IsThin",
    header: "Bnd_Box.hxx".}
proc transformed*(this: BndBox; t: Trsf): BndBox {.noSideEffect,
    importcpp: "Transformed", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; other: BndBox) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; p: Pnt) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; p: Pnt; d: Dir) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; d: Dir) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; p: Pnt): bool {.noSideEffect, importcpp: "IsOut",
                                    header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; L: Lin): bool {.noSideEffect, importcpp: "IsOut",
                                    header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; p: Pln): bool {.noSideEffect, importcpp: "IsOut",
                                    header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; other: BndBox): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; other: BndBox; t: Trsf): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; t1: Trsf; other: BndBox; t2: Trsf): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; p1: Pnt; p2: Pnt; d: Dir): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc distance*(this: BndBox; other: BndBox): float {.noSideEffect,
    importcpp: "Distance", header: "Bnd_Box.hxx".}
proc dump*(this: BndBox) {.noSideEffect, importcpp: "Dump", header: "Bnd_Box.hxx".}
proc squareExtent*(this: BndBox): float {.noSideEffect, importcpp: "SquareExtent",
                                      header: "Bnd_Box.hxx".}
proc finitePart*(this: BndBox): BndBox {.noSideEffect, importcpp: "FinitePart",
                                     header: "Bnd_Box.hxx".}
proc hasFinitePart*(this: BndBox): bool {.noSideEffect, importcpp: "HasFinitePart",
                                      header: "Bnd_Box.hxx".}
proc dumpJson*(this: BndBox; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Bnd_Box.hxx".}
proc initFromJson*(this: var BndBox; theSStream: StandardSStream;
                  theStreamPos: var int): bool {.importcpp: "InitFromJson",
    header: "Bnd_Box.hxx".}
