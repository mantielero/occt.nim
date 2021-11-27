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

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax3"
type
  BndB3d* {.importcpp: "Bnd_B3d", header: "Bnd_B3d.hxx", bycopy.} = object ## ! Empty constructor.


proc newBndB3d*(): BndB3d {.cdecl, constructor, importcpp: "Bnd_B3d(@)", header: "Bnd_B3d.hxx".}
proc newBndB3d*(theCenter: Xyz; theHSize: Xyz): BndB3d {.cdecl, constructor,
    importcpp: "Bnd_B3d(@)", header: "Bnd_B3d.hxx".}
proc isVoid*(this: BndB3d): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               header: "Bnd_B3d.hxx".}
proc clear*(this: var BndB3d) {.cdecl, importcpp: "Clear", header: "Bnd_B3d.hxx".}
proc add*(this: var BndB3d; thePnt: Xyz) {.cdecl, importcpp: "Add", header: "Bnd_B3d.hxx".}
proc add*(this: var BndB3d; thePnt: Pnt) {.cdecl, importcpp: "Add", header: "Bnd_B3d.hxx".}
proc add*(this: var BndB3d; theBox: BndB3d) {.cdecl, importcpp: "Add", header: "Bnd_B3d.hxx".}
proc cornerMin*(this: BndB3d): Xyz {.noSideEffect, cdecl, importcpp: "CornerMin",
                                 header: "Bnd_B3d.hxx".}
proc cornerMax*(this: BndB3d): Xyz {.noSideEffect, cdecl, importcpp: "CornerMax",
                                 header: "Bnd_B3d.hxx".}
proc squareExtent*(this: BndB3d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", header: "Bnd_B3d.hxx".}
proc enlarge*(this: var BndB3d; theDiff: cfloat) {.cdecl, importcpp: "Enlarge",
    header: "Bnd_B3d.hxx".}
proc limit*(this: var BndB3d; theOtherBox: BndB3d): bool {.cdecl, importcpp: "Limit",
    header: "Bnd_B3d.hxx".}
proc transformed*(this: BndB3d; theTrsf: Trsf): BndB3d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; thePnt: Xyz): bool {.noSideEffect, cdecl, importcpp: "IsOut",
    header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; theCenter: Xyz; theRadius: cfloat;
           isSphereHollow: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; theOtherBox: BndB3d): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; theOtherBox: BndB3d; theTrsf: Trsf): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; theLine: Ax1; isRay: bool = false;
           theOverthickness: cfloat = 0.0): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; thePlane: Ax3): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isIn*(this: BndB3d; theBox: BndB3d): bool {.noSideEffect, cdecl, importcpp: "IsIn",
    header: "Bnd_B3d.hxx".}
proc isIn*(this: BndB3d; theBox: BndB3d; theTrsf: Trsf): bool {.noSideEffect, cdecl,
    importcpp: "IsIn", header: "Bnd_B3d.hxx".}
proc setCenter*(this: var BndB3d; theCenter: Xyz) {.cdecl, importcpp: "SetCenter",
    header: "Bnd_B3d.hxx".}
proc setHSize*(this: var BndB3d; theHSize: Xyz) {.cdecl, importcpp: "SetHSize",
    header: "Bnd_B3d.hxx".}
##  #define RealType Standard_Real
##  #define RealType_hxx <Standard_Real.hxx>
##  #define Bnd_B3x Bnd_B3d
##  #define Bnd_B3x_hxx <Bnd_B3d.hxx>
