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

## !!!Ignored construct:  # _Bnd_B3f_HeaderFile [NewLine] # _Bnd_B3f_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_ShortReal . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_XYZ . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] class gp_XYZ ;
## Error: did not expect <!!!

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax3"
type
  BndB3f* {.importcpp: "Bnd_B3f", header: "Bnd_B3f.hxx", bycopy.} = object ## ! Empty constructor.


proc constructBndB3f*(): BndB3f {.constructor, importcpp: "Bnd_B3f(@)",
                               header: "Bnd_B3f.hxx".}
proc constructBndB3f*(theCenter: Xyz; theHSize: Xyz): BndB3f {.constructor,
    importcpp: "Bnd_B3f(@)", header: "Bnd_B3f.hxx".}
proc isVoid*(this: BndB3f): bool {.noSideEffect, importcpp: "IsVoid",
                               header: "Bnd_B3f.hxx".}
proc clear*(this: var BndB3f) {.importcpp: "Clear", header: "Bnd_B3f.hxx".}
proc add*(this: var BndB3f; thePnt: Xyz) {.importcpp: "Add", header: "Bnd_B3f.hxx".}
proc add*(this: var BndB3f; thePnt: Pnt) {.importcpp: "Add", header: "Bnd_B3f.hxx".}
proc add*(this: var BndB3f; theBox: BndB3f) {.importcpp: "Add", header: "Bnd_B3f.hxx".}
proc cornerMin*(this: BndB3f): Xyz {.noSideEffect, importcpp: "CornerMin",
                                 header: "Bnd_B3f.hxx".}
proc cornerMax*(this: BndB3f): Xyz {.noSideEffect, importcpp: "CornerMax",
                                 header: "Bnd_B3f.hxx".}
proc squareExtent*(this: BndB3f): float {.noSideEffect, importcpp: "SquareExtent",
                                      header: "Bnd_B3f.hxx".}
proc enlarge*(this: var BndB3f; theDiff: float) {.importcpp: "Enlarge",
    header: "Bnd_B3f.hxx".}
proc limit*(this: var BndB3f; theOtherBox: BndB3f): bool {.importcpp: "Limit",
    header: "Bnd_B3f.hxx".}
proc transformed*(this: BndB3f; theTrsf: Trsf): BndB3f {.noSideEffect,
    importcpp: "Transformed", header: "Bnd_B3f.hxx".}
proc isOut*(this: BndB3f; thePnt: Xyz): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_B3f.hxx".}
proc isOut*(this: BndB3f; theCenter: Xyz; theRadius: float;
           isSphereHollow: bool = false): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_B3f.hxx".}
proc isOut*(this: BndB3f; theOtherBox: BndB3f): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3f.hxx".}
proc isOut*(this: BndB3f; theOtherBox: BndB3f; theTrsf: Trsf): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3f.hxx".}
proc isOut*(this: BndB3f; theLine: Ax1; isRay: bool = false;
           theOverthickness: float = 0.0): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_B3f.hxx".}
proc isOut*(this: BndB3f; thePlane: Ax3): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_B3f.hxx".}
proc isIn*(this: BndB3f; theBox: BndB3f): bool {.noSideEffect, importcpp: "IsIn",
    header: "Bnd_B3f.hxx".}
proc isIn*(this: BndB3f; theBox: BndB3f; theTrsf: Trsf): bool {.noSideEffect,
    importcpp: "IsIn", header: "Bnd_B3f.hxx".}
proc setCenter*(this: var BndB3f; theCenter: Xyz) {.importcpp: "SetCenter",
    header: "Bnd_B3f.hxx".}
proc setHSize*(this: var BndB3f; theHSize: Xyz) {.importcpp: "SetHSize",
    header: "Bnd_B3f.hxx".}
## !!!Ignored construct:  # RealType Standard_ShortReal [NewLine] # RealType_hxx < Standard_ShortReal . hxx > [NewLine] # Bnd_B3x Bnd_B3f [NewLine] # Bnd_B3x_hxx < Bnd_B3f . hxx > [NewLine] # < Bnd_B3x . lxx > [NewLine] # RealType [NewLine] # RealType_hxx [NewLine] # Bnd_B3x [NewLine] # Bnd_B3x_hxx [NewLine] #  _Bnd_B3f_HeaderFile
## Error: did not expect <!!!

