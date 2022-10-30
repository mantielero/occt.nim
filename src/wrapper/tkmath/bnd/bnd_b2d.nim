import bnd_types
import ../gp/gp_types
##  Created on: 1991-01-08
##  Created by: Didier Piffault
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

discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Ax2d"


proc newBndB2d*(): BndB2d {.cdecl, constructor, importcpp: "Bnd_B2d(@)", header: "Bnd_B2d.hxx".}
proc newBndB2d*(theCenter: XyObj; theHSize: XyObj): BndB2d {.cdecl, constructor,
    importcpp: "Bnd_B2d(@)", header: "Bnd_B2d.hxx".}
proc isVoid*(this: BndB2d): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               header: "Bnd_B2d.hxx".}
proc clear*(this: var BndB2d) {.cdecl, importcpp: "Clear", header: "Bnd_B2d.hxx".}
proc add*(this: var BndB2d; thePnt: XyObj) {.cdecl, importcpp: "Add", header: "Bnd_B2d.hxx".}
proc add*(this: var BndB2d; thePnt: Pnt2dObj) {.cdecl, importcpp: "Add", header: "Bnd_B2d.hxx".}
proc add*(this: var BndB2d; theBox: BndB2d) {.cdecl, importcpp: "Add", header: "Bnd_B2d.hxx".}
proc cornerMin*(this: BndB2d): XyObj {.noSideEffect, cdecl, importcpp: "CornerMin",
                                header: "Bnd_B2d.hxx".}
proc cornerMax*(this: BndB2d): XyObj {.noSideEffect, cdecl, importcpp: "CornerMax",
                                header: "Bnd_B2d.hxx".}
proc squareExtent*(this: BndB2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", header: "Bnd_B2d.hxx".}
proc enlarge*(this: var BndB2d; theDiff: cfloat) {.cdecl, importcpp: "Enlarge",
    header: "Bnd_B2d.hxx".}
proc limit*(this: var BndB2d; theOtherBox: BndB2d): bool {.cdecl, importcpp: "Limit",
    header: "Bnd_B2d.hxx".}
proc transformed*(this: BndB2d; theTrsf: Trsf2dObj): BndB2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; thePnt: XyObj): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                        header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theCenter: XyObj; theRadius: cfloat;
           isCircleHollow: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theOtherBox: BndB2d): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theOtherBox: BndB2d; theTrsf: Trsf2dObj): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theLine: Ax2dObj): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theP0: XyObj; theP1: XyObj): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isIn*(this: BndB2d; theBox: BndB2d): bool {.noSideEffect, cdecl, importcpp: "IsIn",
    header: "Bnd_B2d.hxx".}
proc isIn*(this: BndB2d; theBox: BndB2d; theTrsf: Trsf2dObj): bool {.noSideEffect, cdecl,
    importcpp: "IsIn", header: "Bnd_B2d.hxx".}
proc setCenter*(this: var BndB2d; theCenter: XyObj) {.cdecl, importcpp: "SetCenter",
    header: "Bnd_B2d.hxx".}
proc setHSize*(this: var BndB2d; theHSize: XyObj) {.cdecl, importcpp: "SetHSize",
    header: "Bnd_B2d.hxx".}
##  #define RealType Standard_Real
##  #define RealType_hxx <Standard_Real.hxx>
##  #define Bnd_B2x Bnd_B2d
##  #define Bnd_B2x_hxx <Bnd_B2d.hxx>

