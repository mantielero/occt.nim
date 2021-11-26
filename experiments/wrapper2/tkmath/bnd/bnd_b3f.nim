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
  BndB3f* {.importcpp: "Bnd_B3f", header: "Bnd_B3f.hxx", bycopy.} = object ## ! Empty constructor.


proc newBndB3f*(): BndB3f {.cdecl, constructor, importcpp: "Bnd_B3f(@)", dynlib: tkmath.}
proc newBndB3f*(theCenter: Xyz; theHSize: Xyz): BndB3f {.cdecl, constructor,
    importcpp: "Bnd_B3f(@)", dynlib: tkmath.}
proc isVoid*(this: BndB3f): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               dynlib: tkmath.}
proc clear*(this: var BndB3f) {.cdecl, importcpp: "Clear", dynlib: tkmath.}
proc add*(this: var BndB3f; thePnt: Xyz) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndB3f; thePnt: Pnt) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndB3f; theBox: BndB3f) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc cornerMin*(this: BndB3f): Xyz {.noSideEffect, cdecl, importcpp: "CornerMin",
                                 dynlib: tkmath.}
proc cornerMax*(this: BndB3f): Xyz {.noSideEffect, cdecl, importcpp: "CornerMax",
                                 dynlib: tkmath.}
proc squareExtent*(this: BndB3f): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", dynlib: tkmath.}
proc enlarge*(this: var BndB3f; theDiff: cfloat) {.cdecl, importcpp: "Enlarge",
    dynlib: tkmath.}
proc limit*(this: var BndB3f; theOtherBox: BndB3f): bool {.cdecl, importcpp: "Limit",
    dynlib: tkmath.}
proc transformed*(this: BndB3f; theTrsf: Trsf): BndB3f {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc isOut*(this: BndB3f; thePnt: Xyz): bool {.noSideEffect, cdecl, importcpp: "IsOut",
    dynlib: tkmath.}
proc isOut*(this: BndB3f; theCenter: Xyz; theRadius: cfloat;
           isSphereHollow: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB3f; theOtherBox: BndB3f): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB3f; theOtherBox: BndB3f; theTrsf: Trsf): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB3f; theLine: Ax1; isRay: bool = false;
           theOverthickness: cfloat = 0.0): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB3f; thePlane: Ax3): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isIn*(this: BndB3f; theBox: BndB3f): bool {.noSideEffect, cdecl, importcpp: "IsIn",
    dynlib: tkmath.}
proc isIn*(this: BndB3f; theBox: BndB3f; theTrsf: Trsf): bool {.noSideEffect, cdecl,
    importcpp: "IsIn", dynlib: tkmath.}
proc setCenter*(this: var BndB3f; theCenter: Xyz) {.cdecl, importcpp: "SetCenter",
    dynlib: tkmath.}
proc setHSize*(this: var BndB3f; theHSize: Xyz) {.cdecl, importcpp: "SetHSize",
    dynlib: tkmath.}
##  #define RealType Standard_ShortReal
##  #define RealType_hxx <Standard_ShortReal.hxx>
##  #define Bnd_B3x Bnd_B3f
##  #define Bnd_B3x_hxx <Bnd_B3f.hxx>
