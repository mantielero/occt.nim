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
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Hypr* {.importcpp: "gp_Hypr", header: "gp_Hypr.hxx", bycopy.} = object ## ! Creates of an indefinite hyperbola.
    gp_Hypr* {.importc: "gp_Hypr".}: Standard_NODISCARD
    gp_Hypr* {.importc: "gp_Hypr".}: Standard_NODISCARD
    gp_Hypr* {.importc: "gp_Hypr".}: Standard_NODISCARD
    gp_Hypr* {.importc: "gp_Hypr".}: Standard_NODISCARD
    gp_Hypr* {.importc: "gp_Hypr".}: Standard_NODISCARD
    gp_Hypr* {.importc: "gp_Hypr".}: Standard_NODISCARD
    gp_Hypr* {.importc: "gp_Hypr".}: Standard_NODISCARD
    gp_Hypr* {.importc: "gp_Hypr".}: Standard_NODISCARD


proc constructgp_Hypr*(): gp_Hypr {.constructor, importcpp: "gp_Hypr(@)",
                                 header: "gp_Hypr.hxx".}
proc constructgp_Hypr*(A2: gp_Ax2; MajorRadius: Standard_Real;
                      MinorRadius: Standard_Real): gp_Hypr {.constructor,
    importcpp: "gp_Hypr(@)", header: "gp_Hypr.hxx".}
proc SetAxis*(this: var gp_Hypr; A1: gp_Ax1) {.importcpp: "SetAxis",
    header: "gp_Hypr.hxx".}
proc SetLocation*(this: var gp_Hypr; P: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Hypr.hxx".}
proc SetMajorRadius*(this: var gp_Hypr; MajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "gp_Hypr.hxx".}
proc SetMinorRadius*(this: var gp_Hypr; MinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "gp_Hypr.hxx".}
proc SetPosition*(this: var gp_Hypr; A2: gp_Ax2) {.importcpp: "SetPosition",
    header: "gp_Hypr.hxx".}
proc Asymptote1*(this: gp_Hypr): gp_Ax1 {.noSideEffect, importcpp: "Asymptote1",
                                      header: "gp_Hypr.hxx".}
proc Asymptote2*(this: gp_Hypr): gp_Ax1 {.noSideEffect, importcpp: "Asymptote2",
                                      header: "gp_Hypr.hxx".}
proc Axis*(this: gp_Hypr): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                                header: "gp_Hypr.hxx".}
proc ConjugateBranch1*(this: gp_Hypr): gp_Hypr {.noSideEffect,
    importcpp: "ConjugateBranch1", header: "gp_Hypr.hxx".}
proc ConjugateBranch2*(this: gp_Hypr): gp_Hypr {.noSideEffect,
    importcpp: "ConjugateBranch2", header: "gp_Hypr.hxx".}
proc Directrix1*(this: gp_Hypr): gp_Ax1 {.noSideEffect, importcpp: "Directrix1",
                                      header: "gp_Hypr.hxx".}
proc Directrix2*(this: gp_Hypr): gp_Ax1 {.noSideEffect, importcpp: "Directrix2",
                                      header: "gp_Hypr.hxx".}
proc Eccentricity*(this: gp_Hypr): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "gp_Hypr.hxx".}
proc Focal*(this: gp_Hypr): Standard_Real {.noSideEffect, importcpp: "Focal",
                                        header: "gp_Hypr.hxx".}
proc Focus1*(this: gp_Hypr): gp_Pnt {.noSideEffect, importcpp: "Focus1",
                                  header: "gp_Hypr.hxx".}
proc Focus2*(this: gp_Hypr): gp_Pnt {.noSideEffect, importcpp: "Focus2",
                                  header: "gp_Hypr.hxx".}
proc Location*(this: gp_Hypr): gp_Pnt {.noSideEffect, importcpp: "Location",
                                    header: "gp_Hypr.hxx".}
proc MajorRadius*(this: gp_Hypr): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "gp_Hypr.hxx".}
proc MinorRadius*(this: gp_Hypr): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "gp_Hypr.hxx".}
proc OtherBranch*(this: gp_Hypr): gp_Hypr {.noSideEffect, importcpp: "OtherBranch",
                                        header: "gp_Hypr.hxx".}
proc Parameter*(this: gp_Hypr): Standard_Real {.noSideEffect, importcpp: "Parameter",
    header: "gp_Hypr.hxx".}
proc Position*(this: gp_Hypr): gp_Ax2 {.noSideEffect, importcpp: "Position",
                                    header: "gp_Hypr.hxx".}
proc XAxis*(this: gp_Hypr): gp_Ax1 {.noSideEffect, importcpp: "XAxis",
                                 header: "gp_Hypr.hxx".}
proc YAxis*(this: gp_Hypr): gp_Ax1 {.noSideEffect, importcpp: "YAxis",
                                 header: "gp_Hypr.hxx".}
proc Mirror*(this: var gp_Hypr; P: gp_Pnt) {.importcpp: "Mirror", header: "gp_Hypr.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Hypr; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Hypr.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Hypr; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Hypr.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Hypr; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Hypr.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Hypr; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Hypr.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Hypr; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Hypr.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Hypr; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Hypr.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Hypr; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Hypr.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
