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
  ../Standard/Standard_Handle, gp_Ax2, ../Standard/Standard_Real, gp_Ax1, gp_Pnt

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Parab* {.importcpp: "gp_Parab", header: "gp_Parab.hxx", bycopy.} = object ## ! Creates an
                                                                       ## indefinite Parabola.
    gp_Parab* {.importc: "gp_Parab".}: Standard_NODISCARD
    gp_Parab* {.importc: "gp_Parab".}: Standard_NODISCARD
    gp_Parab* {.importc: "gp_Parab".}: Standard_NODISCARD
    gp_Parab* {.importc: "gp_Parab".}: Standard_NODISCARD
    gp_Parab* {.importc: "gp_Parab".}: Standard_NODISCARD
    gp_Parab* {.importc: "gp_Parab".}: Standard_NODISCARD
    gp_Parab* {.importc: "gp_Parab".}: Standard_NODISCARD
    gp_Parab* {.importc: "gp_Parab".}: Standard_NODISCARD


proc constructgp_Parab*(): gp_Parab {.constructor, importcpp: "gp_Parab(@)",
                                   header: "gp_Parab.hxx".}
proc constructgp_Parab*(A2: gp_Ax2; Focal: Standard_Real): gp_Parab {.constructor,
    importcpp: "gp_Parab(@)", header: "gp_Parab.hxx".}
proc constructgp_Parab*(D: gp_Ax1; F: gp_Pnt): gp_Parab {.constructor,
    importcpp: "gp_Parab(@)", header: "gp_Parab.hxx".}
proc SetAxis*(this: var gp_Parab; A1: gp_Ax1) {.importcpp: "SetAxis",
    header: "gp_Parab.hxx".}
proc SetFocal*(this: var gp_Parab; Focal: Standard_Real) {.importcpp: "SetFocal",
    header: "gp_Parab.hxx".}
proc SetLocation*(this: var gp_Parab; P: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Parab.hxx".}
proc SetPosition*(this: var gp_Parab; A2: gp_Ax2) {.importcpp: "SetPosition",
    header: "gp_Parab.hxx".}
proc Axis*(this: gp_Parab): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                                 header: "gp_Parab.hxx".}
proc Directrix*(this: gp_Parab): gp_Ax1 {.noSideEffect, importcpp: "Directrix",
                                      header: "gp_Parab.hxx".}
proc Focal*(this: gp_Parab): Standard_Real {.noSideEffect, importcpp: "Focal",
    header: "gp_Parab.hxx".}
proc Focus*(this: gp_Parab): gp_Pnt {.noSideEffect, importcpp: "Focus",
                                  header: "gp_Parab.hxx".}
proc Location*(this: gp_Parab): gp_Pnt {.noSideEffect, importcpp: "Location",
                                     header: "gp_Parab.hxx".}
proc Parameter*(this: gp_Parab): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "gp_Parab.hxx".}
proc Position*(this: gp_Parab): gp_Ax2 {.noSideEffect, importcpp: "Position",
                                     header: "gp_Parab.hxx".}
proc XAxis*(this: gp_Parab): gp_Ax1 {.noSideEffect, importcpp: "XAxis",
                                  header: "gp_Parab.hxx".}
proc YAxis*(this: gp_Parab): gp_Ax1 {.noSideEffect, importcpp: "YAxis",
                                  header: "gp_Parab.hxx".}
proc Mirror*(this: var gp_Parab; P: gp_Pnt) {.importcpp: "Mirror",
                                        header: "gp_Parab.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Parab; A1: gp_Ax1) {.importcpp: "Mirror",
    header: "gp_Parab.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Parab; A2: gp_Ax2) {.importcpp: "Mirror",
    header: "gp_Parab.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Parab; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Parab.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Parab; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Parab.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Parab; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Parab.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Parab; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Parab.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Parab; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Parab.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
