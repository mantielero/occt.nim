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
  ../Standard/Standard_Handle, gp_Ax2, ../Standard/Standard_Real, gp_Ax1,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Circ* {.importcpp: "gp_Circ", header: "gp_Circ.hxx", bycopy.} = object ## ! Creates an indefinite circle.
    gp_Circ* {.importc: "gp_Circ".}: Standard_NODISCARD
    gp_Circ* {.importc: "gp_Circ".}: Standard_NODISCARD
    gp_Circ* {.importc: "gp_Circ".}: Standard_NODISCARD
    gp_Circ* {.importc: "gp_Circ".}: Standard_NODISCARD
    gp_Circ* {.importc: "gp_Circ".}: Standard_NODISCARD
    gp_Circ* {.importc: "gp_Circ".}: Standard_NODISCARD
    gp_Circ* {.importc: "gp_Circ".}: Standard_NODISCARD
    gp_Circ* {.importc: "gp_Circ".}: Standard_NODISCARD


proc constructgp_Circ*(): gp_Circ {.constructor, importcpp: "gp_Circ(@)",
                                 header: "gp_Circ.hxx".}
proc constructgp_Circ*(A2: gp_Ax2; Radius: Standard_Real): gp_Circ {.constructor,
    importcpp: "gp_Circ(@)", header: "gp_Circ.hxx".}
proc SetAxis*(this: var gp_Circ; A1: gp_Ax1) {.importcpp: "SetAxis",
    header: "gp_Circ.hxx".}
proc SetLocation*(this: var gp_Circ; P: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Circ.hxx".}
proc SetPosition*(this: var gp_Circ; A2: gp_Ax2) {.importcpp: "SetPosition",
    header: "gp_Circ.hxx".}
proc SetRadius*(this: var gp_Circ; Radius: Standard_Real) {.importcpp: "SetRadius",
    header: "gp_Circ.hxx".}
proc Area*(this: gp_Circ): Standard_Real {.noSideEffect, importcpp: "Area",
                                       header: "gp_Circ.hxx".}
proc Axis*(this: gp_Circ): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                                header: "gp_Circ.hxx".}
proc Length*(this: gp_Circ): Standard_Real {.noSideEffect, importcpp: "Length",
    header: "gp_Circ.hxx".}
proc Location*(this: gp_Circ): gp_Pnt {.noSideEffect, importcpp: "Location",
                                    header: "gp_Circ.hxx".}
proc Position*(this: gp_Circ): gp_Ax2 {.noSideEffect, importcpp: "Position",
                                    header: "gp_Circ.hxx".}
proc Radius*(this: gp_Circ): Standard_Real {.noSideEffect, importcpp: "Radius",
    header: "gp_Circ.hxx".}
proc XAxis*(this: gp_Circ): gp_Ax1 {.noSideEffect, importcpp: "XAxis",
                                 header: "gp_Circ.hxx".}
proc YAxis*(this: gp_Circ): gp_Ax1 {.noSideEffect, importcpp: "YAxis",
                                 header: "gp_Circ.hxx".}
proc Distance*(this: gp_Circ; P: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "gp_Circ.hxx".}
proc SquareDistance*(this: gp_Circ; P: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Circ.hxx".}
proc Contains*(this: gp_Circ; P: gp_Pnt; LinearTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "gp_Circ.hxx".}
proc Mirror*(this: var gp_Circ; P: gp_Pnt) {.importcpp: "Mirror", header: "gp_Circ.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Circ; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Circ.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Circ; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Circ.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Circ; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Circ.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Circ; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Circ.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Circ; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Circ.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Circ; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Circ.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Circ; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Circ.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
