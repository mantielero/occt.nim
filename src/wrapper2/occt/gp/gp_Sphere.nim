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
  ../Standard/Standard_Handle, gp_Ax3, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, gp_Ax1

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Sphere* {.importcpp: "gp_Sphere", header: "gp_Sphere.hxx", bycopy.} = object ## !
                                                                          ## Creates an
                                                                          ## indefinite
                                                                          ## sphere.
    gp_Sphere* {.importc: "gp_Sphere".}: Standard_NODISCARD
    gp_Sphere* {.importc: "gp_Sphere".}: Standard_NODISCARD
    gp_Sphere* {.importc: "gp_Sphere".}: Standard_NODISCARD
    gp_Sphere* {.importc: "gp_Sphere".}: Standard_NODISCARD
    gp_Sphere* {.importc: "gp_Sphere".}: Standard_NODISCARD
    gp_Sphere* {.importc: "gp_Sphere".}: Standard_NODISCARD
    gp_Sphere* {.importc: "gp_Sphere".}: Standard_NODISCARD
    gp_Sphere* {.importc: "gp_Sphere".}: Standard_NODISCARD


proc constructgp_Sphere*(): gp_Sphere {.constructor, importcpp: "gp_Sphere(@)",
                                     header: "gp_Sphere.hxx".}
proc constructgp_Sphere*(A3: gp_Ax3; Radius: Standard_Real): gp_Sphere {.constructor,
    importcpp: "gp_Sphere(@)", header: "gp_Sphere.hxx".}
proc SetLocation*(this: var gp_Sphere; Loc: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Sphere.hxx".}
proc SetPosition*(this: var gp_Sphere; A3: gp_Ax3) {.importcpp: "SetPosition",
    header: "gp_Sphere.hxx".}
proc SetRadius*(this: var gp_Sphere; R: Standard_Real) {.importcpp: "SetRadius",
    header: "gp_Sphere.hxx".}
proc Area*(this: gp_Sphere): Standard_Real {.noSideEffect, importcpp: "Area",
    header: "gp_Sphere.hxx".}
proc Coefficients*(this: gp_Sphere; A1: var Standard_Real; A2: var Standard_Real;
                  A3: var Standard_Real; B1: var Standard_Real; B2: var Standard_Real;
                  B3: var Standard_Real; C1: var Standard_Real; C2: var Standard_Real;
                  C3: var Standard_Real; D: var Standard_Real) {.noSideEffect,
    importcpp: "Coefficients", header: "gp_Sphere.hxx".}
proc UReverse*(this: var gp_Sphere) {.importcpp: "UReverse", header: "gp_Sphere.hxx".}
proc VReverse*(this: var gp_Sphere) {.importcpp: "VReverse", header: "gp_Sphere.hxx".}
proc Direct*(this: gp_Sphere): Standard_Boolean {.noSideEffect, importcpp: "Direct",
    header: "gp_Sphere.hxx".}
proc Location*(this: gp_Sphere): gp_Pnt {.noSideEffect, importcpp: "Location",
                                      header: "gp_Sphere.hxx".}
proc Position*(this: gp_Sphere): gp_Ax3 {.noSideEffect, importcpp: "Position",
                                      header: "gp_Sphere.hxx".}
proc Radius*(this: gp_Sphere): Standard_Real {.noSideEffect, importcpp: "Radius",
    header: "gp_Sphere.hxx".}
proc Volume*(this: gp_Sphere): Standard_Real {.noSideEffect, importcpp: "Volume",
    header: "gp_Sphere.hxx".}
proc XAxis*(this: gp_Sphere): gp_Ax1 {.noSideEffect, importcpp: "XAxis",
                                   header: "gp_Sphere.hxx".}
proc YAxis*(this: gp_Sphere): gp_Ax1 {.noSideEffect, importcpp: "YAxis",
                                   header: "gp_Sphere.hxx".}
proc Mirror*(this: var gp_Sphere; P: gp_Pnt) {.importcpp: "Mirror",
    header: "gp_Sphere.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Sphere; A1: gp_Ax1) {.importcpp: "Mirror",
    header: "gp_Sphere.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Sphere; A2: gp_Ax2) {.importcpp: "Mirror",
    header: "gp_Sphere.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Sphere; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Sphere.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Sphere; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Sphere.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Sphere; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Sphere.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Sphere; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Sphere.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Sphere; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Sphere.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
