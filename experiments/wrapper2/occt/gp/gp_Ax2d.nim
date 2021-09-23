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
  ../Standard/Standard_Handle, gp_Pnt2d, gp_Dir2d, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  gp_Ax2d* {.importcpp: "gp_Ax2d", header: "gp_Ax2d.hxx", bycopy.} = object ## ! Creates an axis object representing X axis of
                                                                    ## ! the reference co-ordinate system.
    gp_Ax2d* {.importc: "gp_Ax2d".}: Standard_NODISCARD
    gp_Ax2d* {.importc: "gp_Ax2d".}: Standard_NODISCARD
    gp_Ax2d* {.importc: "gp_Ax2d".}: Standard_NODISCARD
    gp_Ax2d* {.importc: "gp_Ax2d".}: Standard_NODISCARD
    gp_Ax2d* {.importc: "gp_Ax2d".}: Standard_NODISCARD
    gp_Ax2d* {.importc: "gp_Ax2d".}: Standard_NODISCARD
    gp_Ax2d* {.importc: "gp_Ax2d".}: Standard_NODISCARD
    gp_Ax2d* {.importc: "gp_Ax2d".}: Standard_NODISCARD


proc constructgp_Ax2d*(): gp_Ax2d {.constructor, importcpp: "gp_Ax2d(@)",
                                 header: "gp_Ax2d.hxx".}
proc constructgp_Ax2d*(P: gp_Pnt2d; V: gp_Dir2d): gp_Ax2d {.constructor,
    importcpp: "gp_Ax2d(@)", header: "gp_Ax2d.hxx".}
proc SetLocation*(this: var gp_Ax2d; Locat: gp_Pnt2d) {.importcpp: "SetLocation",
    header: "gp_Ax2d.hxx".}
proc SetDirection*(this: var gp_Ax2d; V: gp_Dir2d) {.importcpp: "SetDirection",
    header: "gp_Ax2d.hxx".}
proc Location*(this: gp_Ax2d): gp_Pnt2d {.noSideEffect, importcpp: "Location",
                                      header: "gp_Ax2d.hxx".}
proc Direction*(this: gp_Ax2d): gp_Dir2d {.noSideEffect, importcpp: "Direction",
                                       header: "gp_Ax2d.hxx".}
proc IsCoaxial*(this: gp_Ax2d; Other: gp_Ax2d; AngularTolerance: Standard_Real;
               LinearTolerance: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsCoaxial", header: "gp_Ax2d.hxx".}
proc IsNormal*(this: gp_Ax2d; Other: gp_Ax2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsNormal", header: "gp_Ax2d.hxx".}
proc IsOpposite*(this: gp_Ax2d; Other: gp_Ax2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Ax2d.hxx".}
proc IsParallel*(this: gp_Ax2d; Other: gp_Ax2d; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Ax2d.hxx".}
proc Angle*(this: gp_Ax2d; Other: gp_Ax2d): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "gp_Ax2d.hxx".}
proc Reverse*(this: var gp_Ax2d) {.importcpp: "Reverse", header: "gp_Ax2d.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

proc Mirror*(this: var gp_Ax2d; P: gp_Pnt2d) {.importcpp: "Mirror",
    header: "gp_Ax2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt2d & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Ax2d; A: gp_Ax2d) {.importcpp: "Mirror", header: "gp_Ax2d.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2d & A ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Ax2d; P: gp_Pnt2d; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Ax2d.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Pnt2d & P , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Ax2d; P: gp_Pnt2d; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Ax2d.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt2d & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Ax2d; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "gp_Ax2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Ax2d; V: gp_Vec2d) {.importcpp: "Translate",
    header: "gp_Ax2d.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec2d & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Ax2d; P1: gp_Pnt2d; P2: gp_Pnt2d) {.importcpp: "Translate",
    header: "gp_Ax2d.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt2d & P1 , const gp_Pnt2d & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc DumpJson*(this: gp_Ax2d; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Ax2d.hxx".}