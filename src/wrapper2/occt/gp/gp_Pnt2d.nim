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
  ../Standard/Standard_Handle, gp_XY, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  gp_Pnt2d* {.importcpp: "gp_Pnt2d", header: "gp_Pnt2d.hxx", bycopy.} = object ## ! Creates a point with zero
                                                                       ## coordinates.
    gp_Pnt2d* {.importc: "gp_Pnt2d".}: Standard_NODISCARD
    gp_Pnt2d* {.importc: "gp_Pnt2d".}: Standard_NODISCARD
    gp_Pnt2d* {.importc: "gp_Pnt2d".}: Standard_NODISCARD
    gp_Pnt2d* {.importc: "gp_Pnt2d".}: Standard_NODISCARD
    gp_Pnt2d* {.importc: "gp_Pnt2d".}: Standard_NODISCARD
    gp_Pnt2d* {.importc: "gp_Pnt2d".}: Standard_NODISCARD
    gp_Pnt2d* {.importc: "gp_Pnt2d".}: Standard_NODISCARD


proc constructgp_Pnt2d*(): gp_Pnt2d {.constructor, importcpp: "gp_Pnt2d(@)",
                                   header: "gp_Pnt2d.hxx".}
proc constructgp_Pnt2d*(Coord: gp_XY): gp_Pnt2d {.constructor,
    importcpp: "gp_Pnt2d(@)", header: "gp_Pnt2d.hxx".}
proc constructgp_Pnt2d*(Xp: Standard_Real; Yp: Standard_Real): gp_Pnt2d {.constructor,
    importcpp: "gp_Pnt2d(@)", header: "gp_Pnt2d.hxx".}
proc SetCoord*(this: var gp_Pnt2d; Index: Standard_Integer; Xi: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Pnt2d.hxx".}
proc SetCoord*(this: var gp_Pnt2d; Xp: Standard_Real; Yp: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Pnt2d.hxx".}
proc SetX*(this: var gp_Pnt2d; X: Standard_Real) {.importcpp: "SetX",
    header: "gp_Pnt2d.hxx".}
proc SetY*(this: var gp_Pnt2d; Y: Standard_Real) {.importcpp: "SetY",
    header: "gp_Pnt2d.hxx".}
proc SetXY*(this: var gp_Pnt2d; Coord: gp_XY) {.importcpp: "SetXY",
    header: "gp_Pnt2d.hxx".}
proc Coord*(this: gp_Pnt2d; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Coord", header: "gp_Pnt2d.hxx".}
proc Coord*(this: gp_Pnt2d; Xp: var Standard_Real; Yp: var Standard_Real) {.noSideEffect,
    importcpp: "Coord", header: "gp_Pnt2d.hxx".}
proc X*(this: gp_Pnt2d): Standard_Real {.noSideEffect, importcpp: "X",
                                     header: "gp_Pnt2d.hxx".}
proc Y*(this: gp_Pnt2d): Standard_Real {.noSideEffect, importcpp: "Y",
                                     header: "gp_Pnt2d.hxx".}
proc XY*(this: gp_Pnt2d): gp_XY {.noSideEffect, importcpp: "XY", header: "gp_Pnt2d.hxx".}
proc Coord*(this: gp_Pnt2d): gp_XY {.noSideEffect, importcpp: "Coord",
                                 header: "gp_Pnt2d.hxx".}
proc ChangeCoord*(this: var gp_Pnt2d): var gp_XY {.importcpp: "ChangeCoord",
    header: "gp_Pnt2d.hxx".}
proc IsEqual*(this: gp_Pnt2d; Other: gp_Pnt2d; LinearTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_Pnt2d.hxx".}
proc Distance*(this: gp_Pnt2d; Other: gp_Pnt2d): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "gp_Pnt2d.hxx".}
proc SquareDistance*(this: gp_Pnt2d; Other: gp_Pnt2d): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pnt2d.hxx".}
proc Mirror*(this: var gp_Pnt2d; P: gp_Pnt2d) {.importcpp: "Mirror",
    header: "gp_Pnt2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt2d & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Pnt2d; A: gp_Ax2d) {.importcpp: "Mirror",
    header: "gp_Pnt2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2d & A ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Pnt2d; P: gp_Pnt2d; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Pnt2d.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Pnt2d & P , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Pnt2d; P: gp_Pnt2d; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Pnt2d.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt2d & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Pnt2d; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "gp_Pnt2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Pnt2d; V: gp_Vec2d) {.importcpp: "Translate",
    header: "gp_Pnt2d.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec2d & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Pnt2d; P1: gp_Pnt2d; P2: gp_Pnt2d) {.
    importcpp: "Translate", header: "gp_Pnt2d.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt2d & P1 , const gp_Pnt2d & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc DumpJson*(this: gp_Pnt2d; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Pnt2d.hxx".}