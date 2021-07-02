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

## !!!Ignored construct:  # _Bnd_B3d_HeaderFile [NewLine] # _Bnd_B3d_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_XYZ . hxx > [NewLine] class gp_XYZ ;
## Error: did not expect <!!!

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax3"
type
  BndB3d* {.importcpp: "Bnd_B3d", header: "Bnd_B3d.hxx", bycopy.} = object ## ! Empty constructor.
    bndB3d* {.importc: "Bnd_B3d".}: StandardNODISCARD


proc constructBndB3d*(): BndB3d {.constructor, importcpp: "Bnd_B3d(@)",
                               header: "Bnd_B3d.hxx".}
proc constructBndB3d*(theCenter: GpXYZ; theHSize: GpXYZ): BndB3d {.constructor,
    importcpp: "Bnd_B3d(@)", header: "Bnd_B3d.hxx".}
proc isVoid*(this: BndB3d): StandardBoolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_B3d.hxx".}
proc clear*(this: var BndB3d) {.importcpp: "Clear", header: "Bnd_B3d.hxx".}
proc add*(this: var BndB3d; thePnt: GpXYZ) {.importcpp: "Add", header: "Bnd_B3d.hxx".}
proc add*(this: var BndB3d; thePnt: GpPnt) {.importcpp: "Add", header: "Bnd_B3d.hxx".}
proc add*(this: var BndB3d; theBox: BndB3d) {.importcpp: "Add", header: "Bnd_B3d.hxx".}
proc cornerMin*(this: BndB3d): GpXYZ {.noSideEffect, importcpp: "CornerMin",
                                   header: "Bnd_B3d.hxx".}
proc cornerMax*(this: BndB3d): GpXYZ {.noSideEffect, importcpp: "CornerMax",
                                   header: "Bnd_B3d.hxx".}
proc squareExtent*(this: BndB3d): StandardReal {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_B3d.hxx".}
proc enlarge*(this: var BndB3d; theDiff: StandardReal) {.importcpp: "Enlarge",
    header: "Bnd_B3d.hxx".}
proc limit*(this: var BndB3d; theOtherBox: BndB3d): StandardBoolean {.
    importcpp: "Limit", header: "Bnd_B3d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & theTrsf ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc isOut*(this: BndB3d; thePnt: GpXYZ): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; theCenter: GpXYZ; theRadius: StandardReal;
           isSphereHollow: StandardBoolean = standardFalse): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; theOtherBox: BndB3d): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; theOtherBox: BndB3d; theTrsf: GpTrsf): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; theLine: GpAx1; isRay: StandardBoolean = standardFalse;
           theOverthickness: StandardReal = 0.0): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isOut*(this: BndB3d; thePlane: GpAx3): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc isIn*(this: BndB3d; theBox: BndB3d): StandardBoolean {.noSideEffect,
    importcpp: "IsIn", header: "Bnd_B3d.hxx".}
proc isIn*(this: BndB3d; theBox: BndB3d; theTrsf: GpTrsf): StandardBoolean {.
    noSideEffect, importcpp: "IsIn", header: "Bnd_B3d.hxx".}
proc setCenter*(this: var BndB3d; theCenter: GpXYZ) {.importcpp: "SetCenter",
    header: "Bnd_B3d.hxx".}
proc setHSize*(this: var BndB3d; theHSize: GpXYZ) {.importcpp: "SetHSize",
    header: "Bnd_B3d.hxx".}
## !!!Ignored construct:  # RealType Standard_Real [NewLine] # RealType_hxx < Standard_Real . hxx > [NewLine] # Bnd_B3x Bnd_B3d [NewLine] # Bnd_B3x_hxx < Bnd_B3d . hxx > [NewLine] # < Bnd_B3x . lxx > [NewLine] # RealType [NewLine] # RealType_hxx [NewLine] # Bnd_B3x [NewLine] # Bnd_B3x_hxx [NewLine] #  _Bnd_B3d_HeaderFile
## Error: did not expect <!!!


