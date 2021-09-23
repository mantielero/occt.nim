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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, gp_Ax1, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Lin* {.importcpp: "gp_Lin", header: "gp_Lin.hxx", bycopy.} = object ## ! Creates a Line corresponding to Z axis of the
                                                                 ## ! reference coordinate system.
    gp_Lin* {.importc: "gp_Lin".}: Standard_NODISCARD
    gp_Lin* {.importc: "gp_Lin".}: Standard_NODISCARD
    gp_Lin* {.importc: "gp_Lin".}: Standard_NODISCARD
    gp_Lin* {.importc: "gp_Lin".}: Standard_NODISCARD
    gp_Lin* {.importc: "gp_Lin".}: Standard_NODISCARD
    gp_Lin* {.importc: "gp_Lin".}: Standard_NODISCARD
    gp_Lin* {.importc: "gp_Lin".}: Standard_NODISCARD
    gp_Lin* {.importc: "gp_Lin".}: Standard_NODISCARD
    gp_Lin* {.importc: "gp_Lin".}: Standard_NODISCARD


proc constructgp_Lin*(): gp_Lin {.constructor, importcpp: "gp_Lin(@)",
                               header: "gp_Lin.hxx".}
proc constructgp_Lin*(A1: gp_Ax1): gp_Lin {.constructor, importcpp: "gp_Lin(@)",
                                        header: "gp_Lin.hxx".}
proc constructgp_Lin*(P: gp_Pnt; V: gp_Dir): gp_Lin {.constructor,
    importcpp: "gp_Lin(@)", header: "gp_Lin.hxx".}
proc Reverse*(this: var gp_Lin) {.importcpp: "Reverse", header: "gp_Lin.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

proc SetDirection*(this: var gp_Lin; V: gp_Dir) {.importcpp: "SetDirection",
    header: "gp_Lin.hxx".}
proc SetLocation*(this: var gp_Lin; P: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Lin.hxx".}
proc SetPosition*(this: var gp_Lin; A1: gp_Ax1) {.importcpp: "SetPosition",
    header: "gp_Lin.hxx".}
proc Direction*(this: gp_Lin): gp_Dir {.noSideEffect, importcpp: "Direction",
                                    header: "gp_Lin.hxx".}
proc Location*(this: gp_Lin): gp_Pnt {.noSideEffect, importcpp: "Location",
                                   header: "gp_Lin.hxx".}
proc Position*(this: gp_Lin): gp_Ax1 {.noSideEffect, importcpp: "Position",
                                   header: "gp_Lin.hxx".}
proc Angle*(this: gp_Lin; Other: gp_Lin): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "gp_Lin.hxx".}
proc Contains*(this: gp_Lin; P: gp_Pnt; LinearTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "gp_Lin.hxx".}
proc Distance*(this: gp_Lin; P: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "gp_Lin.hxx".}
proc Distance*(this: gp_Lin; Other: gp_Lin): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "gp_Lin.hxx".}
proc SquareDistance*(this: gp_Lin; P: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Lin.hxx".}
proc SquareDistance*(this: gp_Lin; Other: gp_Lin): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Lin.hxx".}
proc Normal*(this: gp_Lin; P: gp_Pnt): gp_Lin {.noSideEffect, importcpp: "Normal",
    header: "gp_Lin.hxx".}
proc Mirror*(this: var gp_Lin; P: gp_Pnt) {.importcpp: "Mirror", header: "gp_Lin.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Lin; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Lin.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Lin; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Lin.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Lin; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Lin.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Lin; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Lin.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Lin; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Lin.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Lin; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Lin.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Lin; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Lin.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
