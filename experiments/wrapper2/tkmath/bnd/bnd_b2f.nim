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
type
  BndB2f* {.importcpp: "Bnd_B2f", header: "Bnd_B2f.hxx", bycopy.} = object ## ! Empty constructor.


proc newBndB2f*(): BndB2f {.cdecl, constructor, importcpp: "Bnd_B2f(@)", dynlib: tkmath.}
proc newBndB2f*(theCenter: Xy; theHSize: Xy): BndB2f {.cdecl, constructor,
    importcpp: "Bnd_B2f(@)", dynlib: tkmath.}
proc isVoid*(this: BndB2f): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               dynlib: tkmath.}
proc clear*(this: var BndB2f) {.cdecl, importcpp: "Clear", dynlib: tkmath.}
proc add*(this: var BndB2f; thePnt: Xy) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndB2f; thePnt: Pnt2d) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndB2f; theBox: BndB2f) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc cornerMin*(this: BndB2f): Xy {.noSideEffect, cdecl, importcpp: "CornerMin",
                                dynlib: tkmath.}
proc cornerMax*(this: BndB2f): Xy {.noSideEffect, cdecl, importcpp: "CornerMax",
                                dynlib: tkmath.}
proc squareExtent*(this: BndB2f): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", dynlib: tkmath.}
proc enlarge*(this: var BndB2f; theDiff: cfloat) {.cdecl, importcpp: "Enlarge",
    dynlib: tkmath.}
proc limit*(this: var BndB2f; theOtherBox: BndB2f): bool {.cdecl, importcpp: "Limit",
    dynlib: tkmath.}
proc transformed*(this: BndB2f; theTrsf: Trsf2d): BndB2f {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc isOut*(this: BndB2f; thePnt: Xy): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                        dynlib: tkmath.}
proc isOut*(this: BndB2f; theCenter: Xy; theRadius: cfloat;
           isCircleHollow: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB2f; theOtherBox: BndB2f): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB2f; theOtherBox: BndB2f; theTrsf: Trsf2d): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB2f; theLine: Ax2d): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB2f; theP0: Xy; theP1: Xy): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isIn*(this: BndB2f; theBox: BndB2f): bool {.noSideEffect, cdecl, importcpp: "IsIn",
    dynlib: tkmath.}
proc isIn*(this: BndB2f; theBox: BndB2f; theTrsf: Trsf2d): bool {.noSideEffect, cdecl,
    importcpp: "IsIn", dynlib: tkmath.}
proc setCenter*(this: var BndB2f; theCenter: Xy) {.cdecl, importcpp: "SetCenter",
    dynlib: tkmath.}
proc setHSize*(this: var BndB2f; theHSize: Xy) {.cdecl, importcpp: "SetHSize",
    dynlib: tkmath.}
##  #define RealType Standard_ShortReal
##  #define RealType_hxx <Standard_ShortReal.hxx>
##  #define Bnd_B2x Bnd_B2f
##  #define Bnd_B2x_hxx <Bnd_B2f.hxx>
