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
  gp_Elips* {.importcpp: "gp_Elips", header: "gp_Elips.hxx", bycopy.} = object ## ! Creates an
                                                                       ## indefinite ellipse.
    gp_Elips* {.importc: "gp_Elips".}: Standard_NODISCARD
    gp_Elips* {.importc: "gp_Elips".}: Standard_NODISCARD
    gp_Elips* {.importc: "gp_Elips".}: Standard_NODISCARD
    gp_Elips* {.importc: "gp_Elips".}: Standard_NODISCARD
    gp_Elips* {.importc: "gp_Elips".}: Standard_NODISCARD
    gp_Elips* {.importc: "gp_Elips".}: Standard_NODISCARD
    gp_Elips* {.importc: "gp_Elips".}: Standard_NODISCARD
    gp_Elips* {.importc: "gp_Elips".}: Standard_NODISCARD


proc constructgp_Elips*(): gp_Elips {.constructor, importcpp: "gp_Elips(@)",
                                   header: "gp_Elips.hxx".}
proc constructgp_Elips*(A2: gp_Ax2; MajorRadius: Standard_Real;
                       MinorRadius: Standard_Real): gp_Elips {.constructor,
    importcpp: "gp_Elips(@)", header: "gp_Elips.hxx".}
proc SetAxis*(this: var gp_Elips; A1: gp_Ax1) {.importcpp: "SetAxis",
    header: "gp_Elips.hxx".}
proc SetLocation*(this: var gp_Elips; P: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Elips.hxx".}
proc SetMajorRadius*(this: var gp_Elips; MajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "gp_Elips.hxx".}
proc SetMinorRadius*(this: var gp_Elips; MinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "gp_Elips.hxx".}
proc SetPosition*(this: var gp_Elips; A2: gp_Ax2) {.importcpp: "SetPosition",
    header: "gp_Elips.hxx".}
proc Area*(this: gp_Elips): Standard_Real {.noSideEffect, importcpp: "Area",
                                        header: "gp_Elips.hxx".}
proc Axis*(this: gp_Elips): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                                 header: "gp_Elips.hxx".}
proc Directrix1*(this: gp_Elips): gp_Ax1 {.noSideEffect, importcpp: "Directrix1",
                                       header: "gp_Elips.hxx".}
proc Directrix2*(this: gp_Elips): gp_Ax1 {.noSideEffect, importcpp: "Directrix2",
                                       header: "gp_Elips.hxx".}
proc Eccentricity*(this: gp_Elips): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "gp_Elips.hxx".}
proc Focal*(this: gp_Elips): Standard_Real {.noSideEffect, importcpp: "Focal",
    header: "gp_Elips.hxx".}
proc Focus1*(this: gp_Elips): gp_Pnt {.noSideEffect, importcpp: "Focus1",
                                   header: "gp_Elips.hxx".}
proc Focus2*(this: gp_Elips): gp_Pnt {.noSideEffect, importcpp: "Focus2",
                                   header: "gp_Elips.hxx".}
proc Location*(this: gp_Elips): gp_Pnt {.noSideEffect, importcpp: "Location",
                                     header: "gp_Elips.hxx".}
proc MajorRadius*(this: gp_Elips): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "gp_Elips.hxx".}
proc MinorRadius*(this: gp_Elips): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "gp_Elips.hxx".}
proc Parameter*(this: gp_Elips): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "gp_Elips.hxx".}
proc Position*(this: gp_Elips): gp_Ax2 {.noSideEffect, importcpp: "Position",
                                     header: "gp_Elips.hxx".}
proc XAxis*(this: gp_Elips): gp_Ax1 {.noSideEffect, importcpp: "XAxis",
                                  header: "gp_Elips.hxx".}
proc YAxis*(this: gp_Elips): gp_Ax1 {.noSideEffect, importcpp: "YAxis",
                                  header: "gp_Elips.hxx".}
proc Mirror*(this: var gp_Elips; P: gp_Pnt) {.importcpp: "Mirror",
                                        header: "gp_Elips.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Elips; A1: gp_Ax1) {.importcpp: "Mirror",
    header: "gp_Elips.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Elips; A2: gp_Ax2) {.importcpp: "Mirror",
    header: "gp_Elips.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Elips; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Elips.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Elips; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Elips.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Elips; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Elips.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Elips; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Elips.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Elips; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Elips.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
