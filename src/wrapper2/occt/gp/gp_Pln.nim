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
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Pln* {.importcpp: "gp_Pln", header: "gp_Pln.hxx", bycopy.} = object ## ! Creates a plane coincident with OXY plane of the
                                                                 ## ! reference coordinate system.
    gp_Pln* {.importc: "gp_Pln".}: Standard_NODISCARD
    gp_Pln* {.importc: "gp_Pln".}: Standard_NODISCARD
    gp_Pln* {.importc: "gp_Pln".}: Standard_NODISCARD
    gp_Pln* {.importc: "gp_Pln".}: Standard_NODISCARD
    gp_Pln* {.importc: "gp_Pln".}: Standard_NODISCARD
    gp_Pln* {.importc: "gp_Pln".}: Standard_NODISCARD
    gp_Pln* {.importc: "gp_Pln".}: Standard_NODISCARD
    gp_Pln* {.importc: "gp_Pln".}: Standard_NODISCARD


proc constructgp_Pln*(): gp_Pln {.constructor, importcpp: "gp_Pln(@)",
                               header: "gp_Pln.hxx".}
proc constructgp_Pln*(A3: gp_Ax3): gp_Pln {.constructor, importcpp: "gp_Pln(@)",
                                        header: "gp_Pln.hxx".}
proc constructgp_Pln*(P: gp_Pnt; V: gp_Dir): gp_Pln {.constructor,
    importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc constructgp_Pln*(A: Standard_Real; B: Standard_Real; C: Standard_Real;
                     D: Standard_Real): gp_Pln {.constructor,
    importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc Coefficients*(this: gp_Pln; A: var Standard_Real; B: var Standard_Real;
                  C: var Standard_Real; D: var Standard_Real) {.noSideEffect,
    importcpp: "Coefficients", header: "gp_Pln.hxx".}
proc SetAxis*(this: var gp_Pln; A1: gp_Ax1) {.importcpp: "SetAxis", header: "gp_Pln.hxx".}
proc SetLocation*(this: var gp_Pln; Loc: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Pln.hxx".}
proc SetPosition*(this: var gp_Pln; A3: gp_Ax3) {.importcpp: "SetPosition",
    header: "gp_Pln.hxx".}
proc UReverse*(this: var gp_Pln) {.importcpp: "UReverse", header: "gp_Pln.hxx".}
proc VReverse*(this: var gp_Pln) {.importcpp: "VReverse", header: "gp_Pln.hxx".}
proc Direct*(this: gp_Pln): Standard_Boolean {.noSideEffect, importcpp: "Direct",
    header: "gp_Pln.hxx".}
proc Axis*(this: gp_Pln): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                               header: "gp_Pln.hxx".}
proc Location*(this: gp_Pln): gp_Pnt {.noSideEffect, importcpp: "Location",
                                   header: "gp_Pln.hxx".}
proc Position*(this: gp_Pln): gp_Ax3 {.noSideEffect, importcpp: "Position",
                                   header: "gp_Pln.hxx".}
proc Distance*(this: gp_Pln; P: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "gp_Pln.hxx".}
proc Distance*(this: gp_Pln; L: gp_Lin): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "gp_Pln.hxx".}
proc Distance*(this: gp_Pln; Other: gp_Pln): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "gp_Pln.hxx".}
proc SquareDistance*(this: gp_Pln; P: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc SquareDistance*(this: gp_Pln; L: gp_Lin): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc SquareDistance*(this: gp_Pln; Other: gp_Pln): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc XAxis*(this: gp_Pln): gp_Ax1 {.noSideEffect, importcpp: "XAxis",
                                header: "gp_Pln.hxx".}
proc YAxis*(this: gp_Pln): gp_Ax1 {.noSideEffect, importcpp: "YAxis",
                                header: "gp_Pln.hxx".}
proc Contains*(this: gp_Pln; P: gp_Pnt; LinearTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "gp_Pln.hxx".}
proc Contains*(this: gp_Pln; L: gp_Lin; LinearTolerance: Standard_Real;
              AngularTolerance: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "Contains", header: "gp_Pln.hxx".}
proc Mirror*(this: var gp_Pln; P: gp_Pnt) {.importcpp: "Mirror", header: "gp_Pln.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Pln; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Pln.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Pln; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Pln.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Pln; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Pln.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Pln; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Pln.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Pln; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Pln.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Pln; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Pln.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Pln; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Pln.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc DumpJson*(this: gp_Pln; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Pln.hxx".}