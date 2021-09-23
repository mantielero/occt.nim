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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pln"
type
  Bnd_Box* {.importcpp: "Bnd_Box", header: "Bnd_Box.hxx", bycopy.} = object ## ! Creates an empty Box.
                                                                    ## ! The constructed box is qualified Void. Its gap is null.
                                                                    ## ! Bit flags.
    Bnd_Box* {.importc: "Bnd_Box".}: Standard_NODISCARD


proc constructBnd_Box*(): Bnd_Box {.constructor, importcpp: "Bnd_Box(@)",
                                 header: "Bnd_Box.hxx".}
proc constructBnd_Box*(theMin: gp_Pnt; theMax: gp_Pnt): Bnd_Box {.constructor,
    importcpp: "Bnd_Box(@)", header: "Bnd_Box.hxx".}
proc SetWhole*(this: var Bnd_Box) {.importcpp: "SetWhole", header: "Bnd_Box.hxx".}
proc SetVoid*(this: var Bnd_Box) {.importcpp: "SetVoid", header: "Bnd_Box.hxx".}
proc Set*(this: var Bnd_Box; P: gp_Pnt) {.importcpp: "Set", header: "Bnd_Box.hxx".}
proc Set*(this: var Bnd_Box; P: gp_Pnt; D: gp_Dir) {.importcpp: "Set",
    header: "Bnd_Box.hxx".}
proc Update*(this: var Bnd_Box; aXmin: Standard_Real; aYmin: Standard_Real;
            aZmin: Standard_Real; aXmax: Standard_Real; aYmax: Standard_Real;
            aZmax: Standard_Real) {.importcpp: "Update", header: "Bnd_Box.hxx".}
proc Update*(this: var Bnd_Box; X: Standard_Real; Y: Standard_Real; Z: Standard_Real) {.
    importcpp: "Update", header: "Bnd_Box.hxx".}
proc GetGap*(this: Bnd_Box): Standard_Real {.noSideEffect, importcpp: "GetGap",
    header: "Bnd_Box.hxx".}
proc SetGap*(this: var Bnd_Box; Tol: Standard_Real) {.importcpp: "SetGap",
    header: "Bnd_Box.hxx".}
proc Enlarge*(this: var Bnd_Box; Tol: Standard_Real) {.importcpp: "Enlarge",
    header: "Bnd_Box.hxx".}
proc Get*(this: Bnd_Box; theXmin: var Standard_Real; theYmin: var Standard_Real;
         theZmin: var Standard_Real; theXmax: var Standard_Real;
         theYmax: var Standard_Real; theZmax: var Standard_Real) {.noSideEffect,
    importcpp: "Get", header: "Bnd_Box.hxx".}
proc CornerMin*(this: Bnd_Box): gp_Pnt {.noSideEffect, importcpp: "CornerMin",
                                     header: "Bnd_Box.hxx".}
proc CornerMax*(this: Bnd_Box): gp_Pnt {.noSideEffect, importcpp: "CornerMax",
                                     header: "Bnd_Box.hxx".}
proc OpenXmin*(this: var Bnd_Box) {.importcpp: "OpenXmin", header: "Bnd_Box.hxx".}
proc OpenXmax*(this: var Bnd_Box) {.importcpp: "OpenXmax", header: "Bnd_Box.hxx".}
proc OpenYmin*(this: var Bnd_Box) {.importcpp: "OpenYmin", header: "Bnd_Box.hxx".}
proc OpenYmax*(this: var Bnd_Box) {.importcpp: "OpenYmax", header: "Bnd_Box.hxx".}
proc OpenZmin*(this: var Bnd_Box) {.importcpp: "OpenZmin", header: "Bnd_Box.hxx".}
proc OpenZmax*(this: var Bnd_Box) {.importcpp: "OpenZmax", header: "Bnd_Box.hxx".}
proc IsOpen*(this: Bnd_Box): Standard_Boolean {.noSideEffect, importcpp: "IsOpen",
    header: "Bnd_Box.hxx".}
proc IsOpenXmin*(this: Bnd_Box): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenXmin", header: "Bnd_Box.hxx".}
proc IsOpenXmax*(this: Bnd_Box): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenXmax", header: "Bnd_Box.hxx".}
proc IsOpenYmin*(this: Bnd_Box): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenYmin", header: "Bnd_Box.hxx".}
proc IsOpenYmax*(this: Bnd_Box): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenYmax", header: "Bnd_Box.hxx".}
proc IsOpenZmin*(this: Bnd_Box): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenZmin", header: "Bnd_Box.hxx".}
proc IsOpenZmax*(this: Bnd_Box): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenZmax", header: "Bnd_Box.hxx".}
proc IsWhole*(this: Bnd_Box): Standard_Boolean {.noSideEffect, importcpp: "IsWhole",
    header: "Bnd_Box.hxx".}
proc IsVoid*(this: Bnd_Box): Standard_Boolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_Box.hxx".}
proc IsXThin*(this: Bnd_Box; tol: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsXThin", header: "Bnd_Box.hxx".}
proc IsYThin*(this: Bnd_Box; tol: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsYThin", header: "Bnd_Box.hxx".}
proc IsZThin*(this: Bnd_Box; tol: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsZThin", header: "Bnd_Box.hxx".}
proc IsThin*(this: Bnd_Box; tol: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsThin", header: "Bnd_Box.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Add*(this: var Bnd_Box; Other: Bnd_Box) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc Add*(this: var Bnd_Box; P: gp_Pnt) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc Add*(this: var Bnd_Box; P: gp_Pnt; D: gp_Dir) {.importcpp: "Add",
    header: "Bnd_Box.hxx".}
proc Add*(this: var Bnd_Box; D: gp_Dir) {.importcpp: "Add", header: "Bnd_Box.hxx".}
proc IsOut*(this: Bnd_Box; P: gp_Pnt): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc IsOut*(this: Bnd_Box; L: gp_Lin): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc IsOut*(this: Bnd_Box; P: gp_Pln): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc IsOut*(this: Bnd_Box; Other: Bnd_Box): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc IsOut*(this: Bnd_Box; Other: Bnd_Box; T: gp_Trsf): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc IsOut*(this: Bnd_Box; T1: gp_Trsf; Other: Bnd_Box; T2: gp_Trsf): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc IsOut*(this: Bnd_Box; P1: gp_Pnt; P2: gp_Pnt; D: gp_Dir): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_Box.hxx".}
proc Distance*(this: Bnd_Box; Other: Bnd_Box): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "Bnd_Box.hxx".}
proc Dump*(this: Bnd_Box) {.noSideEffect, importcpp: "Dump", header: "Bnd_Box.hxx".}
proc SquareExtent*(this: Bnd_Box): Standard_Real {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_Box.hxx".}
proc FinitePart*(this: Bnd_Box): Bnd_Box {.noSideEffect, importcpp: "FinitePart",
                                       header: "Bnd_Box.hxx".}
proc HasFinitePart*(this: Bnd_Box): Standard_Boolean {.noSideEffect,
    importcpp: "HasFinitePart", header: "Bnd_Box.hxx".}
proc DumpJson*(this: Bnd_Box; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Bnd_Box.hxx".}
proc InitFromJson*(this: var Bnd_Box; theSStream: Standard_SStream;
                  theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "InitFromJson", header: "Bnd_Box.hxx".}