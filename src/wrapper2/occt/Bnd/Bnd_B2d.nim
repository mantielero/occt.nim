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

## !!!Ignored construct:  # _Bnd_B2d_HeaderFile [NewLine] # _Bnd_B2d_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_XY.hxx [NewLine] class gp_XY ;
## Error: did not expect <!!!

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Ax2d"
type
  Bnd_B2d* {.importcpp: "Bnd_B2d", header: "Bnd_B2d.hxx", bycopy.} = object ## ! Empty constructor.
    Bnd_B2d* {.importc: "Bnd_B2d".}: Standard_NODISCARD


proc constructBnd_B2d*(): Bnd_B2d {.constructor, importcpp: "Bnd_B2d(@)",
                                 header: "Bnd_B2d.hxx".}
proc constructBnd_B2d*(theCenter: gp_XY; theHSize: gp_XY): Bnd_B2d {.constructor,
    importcpp: "Bnd_B2d(@)", header: "Bnd_B2d.hxx".}
proc IsVoid*(this: Bnd_B2d): Standard_Boolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_B2d.hxx".}
proc Clear*(this: var Bnd_B2d) {.importcpp: "Clear", header: "Bnd_B2d.hxx".}
proc Add*(this: var Bnd_B2d; thePnt: gp_XY) {.importcpp: "Add", header: "Bnd_B2d.hxx".}
proc Add*(this: var Bnd_B2d; thePnt: gp_Pnt2d) {.importcpp: "Add", header: "Bnd_B2d.hxx".}
proc Add*(this: var Bnd_B2d; theBox: Bnd_B2d) {.importcpp: "Add", header: "Bnd_B2d.hxx".}
proc CornerMin*(this: Bnd_B2d): gp_XY {.noSideEffect, importcpp: "CornerMin",
                                    header: "Bnd_B2d.hxx".}
proc CornerMax*(this: Bnd_B2d): gp_XY {.noSideEffect, importcpp: "CornerMax",
                                    header: "Bnd_B2d.hxx".}
proc SquareExtent*(this: Bnd_B2d): Standard_Real {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_B2d.hxx".}
proc Enlarge*(this: var Bnd_B2d; theDiff: Standard_Real) {.importcpp: "Enlarge",
    header: "Bnd_B2d.hxx".}
proc Limit*(this: var Bnd_B2d; theOtherBox: Bnd_B2d): Standard_Boolean {.
    importcpp: "Limit", header: "Bnd_B2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & theTrsf ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc IsOut*(this: Bnd_B2d; thePnt: gp_XY): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc IsOut*(this: Bnd_B2d; theCenter: gp_XY; theRadius: Standard_Real;
           isCircleHollow: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc IsOut*(this: Bnd_B2d; theOtherBox: Bnd_B2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc IsOut*(this: Bnd_B2d; theOtherBox: Bnd_B2d; theTrsf: gp_Trsf2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc IsOut*(this: Bnd_B2d; theLine: gp_Ax2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc IsOut*(this: Bnd_B2d; theP0: gp_XY; theP1: gp_XY): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2d.hxx".}
proc IsIn*(this: Bnd_B2d; theBox: Bnd_B2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsIn", header: "Bnd_B2d.hxx".}
proc IsIn*(this: Bnd_B2d; theBox: Bnd_B2d; theTrsf: gp_Trsf2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsIn", header: "Bnd_B2d.hxx".}
proc SetCenter*(this: var Bnd_B2d; theCenter: gp_XY) {.importcpp: "SetCenter",
    header: "Bnd_B2d.hxx".}
proc SetHSize*(this: var Bnd_B2d; theHSize: gp_XY) {.importcpp: "SetHSize",
    header: "Bnd_B2d.hxx".}
## !!!Ignored construct:  # RealType Standard_Real [NewLine] # RealType_hxx < Standard_Real . hxx > [NewLine] # Bnd_B2x Bnd_B2d [NewLine] # Bnd_B2x_hxx < Bnd_B2d . hxx > [NewLine] # < Bnd_B2x . lxx > [NewLine] # RealType [NewLine] # RealType_hxx [NewLine] # Bnd_B2x [NewLine] # Bnd_B2x_hxx [NewLine] #  _Bnd_B2d_HeaderFile [NewLine]
## Error: did not expect <!!!
