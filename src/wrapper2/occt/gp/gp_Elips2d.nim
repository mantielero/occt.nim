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
  gp_Elips2d* {.importcpp: "gp_Elips2d", header: "gp_Elips2d.hxx", bycopy.} = object ## !
                                                                             ## Creates an
                                                                             ## indefinite
                                                                             ## ellipse.
    gp_Elips2d* {.importc: "gp_Elips2d".}: Standard_NODISCARD
    gp_Elips2d* {.importc: "gp_Elips2d".}: Standard_NODISCARD
    gp_Elips2d* {.importc: "gp_Elips2d".}: Standard_NODISCARD
    gp_Elips2d* {.importc: "gp_Elips2d".}: Standard_NODISCARD
    gp_Elips2d* {.importc: "gp_Elips2d".}: Standard_NODISCARD
    gp_Elips2d* {.importc: "gp_Elips2d".}: Standard_NODISCARD
    gp_Elips2d* {.importc: "gp_Elips2d".}: Standard_NODISCARD
    gp_Elips2d* {.importc: "gp_Elips2d".}: Standard_NODISCARD


proc constructgp_Elips2d*(): gp_Elips2d {.constructor, importcpp: "gp_Elips2d(@)",
                                       header: "gp_Elips2d.hxx".}
proc constructgp_Elips2d*(MajorAxis: gp_Ax2d; MajorRadius: Standard_Real;
                         MinorRadius: Standard_Real;
                         Sense: Standard_Boolean = Standard_True): gp_Elips2d {.
    constructor, importcpp: "gp_Elips2d(@)", header: "gp_Elips2d.hxx".}
proc constructgp_Elips2d*(A: gp_Ax22d; MajorRadius: Standard_Real;
                         MinorRadius: Standard_Real): gp_Elips2d {.constructor,
    importcpp: "gp_Elips2d(@)", header: "gp_Elips2d.hxx".}
proc SetLocation*(this: var gp_Elips2d; P: gp_Pnt2d) {.importcpp: "SetLocation",
    header: "gp_Elips2d.hxx".}
proc SetMajorRadius*(this: var gp_Elips2d; MajorRadius: Standard_Real) {.
    importcpp: "SetMajorRadius", header: "gp_Elips2d.hxx".}
proc SetMinorRadius*(this: var gp_Elips2d; MinorRadius: Standard_Real) {.
    importcpp: "SetMinorRadius", header: "gp_Elips2d.hxx".}
proc SetAxis*(this: var gp_Elips2d; A: gp_Ax22d) {.importcpp: "SetAxis",
    header: "gp_Elips2d.hxx".}
proc SetXAxis*(this: var gp_Elips2d; A: gp_Ax2d) {.importcpp: "SetXAxis",
    header: "gp_Elips2d.hxx".}
proc SetYAxis*(this: var gp_Elips2d; A: gp_Ax2d) {.importcpp: "SetYAxis",
    header: "gp_Elips2d.hxx".}
proc Area*(this: gp_Elips2d): Standard_Real {.noSideEffect, importcpp: "Area",
    header: "gp_Elips2d.hxx".}
proc Coefficients*(this: gp_Elips2d; A: var Standard_Real; B: var Standard_Real;
                  C: var Standard_Real; D: var Standard_Real; E: var Standard_Real;
                  F: var Standard_Real) {.noSideEffect, importcpp: "Coefficients",
                                       header: "gp_Elips2d.hxx".}
proc Directrix1*(this: gp_Elips2d): gp_Ax2d {.noSideEffect, importcpp: "Directrix1",
    header: "gp_Elips2d.hxx".}
proc Directrix2*(this: gp_Elips2d): gp_Ax2d {.noSideEffect, importcpp: "Directrix2",
    header: "gp_Elips2d.hxx".}
proc Eccentricity*(this: gp_Elips2d): Standard_Real {.noSideEffect,
    importcpp: "Eccentricity", header: "gp_Elips2d.hxx".}
proc Focal*(this: gp_Elips2d): Standard_Real {.noSideEffect, importcpp: "Focal",
    header: "gp_Elips2d.hxx".}
proc Focus1*(this: gp_Elips2d): gp_Pnt2d {.noSideEffect, importcpp: "Focus1",
                                       header: "gp_Elips2d.hxx".}
proc Focus2*(this: gp_Elips2d): gp_Pnt2d {.noSideEffect, importcpp: "Focus2",
                                       header: "gp_Elips2d.hxx".}
proc Location*(this: gp_Elips2d): gp_Pnt2d {.noSideEffect, importcpp: "Location",
    header: "gp_Elips2d.hxx".}
proc MajorRadius*(this: gp_Elips2d): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "gp_Elips2d.hxx".}
proc MinorRadius*(this: gp_Elips2d): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "gp_Elips2d.hxx".}
proc Parameter*(this: gp_Elips2d): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "gp_Elips2d.hxx".}
proc Axis*(this: gp_Elips2d): gp_Ax22d {.noSideEffect, importcpp: "Axis",
                                     header: "gp_Elips2d.hxx".}
proc XAxis*(this: gp_Elips2d): gp_Ax2d {.noSideEffect, importcpp: "XAxis",
                                     header: "gp_Elips2d.hxx".}
proc YAxis*(this: gp_Elips2d): gp_Ax2d {.noSideEffect, importcpp: "YAxis",
                                     header: "gp_Elips2d.hxx".}
proc Reverse*(this: var gp_Elips2d) {.importcpp: "Reverse", header: "gp_Elips2d.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

proc IsDirect*(this: gp_Elips2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDirect", header: "gp_Elips2d.hxx".}
proc Mirror*(this: var gp_Elips2d; P: gp_Pnt2d) {.importcpp: "Mirror",
    header: "gp_Elips2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt2d & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Elips2d; A: gp_Ax2d) {.importcpp: "Mirror",
    header: "gp_Elips2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2d & A ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Elips2d; P: gp_Pnt2d; Ang: Standard_Real) {.
    importcpp: "Rotate", header: "gp_Elips2d.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Pnt2d & P , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Elips2d; P: gp_Pnt2d; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Elips2d.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt2d & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Elips2d; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "gp_Elips2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Elips2d; V: gp_Vec2d) {.importcpp: "Translate",
    header: "gp_Elips2d.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec2d & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Elips2d; P1: gp_Pnt2d; P2: gp_Pnt2d) {.
    importcpp: "Translate", header: "gp_Elips2d.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt2d & P1 , const gp_Pnt2d & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!
