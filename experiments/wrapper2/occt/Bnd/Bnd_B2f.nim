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

## !!!Ignored construct:  # _Bnd_B2f_HeaderFile [NewLine] # _Bnd_B2f_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_ShortReal.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_XY.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] class gp_XY ;
## Error: did not expect <!!!

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Ax2d"
type
  Bnd_B2f* {.importcpp: "Bnd_B2f", header: "Bnd_B2f.hxx", bycopy.} = object ## ! Empty constructor.
    Bnd_B2f* {.importc: "Bnd_B2f".}: Standard_NODISCARD


proc constructBnd_B2f*(): Bnd_B2f {.constructor, importcpp: "Bnd_B2f(@)",
                                 header: "Bnd_B2f.hxx".}
proc constructBnd_B2f*(theCenter: gp_XY; theHSize: gp_XY): Bnd_B2f {.constructor,
    importcpp: "Bnd_B2f(@)", header: "Bnd_B2f.hxx".}
proc IsVoid*(this: Bnd_B2f): Standard_Boolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_B2f.hxx".}
proc Clear*(this: var Bnd_B2f) {.importcpp: "Clear", header: "Bnd_B2f.hxx".}
proc Add*(this: var Bnd_B2f; thePnt: gp_XY) {.importcpp: "Add", header: "Bnd_B2f.hxx".}
proc Add*(this: var Bnd_B2f; thePnt: gp_Pnt2d) {.importcpp: "Add", header: "Bnd_B2f.hxx".}
proc Add*(this: var Bnd_B2f; theBox: Bnd_B2f) {.importcpp: "Add", header: "Bnd_B2f.hxx".}
proc CornerMin*(this: Bnd_B2f): gp_XY {.noSideEffect, importcpp: "CornerMin",
                                    header: "Bnd_B2f.hxx".}
proc CornerMax*(this: Bnd_B2f): gp_XY {.noSideEffect, importcpp: "CornerMax",
                                    header: "Bnd_B2f.hxx".}
proc SquareExtent*(this: Bnd_B2f): Standard_Real {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_B2f.hxx".}
proc Enlarge*(this: var Bnd_B2f; theDiff: Standard_Real) {.importcpp: "Enlarge",
    header: "Bnd_B2f.hxx".}
proc Limit*(this: var Bnd_B2f; theOtherBox: Bnd_B2f): Standard_Boolean {.
    importcpp: "Limit", header: "Bnd_B2f.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & theTrsf ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc IsOut*(this: Bnd_B2f; thePnt: gp_XY): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc IsOut*(this: Bnd_B2f; theCenter: gp_XY; theRadius: Standard_Real;
           isCircleHollow: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc IsOut*(this: Bnd_B2f; theOtherBox: Bnd_B2f): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc IsOut*(this: Bnd_B2f; theOtherBox: Bnd_B2f; theTrsf: gp_Trsf2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc IsOut*(this: Bnd_B2f; theLine: gp_Ax2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc IsOut*(this: Bnd_B2f; theP0: gp_XY; theP1: gp_XY): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_B2f.hxx".}
proc IsIn*(this: Bnd_B2f; theBox: Bnd_B2f): Standard_Boolean {.noSideEffect,
    importcpp: "IsIn", header: "Bnd_B2f.hxx".}
proc IsIn*(this: Bnd_B2f; theBox: Bnd_B2f; theTrsf: gp_Trsf2d): Standard_Boolean {.
    noSideEffect, importcpp: "IsIn", header: "Bnd_B2f.hxx".}
proc SetCenter*(this: var Bnd_B2f; theCenter: gp_XY) {.importcpp: "SetCenter",
    header: "Bnd_B2f.hxx".}
proc SetHSize*(this: var Bnd_B2f; theHSize: gp_XY) {.importcpp: "SetHSize",
    header: "Bnd_B2f.hxx".}
## !!!Ignored construct:  # RealType Standard_ShortReal [NewLine] # RealType_hxx < Standard_ShortReal . hxx > [NewLine] # Bnd_B2x Bnd_B2f [NewLine] # Bnd_B2x_hxx < Bnd_B2f . hxx > [NewLine] # < Bnd_B2x . lxx > [NewLine] # RealType [NewLine] # RealType_hxx [NewLine] # Bnd_B2x [NewLine] # Bnd_B2x_hxx [NewLine] #  _Bnd_B2f_HeaderFile [NewLine]
## Error: did not expect <!!!
