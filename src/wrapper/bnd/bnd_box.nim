import bnd_types
import ../standard/standard_types
#import ../tcolstd/tcolstd_types
import ../gp/gp_types
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


proc newBndBox*(): BndBox {.cdecl, constructor, importcpp: "Bnd_Box(@)", header: "Bnd_Box.hxx".}
proc newBndBox*(theMin: gp_Pnt; theMax: gp_Pnt): BndBox {.cdecl, constructor,
    importcpp: "Bnd_Box(@)", header: "Bnd_Box.hxx".}
proc setWhole*(this: var BndBox) {.cdecl, importcpp: "SetWhole", header: "Bnd_Box.hxx".}
proc setVoid*(this: var BndBox) {.cdecl, importcpp: "SetVoid", header: "Bnd_Box.hxx".}
proc set*(this: var BndBox; p: gp_Pnt) {.cdecl, importcpp: "Set", header: "Bnd_Box.hxx".}
proc set*(this: var BndBox; p: gp_Pnt; d: DirObj) {.cdecl, importcpp: "Set", header: "Bnd_Box.hxx".}
proc update*(this: var BndBox; aXmin: cfloat; aYmin: cfloat; aZmin: cfloat; aXmax: cfloat;
            aYmax: cfloat; aZmax: cfloat) {.cdecl, importcpp: "Update", header: "Bnd_Box.hxx".}
proc update*(this: var BndBox; x: cfloat; y: cfloat; z: cfloat) {.cdecl,
    importcpp: "Update", header: "Bnd_Box.hxx".}
proc getGap*(this: BndBox): cfloat {.noSideEffect, cdecl, importcpp: "GetGap",
                                 header: "Bnd_Box.hxx".}
proc setGap*(this: var BndBox; tol: cfloat) {.cdecl, importcpp: "SetGap", header: "Bnd_Box.hxx".}
proc enlarge*(this: var BndBox; tol: cfloat) {.cdecl, importcpp: "Enlarge",
    header: "Bnd_Box.hxx".}
proc get*(this: BndBox; theXmin: var cfloat; theYmin: var cfloat; theZmin: var cfloat;
         theXmax: var cfloat; theYmax: var cfloat; theZmax: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Get", header: "Bnd_Box.hxx".}
proc cornerMin*(this: BndBox): gp_Pnt {.noSideEffect, cdecl, importcpp: "CornerMin",
                                 header: "Bnd_Box.hxx".}
proc cornerMax*(this: BndBox): gp_Pnt {.noSideEffect, cdecl, importcpp: "CornerMax",
                                 header: "Bnd_Box.hxx".}
proc openXmin*(this: var BndBox) {.cdecl, importcpp: "OpenXmin", header: "Bnd_Box.hxx".}
proc openXmax*(this: var BndBox) {.cdecl, importcpp: "OpenXmax", header: "Bnd_Box.hxx".}
proc openYmin*(this: var BndBox) {.cdecl, importcpp: "OpenYmin", header: "Bnd_Box.hxx".}
proc openYmax*(this: var BndBox) {.cdecl, importcpp: "OpenYmax", header: "Bnd_Box.hxx".}
proc openZmin*(this: var BndBox) {.cdecl, importcpp: "OpenZmin", header: "Bnd_Box.hxx".}
proc openZmax*(this: var BndBox) {.cdecl, importcpp: "OpenZmax", header: "Bnd_Box.hxx".}
proc isOpen*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpen",
                               header: "Bnd_Box.hxx".}
proc isOpenXmin*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenXmin",
                                   header: "Bnd_Box.hxx".}
proc isOpenXmax*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenXmax",
                                   header: "Bnd_Box.hxx".}
proc isOpenYmin*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenYmin",
                                   header: "Bnd_Box.hxx".}
proc isOpenYmax*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenYmax",
                                   header: "Bnd_Box.hxx".}
proc isOpenZmin*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenZmin",
                                   header: "Bnd_Box.hxx".}
proc isOpenZmax*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsOpenZmax",
                                   header: "Bnd_Box.hxx".}
proc isWhole*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsWhole",
                                header: "Bnd_Box.hxx".}
proc isVoid*(this: BndBox): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               header: "Bnd_Box.hxx".}
proc isXThin*(this: BndBox; tol: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsXThin", header: "Bnd_Box.hxx".}
proc isYThin*(this: BndBox; tol: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsYThin", header: "Bnd_Box.hxx".}
proc isZThin*(this: BndBox; tol: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsZThin", header: "Bnd_Box.hxx".}
proc isThin*(this: BndBox; tol: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsThin", header: "Bnd_Box.hxx".}
proc transformed*(this: BndBox; t: TrsfObj): BndBox {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; other: BndBox) {.cdecl, importcpp: "Add", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; p: gp_Pnt) {.cdecl, importcpp: "Add", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; p: gp_Pnt; d: DirObj) {.cdecl, importcpp: "Add", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; d: DirObj) {.cdecl, importcpp: "Add", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; p: gp_Pnt): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                    header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; L: gp_Lin): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                    header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; p: PlnObj): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                    header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; other: BndBox): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; other: BndBox; t: TrsfObj): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; t1: TrsfObj; other: BndBox; t2: TrsfObj): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; p1: gp_Pnt; p2: gp_Pnt; d: DirObj): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc distance*(this: BndBox; other: BndBox): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "Bnd_Box.hxx".}
proc dump*(this: BndBox) {.noSideEffect, cdecl, importcpp: "Dump", header: "Bnd_Box.hxx".}
proc squareExtent*(this: BndBox): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", header: "Bnd_Box.hxx".}
proc finitePart*(this: BndBox): BndBox {.noSideEffect, cdecl, importcpp: "FinitePart",
                                     header: "Bnd_Box.hxx".}
proc hasFinitePart*(this: BndBox): bool {.noSideEffect, cdecl,
                                      importcpp: "HasFinitePart", header: "Bnd_Box.hxx".}
proc dumpJson*(this: BndBox; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "Bnd_Box.hxx".}
proc initFromJson*(this: var BndBox; theSStream: StandardSStream;
                  theStreamPos: var cint): bool {.cdecl, importcpp: "InitFromJson",
    header: "Bnd_Box.hxx".}
