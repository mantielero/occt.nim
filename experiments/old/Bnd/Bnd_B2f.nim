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

## !!!Ignored construct:  # _Bnd_B2f_HeaderFile [NewLine] # _Bnd_B2f_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_ShortReal . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_XY . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] class gp_XY ;
## Error: did not expect <!!!

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Ax2d"
type
  BndB2f* {.importcpp: "Bnd_B2f", header: "Bnd_B2f.hxx", bycopy.} = object ## ! Empty constructor.


proc constructBndB2f*(): BndB2f {.constructor, importcpp: "Bnd_B2f(@)",
                               header: "Bnd_B2f.hxx".}
proc constructBndB2f*(theCenter: Xy; theHSize: Xy): BndB2f {.constructor,
    importcpp: "Bnd_B2f(@)", header: "Bnd_B2f.hxx".}
proc isVoid*(this: BndB2f): bool {.noSideEffect, importcpp: "IsVoid",
                               header: "Bnd_B2f.hxx".}
proc clear*(this: var BndB2f) {.importcpp: "Clear", header: "Bnd_B2f.hxx".}
proc add*(this: var BndB2f; thePnt: Xy) {.importcpp: "Add", header: "Bnd_B2f.hxx".}
proc add*(this: var BndB2f; thePnt: Pnt2d) {.importcpp: "Add", header: "Bnd_B2f.hxx".}
proc add*(this: var BndB2f; theBox: BndB2f) {.importcpp: "Add", header: "Bnd_B2f.hxx".}
proc cornerMin*(this: BndB2f): Xy {.noSideEffect, importcpp: "CornerMin",
                                header: "Bnd_B2f.hxx".}
proc cornerMax*(this: BndB2f): Xy {.noSideEffect, importcpp: "CornerMax",
                                header: "Bnd_B2f.hxx".}
proc squareExtent*(this: BndB2f): float {.noSideEffect, importcpp: "SquareExtent",
                                      header: "Bnd_B2f.hxx".}
proc enlarge*(this: var BndB2f; theDiff: float) {.importcpp: "Enlarge",
    header: "Bnd_B2f.hxx".}
proc limit*(this: var BndB2f; theOtherBox: BndB2f): bool {.importcpp: "Limit",
    header: "Bnd_B2f.hxx".}
proc transformed*(this: BndB2f; theTrsf: Trsf2d): BndB2f {.noSideEffect,
    importcpp: "Transformed", header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; thePnt: Xy): bool {.noSideEffect, importcpp: "IsOut",
                                        header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theCenter: Xy; theRadius: float; isCircleHollow: bool = false): bool {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theOtherBox: BndB2f): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theOtherBox: BndB2f; theTrsf: Trsf2d): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theLine: Ax2d): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_B2f.hxx".}
proc isOut*(this: BndB2f; theP0: Xy; theP1: Xy): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_B2f.hxx".}
proc isIn*(this: BndB2f; theBox: BndB2f): bool {.noSideEffect, importcpp: "IsIn",
    header: "Bnd_B2f.hxx".}
proc isIn*(this: BndB2f; theBox: BndB2f; theTrsf: Trsf2d): bool {.noSideEffect,
    importcpp: "IsIn", header: "Bnd_B2f.hxx".}
proc setCenter*(this: var BndB2f; theCenter: Xy) {.importcpp: "SetCenter",
    header: "Bnd_B2f.hxx".}
proc setHSize*(this: var BndB2f; theHSize: Xy) {.importcpp: "SetHSize",
    header: "Bnd_B2f.hxx".}
## !!!Ignored construct:  # RealType Standard_ShortReal [NewLine] # RealType_hxx < Standard_ShortReal . hxx > [NewLine] # Bnd_B2x Bnd_B2f [NewLine] # Bnd_B2x_hxx < Bnd_B2f . hxx > [NewLine] # < Bnd_B2x . lxx > [NewLine] # RealType [NewLine] # RealType_hxx [NewLine] # Bnd_B2x [NewLine] # Bnd_B2x_hxx [NewLine] #  _Bnd_B2f_HeaderFile
## Error: did not expect <!!!














































