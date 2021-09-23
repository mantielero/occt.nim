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

## !!!Ignored construct:  # _Bnd_B3d_HeaderFile [NewLine] # _Bnd_B3d_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_XYZ.hxx [NewLine] class gp_XYZ ;
## Error: did not expect <!!!

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax3"
type
  Bnd_B3d* {.importcpp: "Bnd_B3d", header: "Bnd_B3d.hxx", bycopy.} = object ## ! Empty constructor.
    Bnd_B3d* {.importc: "Bnd_B3d".}: Standard_NODISCARD


proc constructBnd_B3d*(): Bnd_B3d {.constructor, importcpp: "Bnd_B3d(@)",
                                 header: "Bnd_B3d.hxx".}
proc constructBnd_B3d*(theCenter: gp_XYZ; theHSize: gp_XYZ): Bnd_B3d {.constructor,
    importcpp: "Bnd_B3d(@)", header: "Bnd_B3d.hxx".}
proc IsVoid*(this: Bnd_B3d): Standard_Boolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_B3d.hxx".}
proc Clear*(this: var Bnd_B3d) {.importcpp: "Clear", header: "Bnd_B3d.hxx".}
proc Add*(this: var Bnd_B3d; thePnt: gp_XYZ) {.importcpp: "Add", header: "Bnd_B3d.hxx".}
proc Add*(this: var Bnd_B3d; thePnt: gp_Pnt) {.importcpp: "Add", header: "Bnd_B3d.hxx".}
proc Add*(this: var Bnd_B3d; theBox: Bnd_B3d) {.importcpp: "Add", header: "Bnd_B3d.hxx".}
proc CornerMin*(this: Bnd_B3d): gp_XYZ {.noSideEffect, importcpp: "CornerMin",
                                     header: "Bnd_B3d.hxx".}
proc CornerMax*(this: Bnd_B3d): gp_XYZ {.noSideEffect, importcpp: "CornerMax",
                                     header: "Bnd_B3d.hxx".}
proc SquareExtent*(this: Bnd_B3d): Standard_Real {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_B3d.hxx".}
proc Enlarge*(this: var Bnd_B3d; theDiff: Standard_Real) {.importcpp: "Enlarge",
    header: "Bnd_B3d.hxx".}
proc Limit*(this: var Bnd_B3d; theOtherBox: Bnd_B3d): Standard_Boolean {.
    importcpp: "Limit", header: "Bnd_B3d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & theTrsf ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc IsOut*(this: Bnd_B3d; thePnt: gp_XYZ): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc IsOut*(this: Bnd_B3d; theCenter: gp_XYZ; theRadius: Standard_Real;
           isSphereHollow: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc IsOut*(this: Bnd_B3d; theOtherBox: Bnd_B3d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc IsOut*(this: Bnd_B3d; theOtherBox: Bnd_B3d; theTrsf: gp_Trsf): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc IsOut*(this: Bnd_B3d; theLine: gp_Ax1; isRay: Standard_Boolean = Standard_False;
           theOverthickness: Standard_Real = 0.0): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc IsOut*(this: Bnd_B3d; thePlane: gp_Ax3): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B3d.hxx".}
proc IsIn*(this: Bnd_B3d; theBox: Bnd_B3d): Standard_Boolean {.noSideEffect,
    importcpp: "IsIn", header: "Bnd_B3d.hxx".}
proc IsIn*(this: Bnd_B3d; theBox: Bnd_B3d; theTrsf: gp_Trsf): Standard_Boolean {.
    noSideEffect, importcpp: "IsIn", header: "Bnd_B3d.hxx".}
proc SetCenter*(this: var Bnd_B3d; theCenter: gp_XYZ) {.importcpp: "SetCenter",
    header: "Bnd_B3d.hxx".}
proc SetHSize*(this: var Bnd_B3d; theHSize: gp_XYZ) {.importcpp: "SetHSize",
    header: "Bnd_B3d.hxx".}
## !!!Ignored construct:  # RealType Standard_Real [NewLine] # RealType_hxx < Standard_Real . hxx > [NewLine] # Bnd_B3x Bnd_B3d [NewLine] # Bnd_B3x_hxx < Bnd_B3d . hxx > [NewLine] # < Bnd_B3x . lxx > [NewLine] # RealType [NewLine] # RealType_hxx [NewLine] # Bnd_B3x [NewLine] # Bnd_B3x_hxx [NewLine] #  _Bnd_B3d_HeaderFile [NewLine]
## Error: did not expect <!!!
