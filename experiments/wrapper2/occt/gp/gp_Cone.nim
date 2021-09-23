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
  ../Standard/Standard_Handle, gp_Ax3, ../Standard/Standard_Real, gp_Pnt,
  ../Standard/Standard_Boolean, gp_Ax1

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Cone* {.importcpp: "gp_Cone", header: "gp_Cone.hxx", bycopy.} = object ## ! Creates an indefinite Cone.
    gp_Cone* {.importc: "gp_Cone".}: Standard_NODISCARD
    gp_Cone* {.importc: "gp_Cone".}: Standard_NODISCARD
    gp_Cone* {.importc: "gp_Cone".}: Standard_NODISCARD
    gp_Cone* {.importc: "gp_Cone".}: Standard_NODISCARD
    gp_Cone* {.importc: "gp_Cone".}: Standard_NODISCARD
    gp_Cone* {.importc: "gp_Cone".}: Standard_NODISCARD
    gp_Cone* {.importc: "gp_Cone".}: Standard_NODISCARD
    gp_Cone* {.importc: "gp_Cone".}: Standard_NODISCARD


proc constructgp_Cone*(): gp_Cone {.constructor, importcpp: "gp_Cone(@)",
                                 header: "gp_Cone.hxx".}
proc constructgp_Cone*(A3: gp_Ax3; Ang: Standard_Real; Radius: Standard_Real): gp_Cone {.
    constructor, importcpp: "gp_Cone(@)", header: "gp_Cone.hxx".}
proc SetAxis*(this: var gp_Cone; A1: gp_Ax1) {.importcpp: "SetAxis",
    header: "gp_Cone.hxx".}
proc SetLocation*(this: var gp_Cone; Loc: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Cone.hxx".}
proc SetPosition*(this: var gp_Cone; A3: gp_Ax3) {.importcpp: "SetPosition",
    header: "gp_Cone.hxx".}
proc SetRadius*(this: var gp_Cone; R: Standard_Real) {.importcpp: "SetRadius",
    header: "gp_Cone.hxx".}
proc SetSemiAngle*(this: var gp_Cone; Ang: Standard_Real) {.importcpp: "SetSemiAngle",
    header: "gp_Cone.hxx".}
proc Apex*(this: gp_Cone): gp_Pnt {.noSideEffect, importcpp: "Apex",
                                header: "gp_Cone.hxx".}
proc UReverse*(this: var gp_Cone) {.importcpp: "UReverse", header: "gp_Cone.hxx".}
proc VReverse*(this: var gp_Cone) {.importcpp: "VReverse", header: "gp_Cone.hxx".}
proc Direct*(this: gp_Cone): Standard_Boolean {.noSideEffect, importcpp: "Direct",
    header: "gp_Cone.hxx".}
proc Axis*(this: gp_Cone): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                                header: "gp_Cone.hxx".}
proc Coefficients*(this: gp_Cone; A1: var Standard_Real; A2: var Standard_Real;
                  A3: var Standard_Real; B1: var Standard_Real; B2: var Standard_Real;
                  B3: var Standard_Real; C1: var Standard_Real; C2: var Standard_Real;
                  C3: var Standard_Real; D: var Standard_Real) {.noSideEffect,
    importcpp: "Coefficients", header: "gp_Cone.hxx".}
proc Location*(this: gp_Cone): gp_Pnt {.noSideEffect, importcpp: "Location",
                                    header: "gp_Cone.hxx".}
proc Position*(this: gp_Cone): gp_Ax3 {.noSideEffect, importcpp: "Position",
                                    header: "gp_Cone.hxx".}
proc RefRadius*(this: gp_Cone): Standard_Real {.noSideEffect, importcpp: "RefRadius",
    header: "gp_Cone.hxx".}
proc SemiAngle*(this: gp_Cone): Standard_Real {.noSideEffect, importcpp: "SemiAngle",
    header: "gp_Cone.hxx".}
proc XAxis*(this: gp_Cone): gp_Ax1 {.noSideEffect, importcpp: "XAxis",
                                 header: "gp_Cone.hxx".}
proc YAxis*(this: gp_Cone): gp_Ax1 {.noSideEffect, importcpp: "YAxis",
                                 header: "gp_Cone.hxx".}
proc Mirror*(this: var gp_Cone; P: gp_Pnt) {.importcpp: "Mirror", header: "gp_Cone.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Cone; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Cone.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Cone; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Cone.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Cone; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Cone.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Cone; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Cone.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Cone; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Cone.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Cone; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Cone.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Cone; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Cone.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
