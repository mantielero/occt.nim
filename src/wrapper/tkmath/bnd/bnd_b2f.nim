import bnd_types

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


proc newBndB2f*(): BndB2f {.cdecl, constructor, importcpp: "Bnd_B2f(@)", header: "Bnd_B2f.hxx".}
proc newBndB2f*(theCenter: XyObj; theHSize: XyObj): BndB2f {.cdecl, constructor,
    importcpp: "Bnd_B2f(@)", header: "Bnd_B2f.hxx".}
proc isVoid*(this: BndB2f): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               header: "Bnd_B2f.hxx".}
proc clear*(this: var BndB2f) {.cdecl, importcpp: "Clear", header: "Bnd_B2f.hxx".}
proc add*(this: var BndB2f; thePnt: XyObj) {.cdecl, importcpp: "Add", header: "Bnd_B2f.hxx".}
proc add*(this: var BndB2f; thePnt: Pnt2dObj) {.cdecl, importcpp: "Add", header: "Bnd_B2f.hxx".}
proc add*(this: var BndB2f; theBox: BndB2f) {.cdecl, importcpp: "Add", header: "Bnd_B2f.hxx".}
proc cornerMin*(this: BndB2f): XyObj {.noSideEffect, cdecl, importcpp: "CornerMin",
                                header: "Bnd_B2f.hxx".}
proc cornerMax*(this: BndB2f): XyObj {.noSideEffect, cdecl, importcpp: "CornerMax",
                                header: "Bnd_B2f.hxx".}
proc squareExtent*(this: BndB2f): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", header: "Bnd_B2f.hxx".}
proc enlarge*(this: var BndB2f; theDiff: cfloat) {.cdecl, importcpp: "Enlarge",
    header: "Bnd_B2f.hxx".}
proc limit*(this: var BndB2f; theOtherBox: BndB2f): bool {.cdecl, importcpp: "Limit",
    header: "Bnd_B2f.hxx".}
proc transformed*(this: BndB2f; theTrsf: Trsf2dObj): BndB2f {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; thePnt: XyObj): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                        header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theCenter: XyObj; theRadius: cfloat;
           isCircleHollow: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theOtherBox: BndB2f): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theOtherBox: BndB2f; theTrsf: Trsf2dObj): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theLine: Ax2dObj): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theP0: XyObj; theP1: XyObj): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc isIn*(this: BndB2f; theBox: BndB2f): bool {.noSideEffect, cdecl, importcpp: "IsIn",
    header: "Bnd_B2f.hxx".}
proc isIn*(this: BndB2f; theBox: BndB2f; theTrsf: Trsf2dObj): bool {.noSideEffect, cdecl,
    importcpp: "IsIn", header: "Bnd_B2f.hxx".}
proc setCenter*(this: var BndB2f; theCenter: XyObj) {.cdecl, importcpp: "SetCenter",
    header: "Bnd_B2f.hxx".}
proc setHSize*(this: var BndB2f; theHSize: XyObj) {.cdecl, importcpp: "SetHSize",
    header: "Bnd_B2f.hxx".}
##  #define RealType Standard_ShortReal
##  #define RealType_hxx <Standard_ShortReal.hxx>
##  #define Bnd_B2x Bnd_B2f
##  #define Bnd_B2x_hxx <Bnd_B2f.hxx>

