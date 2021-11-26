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
  BndB2d* {.importcpp: "Bnd_B2d", header: "Bnd_B2d.hxx", bycopy.} = object ## ! Empty constructor.


proc newBndB2d*(): BndB2d {.cdecl, constructor, importcpp: "Bnd_B2d(@)", dynlib: tkmath.}
proc newBndB2d*(theCenter: Xy; theHSize: Xy): BndB2d {.cdecl, constructor,
    importcpp: "Bnd_B2d(@)", dynlib: tkmath.}
proc isVoid*(this: BndB2d): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               dynlib: tkmath.}
proc clear*(this: var BndB2d) {.cdecl, importcpp: "Clear", dynlib: tkmath.}
proc add*(this: var BndB2d; thePnt: Xy) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndB2d; thePnt: Pnt2d) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndB2d; theBox: BndB2d) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc cornerMin*(this: BndB2d): Xy {.noSideEffect, cdecl, importcpp: "CornerMin",
                                dynlib: tkmath.}
proc cornerMax*(this: BndB2d): Xy {.noSideEffect, cdecl, importcpp: "CornerMax",
                                dynlib: tkmath.}
proc squareExtent*(this: BndB2d): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", dynlib: tkmath.}
proc enlarge*(this: var BndB2d; theDiff: cfloat) {.cdecl, importcpp: "Enlarge",
    dynlib: tkmath.}
proc limit*(this: var BndB2d; theOtherBox: BndB2d): bool {.cdecl, importcpp: "Limit",
    dynlib: tkmath.}
proc transformed*(this: BndB2d; theTrsf: Trsf2d): BndB2d {.noSideEffect, cdecl,
    importcpp: "Transformed", dynlib: tkmath.}
proc isOut*(this: BndB2d; thePnt: Xy): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                        dynlib: tkmath.}
proc isOut*(this: BndB2d; theCenter: Xy; theRadius: cfloat;
           isCircleHollow: bool = false): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB2d; theOtherBox: BndB2d): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB2d; theOtherBox: BndB2d; theTrsf: Trsf2d): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB2d; theLine: Ax2d): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndB2d; theP0: Xy; theP1: Xy): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isIn*(this: BndB2d; theBox: BndB2d): bool {.noSideEffect, cdecl, importcpp: "IsIn",
    dynlib: tkmath.}
proc isIn*(this: BndB2d; theBox: BndB2d; theTrsf: Trsf2d): bool {.noSideEffect, cdecl,
    importcpp: "IsIn", dynlib: tkmath.}
proc setCenter*(this: var BndB2d; theCenter: Xy) {.cdecl, importcpp: "SetCenter",
    dynlib: tkmath.}
proc setHSize*(this: var BndB2d; theHSize: Xy) {.cdecl, importcpp: "SetHSize",
    dynlib: tkmath.}
##  #define RealType Standard_Real
##  #define RealType_hxx <Standard_Real.hxx>
##  #define Bnd_B2x Bnd_B2d
##  #define Bnd_B2x_hxx <Bnd_B2d.hxx>
