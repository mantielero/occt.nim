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
  ../Standard/Standard_Boolean, ../TColStd/TColStd_Array1OfReal, gp_Ax1

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Torus* {.importcpp: "gp_Torus", header: "gp_Torus.hxx", bycopy.} = object ## ! creates an
                                                                       ## indefinite Torus.
    gp_Torus* {.importc: "gp_Torus".}: Standard_NODISCARD
    gp_Torus* {.importc: "gp_Torus".}: Standard_NODISCARD
    gp_Torus* {.importc: "gp_Torus".}: Standard_NODISCARD
    gp_Torus* {.importc: "gp_Torus".}: Standard_NODISCARD
    gp_Torus* {.importc: "gp_Torus".}: Standard_NODISCARD
    gp_Torus* {.importc: "gp_Torus".}: Standard_NODISCARD
    gp_Torus* {.importc: "gp_Torus".}: Standard_NODISCARD
    gp_Torus* {.importc: "gp_Torus".}: Standard_NODISCARD


proc constructgp_Torus*(): gp_Torus {.constructor, importcpp: "gp_Torus(@)",
                                   header: "gp_Torus.hxx".}
proc constructgp_Torus*(A3: gp_Ax3; MajorRadius: Standard_Real;
                       MinorRadius: Standard_Real): gp_Torus {.constructor,
    importcpp: "gp_Torus(@)", header: "gp_Torus.hxx".}
proc SetAxis*(this: var gp_Torus; A1: gp_Ax1) {.importcpp: "SetAxis",
    header: "gp_Torus.hxx".}
proc SetLocation*(this: var gp_Torus; Loc: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Torus.hxx".}
proc SetMajorRadius*(this: var gp_Torus; MajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "gp_Torus.hxx".}
proc SetMinorRadius*(this: var gp_Torus; MinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "gp_Torus.hxx".}
proc SetPosition*(this: var gp_Torus; A3: gp_Ax3) {.importcpp: "SetPosition",
    header: "gp_Torus.hxx".}
proc Area*(this: gp_Torus): Standard_Real {.noSideEffect, importcpp: "Area",
                                        header: "gp_Torus.hxx".}
proc UReverse*(this: var gp_Torus) {.importcpp: "UReverse", header: "gp_Torus.hxx".}
proc VReverse*(this: var gp_Torus) {.importcpp: "VReverse", header: "gp_Torus.hxx".}
proc Direct*(this: gp_Torus): Standard_Boolean {.noSideEffect, importcpp: "Direct",
    header: "gp_Torus.hxx".}
proc Axis*(this: gp_Torus): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                                 header: "gp_Torus.hxx".}
proc Coefficients*(this: gp_Torus; Coef: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Coefficients", header: "gp_Torus.hxx".}
proc Location*(this: gp_Torus): gp_Pnt {.noSideEffect, importcpp: "Location",
                                     header: "gp_Torus.hxx".}
proc Position*(this: gp_Torus): gp_Ax3 {.noSideEffect, importcpp: "Position",
                                     header: "gp_Torus.hxx".}
proc MajorRadius*(this: gp_Torus): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "gp_Torus.hxx".}
proc MinorRadius*(this: gp_Torus): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "gp_Torus.hxx".}
proc Volume*(this: gp_Torus): Standard_Real {.noSideEffect, importcpp: "Volume",
    header: "gp_Torus.hxx".}
proc XAxis*(this: gp_Torus): gp_Ax1 {.noSideEffect, importcpp: "XAxis",
                                  header: "gp_Torus.hxx".}
proc YAxis*(this: gp_Torus): gp_Ax1 {.noSideEffect, importcpp: "YAxis",
                                  header: "gp_Torus.hxx".}
proc Mirror*(this: var gp_Torus; P: gp_Pnt) {.importcpp: "Mirror",
                                        header: "gp_Torus.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Torus; A1: gp_Ax1) {.importcpp: "Mirror",
    header: "gp_Torus.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Torus; A2: gp_Ax2) {.importcpp: "Mirror",
    header: "gp_Torus.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Torus; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Torus.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Torus; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Torus.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Torus; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Torus.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Torus; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Torus.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Torus; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Torus.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
