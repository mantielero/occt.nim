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

import
  ../gp/gp_Pnt2d, ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
type
  Bnd_Box2d* {.importcpp: "Bnd_Box2d", header: "Bnd_Box2d.hxx", bycopy.} = object ## !
                                                                          ## Creates an empty 2D
                                                                          ## bounding box.
                                                                          ## ! The
                                                                          ## constructed box is
                                                                          ## qualified Void. Its gap is null.
                                                                          ## ! Bit flags.
    Bnd_Box2d* {.importc: "Bnd_Box2d".}: Standard_NODISCARD


proc constructBnd_Box2d*(): Bnd_Box2d {.constructor, importcpp: "Bnd_Box2d(@)",
                                     header: "Bnd_Box2d.hxx".}
proc SetWhole*(this: var Bnd_Box2d) {.importcpp: "SetWhole", header: "Bnd_Box2d.hxx".}
proc SetVoid*(this: var Bnd_Box2d) {.importcpp: "SetVoid", header: "Bnd_Box2d.hxx".}
proc Set*(this: var Bnd_Box2d; thePnt: gp_Pnt2d) {.importcpp: "Set",
    header: "Bnd_Box2d.hxx".}
proc Set*(this: var Bnd_Box2d; thePnt: gp_Pnt2d; theDir: gp_Dir2d) {.importcpp: "Set",
    header: "Bnd_Box2d.hxx".}
proc Update*(this: var Bnd_Box2d; aXmin: Standard_Real; aYmin: Standard_Real;
            aXmax: Standard_Real; aYmax: Standard_Real) {.importcpp: "Update",
    header: "Bnd_Box2d.hxx".}
proc Update*(this: var Bnd_Box2d; X: Standard_Real; Y: Standard_Real) {.
    importcpp: "Update", header: "Bnd_Box2d.hxx".}
proc GetGap*(this: Bnd_Box2d): Standard_Real {.noSideEffect, importcpp: "GetGap",
    header: "Bnd_Box2d.hxx".}
proc SetGap*(this: var Bnd_Box2d; Tol: Standard_Real) {.importcpp: "SetGap",
    header: "Bnd_Box2d.hxx".}
proc Enlarge*(this: var Bnd_Box2d; theTol: Standard_Real) {.importcpp: "Enlarge",
    header: "Bnd_Box2d.hxx".}
proc Get*(this: Bnd_Box2d; aXmin: var Standard_Real; aYmin: var Standard_Real;
         aXmax: var Standard_Real; aYmax: var Standard_Real) {.noSideEffect,
    importcpp: "Get", header: "Bnd_Box2d.hxx".}
proc OpenXmin*(this: var Bnd_Box2d) {.importcpp: "OpenXmin", header: "Bnd_Box2d.hxx".}
proc OpenXmax*(this: var Bnd_Box2d) {.importcpp: "OpenXmax", header: "Bnd_Box2d.hxx".}
proc OpenYmin*(this: var Bnd_Box2d) {.importcpp: "OpenYmin", header: "Bnd_Box2d.hxx".}
proc OpenYmax*(this: var Bnd_Box2d) {.importcpp: "OpenYmax", header: "Bnd_Box2d.hxx".}
proc IsOpenXmin*(this: Bnd_Box2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenXmin", header: "Bnd_Box2d.hxx".}
proc IsOpenXmax*(this: Bnd_Box2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenXmax", header: "Bnd_Box2d.hxx".}
proc IsOpenYmin*(this: Bnd_Box2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenYmin", header: "Bnd_Box2d.hxx".}
proc IsOpenYmax*(this: Bnd_Box2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpenYmax", header: "Bnd_Box2d.hxx".}
proc IsWhole*(this: Bnd_Box2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsWhole", header: "Bnd_Box2d.hxx".}
proc IsVoid*(this: Bnd_Box2d): Standard_Boolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_Box2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Add*(this: var Bnd_Box2d; Other: Bnd_Box2d) {.importcpp: "Add",
    header: "Bnd_Box2d.hxx".}
proc Add*(this: var Bnd_Box2d; thePnt: gp_Pnt2d) {.importcpp: "Add",
    header: "Bnd_Box2d.hxx".}
proc Add*(this: var Bnd_Box2d; thePnt: gp_Pnt2d; theDir: gp_Dir2d) {.importcpp: "Add",
    header: "Bnd_Box2d.hxx".}
proc Add*(this: var Bnd_Box2d; D: gp_Dir2d) {.importcpp: "Add", header: "Bnd_Box2d.hxx".}
proc IsOut*(this: Bnd_Box2d; P: gp_Pnt2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc IsOut*(this: Bnd_Box2d; Other: Bnd_Box2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc IsOut*(this: Bnd_Box2d; theOther: Bnd_Box2d; theTrsf: gp_Trsf2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc IsOut*(this: Bnd_Box2d; T1: gp_Trsf2d; Other: Bnd_Box2d; T2: gp_Trsf2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc Dump*(this: Bnd_Box2d) {.noSideEffect, importcpp: "Dump", header: "Bnd_Box2d.hxx".}
proc SquareExtent*(this: Bnd_Box2d): Standard_Real {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_Box2d.hxx".}