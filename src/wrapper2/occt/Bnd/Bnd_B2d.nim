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

## !!!Ignored construct:  # _Bnd_B2d_HeaderFile [NewLine] # _Bnd_B2d_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_XY . hxx > [NewLine] class gp_XY ;
## Error: did not expect <!!!

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Ax2d"
type
  BndB2d* {.importcpp: "Bnd_B2d", header: "Bnd_B2d.hxx", bycopy.} = object ## ! Empty constructor.
    bndB2d* {.importc: "Bnd_B2d".}: StandardNODISCARD


proc constructBndB2d*(): BndB2d {.constructor, importcpp: "Bnd_B2d(@)",
                               header: "Bnd_B2d.hxx".}
proc constructBndB2d*(theCenter: GpXY; theHSize: GpXY): BndB2d {.constructor,
    importcpp: "Bnd_B2d(@)", header: "Bnd_B2d.hxx".}
proc isVoid*(this: BndB2d): StandardBoolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_B2d.hxx".}
proc clear*(this: var BndB2d) {.importcpp: "Clear", header: "Bnd_B2d.hxx".}
proc add*(this: var BndB2d; thePnt: GpXY) {.importcpp: "Add", header: "Bnd_B2d.hxx".}
proc add*(this: var BndB2d; thePnt: GpPnt2d) {.importcpp: "Add", header: "Bnd_B2d.hxx".}
proc add*(this: var BndB2d; theBox: BndB2d) {.importcpp: "Add", header: "Bnd_B2d.hxx".}
proc cornerMin*(this: BndB2d): GpXY {.noSideEffect, importcpp: "CornerMin",
                                  header: "Bnd_B2d.hxx".}
proc cornerMax*(this: BndB2d): GpXY {.noSideEffect, importcpp: "CornerMax",
                                  header: "Bnd_B2d.hxx".}
proc squareExtent*(this: BndB2d): StandardReal {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_B2d.hxx".}
proc enlarge*(this: var BndB2d; theDiff: StandardReal) {.importcpp: "Enlarge",
    header: "Bnd_B2d.hxx".}
proc limit*(this: var BndB2d; theOtherBox: BndB2d): StandardBoolean {.
    importcpp: "Limit", header: "Bnd_B2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & theTrsf ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc isOut*(this: BndB2d; thePnt: GpXY): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theCenter: GpXY; theRadius: StandardReal;
           isCircleHollow: StandardBoolean = standardFalse): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theOtherBox: BndB2d): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theOtherBox: BndB2d; theTrsf: GpTrsf2d): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theLine: GpAx2d): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isOut*(this: BndB2d; theP0: GpXY; theP1: GpXY): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc isIn*(this: BndB2d; theBox: BndB2d): StandardBoolean {.noSideEffect,
    importcpp: "IsIn", header: "Bnd_B2d.hxx".}
proc isIn*(this: BndB2d; theBox: BndB2d; theTrsf: GpTrsf2d): StandardBoolean {.
    noSideEffect, importcpp: "IsIn", header: "Bnd_B2d.hxx".}
proc setCenter*(this: var BndB2d; theCenter: GpXY) {.importcpp: "SetCenter",
    header: "Bnd_B2d.hxx".}
proc setHSize*(this: var BndB2d; theHSize: GpXY) {.importcpp: "SetHSize",
    header: "Bnd_B2d.hxx".}
## !!!Ignored construct:  # RealType Standard_Real [NewLine] # RealType_hxx < Standard_Real . hxx > [NewLine] # Bnd_B2x Bnd_B2d [NewLine] # Bnd_B2x_hxx < Bnd_B2d . hxx > [NewLine] # < Bnd_B2x . lxx > [NewLine] # RealType [NewLine] # RealType_hxx [NewLine] # Bnd_B2x [NewLine] # Bnd_B2x_hxx [NewLine] #  _Bnd_B2d_HeaderFile
## Error: did not expect <!!!


