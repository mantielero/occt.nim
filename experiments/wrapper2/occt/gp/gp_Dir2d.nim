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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
type
  gp_Dir2d* {.importcpp: "gp_Dir2d", header: "gp_Dir2d.hxx", bycopy.} = object ## ! Creates a direction
                                                                       ## corresponding to X axis.
    Standard_Real* {.importc: "Standard_Real".}: Standard_NODISCARD
    Standard_Real* {.importc: "Standard_Real".}: Standard_NODISCARD
    gp_Dir2d* {.importc: "gp_Dir2d".}: Standard_NODISCARD
    gp_Dir2d* {.importc: "gp_Dir2d".}: Standard_NODISCARD
    gp_Dir2d* {.importc: "gp_Dir2d".}: Standard_NODISCARD
    gp_Dir2d* {.importc: "gp_Dir2d".}: Standard_NODISCARD
    gp_Dir2d* {.importc: "gp_Dir2d".}: Standard_NODISCARD
    gp_Dir2d* {.importc: "gp_Dir2d".}: Standard_NODISCARD


proc constructgp_Dir2d*(): gp_Dir2d {.constructor, importcpp: "gp_Dir2d(@)",
                                   header: "gp_Dir2d.hxx".}
proc constructgp_Dir2d*(V: gp_Vec2d): gp_Dir2d {.constructor,
    importcpp: "gp_Dir2d(@)", header: "gp_Dir2d.hxx".}
proc constructgp_Dir2d*(Coord: gp_XY): gp_Dir2d {.constructor,
    importcpp: "gp_Dir2d(@)", header: "gp_Dir2d.hxx".}
proc constructgp_Dir2d*(Xv: Standard_Real; Yv: Standard_Real): gp_Dir2d {.constructor,
    importcpp: "gp_Dir2d(@)", header: "gp_Dir2d.hxx".}
proc SetCoord*(this: var gp_Dir2d; Index: Standard_Integer; Xi: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Dir2d.hxx".}
proc SetCoord*(this: var gp_Dir2d; Xv: Standard_Real; Yv: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Dir2d.hxx".}
proc SetX*(this: var gp_Dir2d; X: Standard_Real) {.importcpp: "SetX",
    header: "gp_Dir2d.hxx".}
proc SetY*(this: var gp_Dir2d; Y: Standard_Real) {.importcpp: "SetY",
    header: "gp_Dir2d.hxx".}
proc SetXY*(this: var gp_Dir2d; Coord: gp_XY) {.importcpp: "SetXY",
    header: "gp_Dir2d.hxx".}
proc Coord*(this: gp_Dir2d; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Coord", header: "gp_Dir2d.hxx".}
proc Coord*(this: gp_Dir2d; Xv: var Standard_Real; Yv: var Standard_Real) {.noSideEffect,
    importcpp: "Coord", header: "gp_Dir2d.hxx".}
proc X*(this: gp_Dir2d): Standard_Real {.noSideEffect, importcpp: "X",
                                     header: "gp_Dir2d.hxx".}
proc Y*(this: gp_Dir2d): Standard_Real {.noSideEffect, importcpp: "Y",
                                     header: "gp_Dir2d.hxx".}
proc XY*(this: gp_Dir2d): gp_XY {.noSideEffect, importcpp: "XY", header: "gp_Dir2d.hxx".}
proc IsEqual*(this: gp_Dir2d; Other: gp_Dir2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_Dir2d.hxx".}
proc IsNormal*(this: gp_Dir2d; Other: gp_Dir2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsNormal", header: "gp_Dir2d.hxx".}
proc IsOpposite*(this: gp_Dir2d; Other: gp_Dir2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Dir2d.hxx".}
proc IsParallel*(this: gp_Dir2d; Other: gp_Dir2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Dir2d.hxx".}
proc Angle*(this: gp_Dir2d; Other: gp_Dir2d): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "gp_Dir2d.hxx".}
## !!!Ignored construct:  Crossed ( const gp_Dir2d & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator ^ ( const gp_Dir2d & Right ) const { return Crossed ( Right ) ; } ! Computes the scalar product Standard_Real Dot ( const gp_Dir2d & Other ) const ;
## Error: identifier expected, but got: ^!!!

proc `*`*(this: gp_Dir2d; Other: gp_Dir2d): Standard_Real {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Dir2d.hxx".}
proc Reverse*(this: var gp_Dir2d) {.importcpp: "Reverse", header: "gp_Dir2d.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  operator - ( ) const { return Reversed ( ) ; } void Mirror ( const gp_Dir2d & V ) ;
## Error: identifier expected, but got: -!!!

## !!!Ignored construct:  Mirrored ( const gp_Dir2d & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Dir2d; A: gp_Ax2d) {.importcpp: "Mirror",
    header: "gp_Dir2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2d & A ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Dir2d; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Dir2d.hxx".}
## !!!Ignored construct:  Rotated ( const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Dir2d; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "gp_Dir2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc DumpJson*(this: gp_Dir2d; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Dir2d.hxx".}