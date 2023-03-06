import bnd_types
import ../standard/standard_types
#import ../tcolstd/tcolstd_types
import ../gp/gp_types
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


proc newBndBox2d*(): BndBox2d {.cdecl, constructor, importcpp: "Bnd_Box2d(@)",
                             header: "Bnd_Box2d.hxx".}
proc setWhole*(this: var BndBox2d) {.cdecl, importcpp: "SetWhole", header: "Bnd_Box2d.hxx".}
proc setVoid*(this: var BndBox2d) {.cdecl, importcpp: "SetVoid", header: "Bnd_Box2d.hxx".}
proc set*(this: var BndBox2d; thePnt: gp_Pnt2d) {.cdecl, importcpp: "Set", header: "Bnd_Box2d.hxx".}
proc set*(this: var BndBox2d; thePnt: gp_Pnt2d; theDir: Dir2dObj) {.cdecl, importcpp: "Set",
    header: "Bnd_Box2d.hxx".}
proc update*(this: var BndBox2d; aXmin: cfloat; aYmin: cfloat; aXmax: cfloat;
            aYmax: cfloat) {.cdecl, importcpp: "Update", header: "Bnd_Box2d.hxx".}
proc update*(this: var BndBox2d; x: cfloat; y: cfloat) {.cdecl, importcpp: "Update",
    header: "Bnd_Box2d.hxx".}
proc getGap*(this: BndBox2d): cfloat {.noSideEffect, cdecl, importcpp: "GetGap",
                                   header: "Bnd_Box2d.hxx".}
proc setGap*(this: var BndBox2d; tol: cfloat) {.cdecl, importcpp: "SetGap",
    header: "Bnd_Box2d.hxx".}
proc enlarge*(this: var BndBox2d; theTol: cfloat) {.cdecl, importcpp: "Enlarge",
    header: "Bnd_Box2d.hxx".}
proc get*(this: BndBox2d; aXmin: var cfloat; aYmin: var cfloat; aXmax: var cfloat;
         aYmax: var cfloat) {.noSideEffect, cdecl, importcpp: "Get", header: "Bnd_Box2d.hxx".}
proc openXmin*(this: var BndBox2d) {.cdecl, importcpp: "OpenXmin", header: "Bnd_Box2d.hxx".}
proc openXmax*(this: var BndBox2d) {.cdecl, importcpp: "OpenXmax", header: "Bnd_Box2d.hxx".}
proc openYmin*(this: var BndBox2d) {.cdecl, importcpp: "OpenYmin", header: "Bnd_Box2d.hxx".}
proc openYmax*(this: var BndBox2d) {.cdecl, importcpp: "OpenYmax", header: "Bnd_Box2d.hxx".}
proc isOpenXmin*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsOpenXmin",
                                     header: "Bnd_Box2d.hxx".}
proc isOpenXmax*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsOpenXmax",
                                     header: "Bnd_Box2d.hxx".}
proc isOpenYmin*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsOpenYmin",
                                     header: "Bnd_Box2d.hxx".}
proc isOpenYmax*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsOpenYmax",
                                     header: "Bnd_Box2d.hxx".}
proc isWhole*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsWhole",
                                  header: "Bnd_Box2d.hxx".}
proc isVoid*(this: BndBox2d): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                                 header: "Bnd_Box2d.hxx".}
proc transformed*(this: BndBox2d; t: Trsf2dObj): BndBox2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; other: BndBox2d) {.cdecl, importcpp: "Add", header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; thePnt: gp_Pnt2d) {.cdecl, importcpp: "Add", header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; thePnt: gp_Pnt2d; theDir: Dir2dObj) {.cdecl, importcpp: "Add",
    header: "Bnd_Box2d.hxx".}
proc add*(this: var BndBox2d; d: Dir2dObj) {.cdecl, importcpp: "Add", header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; p: gp_Pnt2d): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                        header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; other: BndBox2d): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; theOther: BndBox2d; theTrsf: Trsf2dObj): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc isOut*(this: BndBox2d; t1: Trsf2dObj; other: BndBox2d; t2: Trsf2dObj): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", header: "Bnd_Box2d.hxx".}
proc dump*(this: BndBox2d) {.noSideEffect, cdecl, importcpp: "Dump", header: "Bnd_Box2d.hxx".}
proc squareExtent*(this: BndBox2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareExtent", header: "Bnd_Box2d.hxx".}
