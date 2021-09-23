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
  ../Standard/Standard_Handle, gp_Ax22d, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, gp_Ax2d, gp_Pnt2d

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  gp_Parab2d* {.importcpp: "gp_Parab2d", header: "gp_Parab2d.hxx", bycopy.} = object ## !
                                                                             ## Creates an
                                                                             ## indefinite
                                                                             ## parabola.
    gp_Parab2d* {.importc: "gp_Parab2d".}: Standard_NODISCARD
    gp_Parab2d* {.importc: "gp_Parab2d".}: Standard_NODISCARD
    gp_Parab2d* {.importc: "gp_Parab2d".}: Standard_NODISCARD
    gp_Parab2d* {.importc: "gp_Parab2d".}: Standard_NODISCARD
    gp_Parab2d* {.importc: "gp_Parab2d".}: Standard_NODISCARD
    gp_Parab2d* {.importc: "gp_Parab2d".}: Standard_NODISCARD
    gp_Parab2d* {.importc: "gp_Parab2d".}: Standard_NODISCARD
    gp_Parab2d* {.importc: "gp_Parab2d".}: Standard_NODISCARD


proc constructgp_Parab2d*(): gp_Parab2d {.constructor, importcpp: "gp_Parab2d(@)",
                                       header: "gp_Parab2d.hxx".}
proc constructgp_Parab2d*(theMirrorAxis: gp_Ax2d; theFocalLength: Standard_Real;
                         theSense: Standard_Boolean = Standard_True): gp_Parab2d {.
    constructor, importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc constructgp_Parab2d*(theAxes: gp_Ax22d; theFocalLength: Standard_Real): gp_Parab2d {.
    constructor, importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc constructgp_Parab2d*(theDirectrix: gp_Ax2d; theFocus: gp_Pnt2d;
                         theSense: Standard_Boolean = Standard_True): gp_Parab2d {.
    constructor, importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc SetFocal*(this: var gp_Parab2d; Focal: Standard_Real) {.importcpp: "SetFocal",
    header: "gp_Parab2d.hxx".}
proc SetLocation*(this: var gp_Parab2d; P: gp_Pnt2d) {.importcpp: "SetLocation",
    header: "gp_Parab2d.hxx".}
proc SetMirrorAxis*(this: var gp_Parab2d; A: gp_Ax2d) {.importcpp: "SetMirrorAxis",
    header: "gp_Parab2d.hxx".}
proc SetAxis*(this: var gp_Parab2d; A: gp_Ax22d) {.importcpp: "SetAxis",
    header: "gp_Parab2d.hxx".}
proc Coefficients*(this: gp_Parab2d; A: var Standard_Real; B: var Standard_Real;
                  C: var Standard_Real; D: var Standard_Real; E: var Standard_Real;
                  F: var Standard_Real) {.noSideEffect, importcpp: "Coefficients",
                                       header: "gp_Parab2d.hxx".}
proc Directrix*(this: gp_Parab2d): gp_Ax2d {.noSideEffect, importcpp: "Directrix",
    header: "gp_Parab2d.hxx".}
proc Focal*(this: gp_Parab2d): Standard_Real {.noSideEffect, importcpp: "Focal",
    header: "gp_Parab2d.hxx".}
proc Focus*(this: gp_Parab2d): gp_Pnt2d {.noSideEffect, importcpp: "Focus",
                                      header: "gp_Parab2d.hxx".}
proc Location*(this: gp_Parab2d): gp_Pnt2d {.noSideEffect, importcpp: "Location",
    header: "gp_Parab2d.hxx".}
proc MirrorAxis*(this: gp_Parab2d): gp_Ax2d {.noSideEffect, importcpp: "MirrorAxis",
    header: "gp_Parab2d.hxx".}
proc Axis*(this: gp_Parab2d): gp_Ax22d {.noSideEffect, importcpp: "Axis",
                                     header: "gp_Parab2d.hxx".}
proc Parameter*(this: gp_Parab2d): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "gp_Parab2d.hxx".}
proc Reverse*(this: var gp_Parab2d) {.importcpp: "Reverse", header: "gp_Parab2d.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

proc IsDirect*(this: gp_Parab2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDirect", header: "gp_Parab2d.hxx".}
proc Mirror*(this: var gp_Parab2d; P: gp_Pnt2d) {.importcpp: "Mirror",
    header: "gp_Parab2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt2d & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Parab2d; A: gp_Ax2d) {.importcpp: "Mirror",
    header: "gp_Parab2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2d & A ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Parab2d; P: gp_Pnt2d; Ang: Standard_Real) {.
    importcpp: "Rotate", header: "gp_Parab2d.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Pnt2d & P , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Parab2d; P: gp_Pnt2d; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Parab2d.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt2d & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Parab2d; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "gp_Parab2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Parab2d; V: gp_Vec2d) {.importcpp: "Translate",
    header: "gp_Parab2d.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec2d & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Parab2d; P1: gp_Pnt2d; P2: gp_Pnt2d) {.
    importcpp: "Translate", header: "gp_Parab2d.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt2d & P1 , const gp_Pnt2d & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
