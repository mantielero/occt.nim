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
    bndBox* {.importc: "Bnd_Box".}: StandardNODISCARD


proc constructBndBox*(): BndBox {.constructor, importcpp: "Bnd_Box(@)",
                               header: "Bnd_Box.hxx".}
proc constructBndBox*(theMin: GpPnt; theMax: GpPnt): BndBox {.constructor,
    importcpp: "Bnd_Box(@)", header: "Bnd_Box.hxx".}
proc setWhole*(this: var BndBox) {.importcpp: "SetWhole", header: "Bnd_Box.hxx".}
proc setVoid*(this: var BndBox) {.importcpp: "SetVoid", header: "Bnd_Box.hxx".}
proc set*(this: var BndBox; p: GpPnt) {.importcpp: "Set", header: "Bnd_Box.hxx".}
proc set*(this: var BndBox; p: GpPnt; d: GpDir) {.importcpp: "Set", header: "Bnd_Box.hxx".}
proc update*(this: var BndBox; aXmin: StandardReal; aYmin: StandardReal;
            aZmin: StandardReal; aXmax: StandardReal; aYmax: StandardReal;
            aZmax: StandardReal) {.importcpp: "Update", header: "Bnd_Box.hxx".}
proc update*(this: var BndBox; x: StandardReal; y: StandardReal; z: StandardReal) {.
    importcpp: "Update", header: "Bnd_Box.hxx".}
proc getGap*(this: BndBox): StandardReal {.noSideEffect, importcpp: "GetGap",
                                       header: "Bnd_Box.hxx".}
proc setGap*(this: var BndBox; tol: StandardReal) {.importcpp: "SetGap",
    header: "Bnd_Box.hxx".}
proc enlarge*(this: var BndBox; tol: StandardReal) {.importcpp: "Enlarge",
    header: "Bnd_Box.hxx".}
proc get*(this: BndBox; theXmin: var StandardReal; theYmin: var StandardReal;
         theZmin: var StandardReal; theXmax: var StandardReal;
         theYmax: var StandardReal; theZmax: var StandardReal) {.noSideEffect,
    importcpp: "Get", header: "Bnd_Box.hxx".}
proc cornerMin*(this: BndBox): GpPnt {.noSideEffect, importcpp: "CornerMin",
                                   header: "Bnd_Box.hxx".}
proc cornerMax*(this: BndBox): GpPnt {.noSideEffect, importcpp: "CornerMax",
                                   header: "Bnd_Box.hxx".}
proc openXmin*(this: var BndBox) {.importcpp: "OpenXmin", header: "Bnd_Box.hxx".}
proc openXmax*(this: var BndBox) {.importcpp: "OpenXmax", header: "Bnd_Box.hxx".}
proc openYmin*(this: var BndBox) {.importcpp: "OpenYmin", header: "Bnd_Box.hxx".}
proc openYmax*(this: var BndBox) {.importcpp: "OpenYmax", header: "Bnd_Box.hxx".}
proc openZmin*(this: var BndBox) {.importcpp: "OpenZmin", header: "Bnd_Box.hxx".}
proc openZmax*(this: var BndBox) {.importcpp: "OpenZmax", header: "Bnd_Box.hxx".}
proc isOpen*(this: BndBox): StandardBoolean {.noSideEffect, importcpp: "IsOpen",
    header: "Bnd_Box.hxx".}
proc isOpenXmin*(this: BndBox): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenXmin", header: "Bnd_Box.hxx".}
proc isOpenXmax*(this: BndBox): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenXmax", header: "Bnd_Box.hxx".}
proc isOpenYmin*(this: BndBox): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenYmin", header: "Bnd_Box.hxx".}
proc isOpenYmax*(this: BndBox): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenYmax", header: "Bnd_Box.hxx".}
proc isOpenZmin*(this: BndBox): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenZmin", header: "Bnd_Box.hxx".}
proc isOpenZmax*(this: BndBox): StandardBoolean {.noSideEffect,
    importcpp: "IsOpenZmax", header: "Bnd_Box.hxx".}
proc isWhole*(this: BndBox): StandardBoolean {.noSideEffect, importcpp: "IsWhole",
    header: "Bnd_Box.hxx".}
proc isVoid*(this: BndBox): StandardBoolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_Box.hxx".}
proc isXThin*(this: BndBox; tol: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsXThin", header: "Bnd_Box.hxx".}
proc isYThin*(this: BndBox; tol: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsYThin", header: "Bnd_Box.hxx".}
proc isZThin*(this: BndBox; tol: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsZThin", header: "Bnd_Box.hxx".}
proc isThin*(this: BndBox; tol: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsThin", header: "Bnd_Box.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc add*(this: var BndBox; other: BndBox) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; p: GpPnt) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; p: GpPnt; d: GpDir) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc add*(this: var BndBox; d: GpDir) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; p: GpPnt): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; L: GpLin): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; p: GpPln): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; other: BndBox): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; other: BndBox; t: GpTrsf): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; t1: GpTrsf; other: BndBox; t2: GpTrsf): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc isOut*(this: BndBox; p1: GpPnt; p2: GpPnt; d: GpDir): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc distance*(this: BndBox; other: BndBox): StandardReal {.noSideEffect,
    importcpp: "Distance", header: "Bnd_Box.hxx".}
proc dump*(this: BndBox) {.noSideEffect, importcpp: "Dump", header: "Bnd_Box.hxx".}
proc squareExtent*(this: BndBox): StandardReal {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_Box.hxx".}
proc finitePart*(this: BndBox): BndBox {.noSideEffect, importcpp: "FinitePart",
                                     header: "Bnd_Box.hxx".}
proc hasFinitePart*(this: BndBox): StandardBoolean {.noSideEffect,
    importcpp: "HasFinitePart", header: "Bnd_Box.hxx".}
proc dumpJson*(this: BndBox; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Bnd_Box.hxx".}
proc initFromJson*(this: var BndBox; theSStream: StandardSStream;
                  theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: "Bnd_Box.hxx".}

