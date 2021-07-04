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
  ../Standard/Standard_Handle, gp_Pnt, gp_Dir, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Ax1* {.importcpp: "gp_Ax1", header: "gp_Ax1.hxx", bycopy.} = object ## ! Creates an axis object representing Z axis of
                                                                 ## ! the reference co-ordinate system.
    gp_Ax1* {.importc: "gp_Ax1".}: Standard_NODISCARD
    gp_Ax1* {.importc: "gp_Ax1".}: Standard_NODISCARD
    gp_Ax1* {.importc: "gp_Ax1".}: Standard_NODISCARD
    gp_Ax1* {.importc: "gp_Ax1".}: Standard_NODISCARD
    gp_Ax1* {.importc: "gp_Ax1".}: Standard_NODISCARD
    gp_Ax1* {.importc: "gp_Ax1".}: Standard_NODISCARD
    gp_Ax1* {.importc: "gp_Ax1".}: Standard_NODISCARD
    gp_Ax1* {.importc: "gp_Ax1".}: Standard_NODISCARD
    gp_Ax1* {.importc: "gp_Ax1".}: Standard_NODISCARD


proc constructgp_Ax1*(): gp_Ax1 {.constructor, importcpp: "gp_Ax1(@)",
                               header: "gp_Ax1.hxx".}
proc constructgp_Ax1*(P: gp_Pnt; V: gp_Dir): gp_Ax1 {.constructor,
    importcpp: "gp_Ax1(@)", header: "gp_Ax1.hxx".}
proc SetDirection*(this: var gp_Ax1; V: gp_Dir) {.importcpp: "SetDirection",
    header: "gp_Ax1.hxx".}
proc SetLocation*(this: var gp_Ax1; P: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Ax1.hxx".}
proc Direction*(this: gp_Ax1): gp_Dir {.noSideEffect, importcpp: "Direction",
                                    header: "gp_Ax1.hxx".}
proc Location*(this: gp_Ax1): gp_Pnt {.noSideEffect, importcpp: "Location",
                                   header: "gp_Ax1.hxx".}
proc IsCoaxial*(this: gp_Ax1; Other: gp_Ax1; AngularTolerance: Standard_Real;
               LinearTolerance: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsCoaxial", header: "gp_Ax1.hxx".}
proc IsNormal*(this: gp_Ax1; Other: gp_Ax1; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsNormal", header: "gp_Ax1.hxx".}
proc IsOpposite*(this: gp_Ax1; Other: gp_Ax1; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Ax1.hxx".}
proc IsParallel*(this: gp_Ax1; Other: gp_Ax1; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Ax1.hxx".}
proc Angle*(this: gp_Ax1; Other: gp_Ax1): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "gp_Ax1.hxx".}
proc Reverse*(this: var gp_Ax1) {.importcpp: "Reverse", header: "gp_Ax1.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

proc Mirror*(this: var gp_Ax1; P: gp_Pnt) {.importcpp: "Mirror", header: "gp_Ax1.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Ax1; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Ax1.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Ax1; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Ax1.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Ax1; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Ax1.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Ax1; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Ax1.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Ax1; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Ax1.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Ax1; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Ax1.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Ax1; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Ax1.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc DumpJson*(this: gp_Ax1; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Ax1.hxx".}
proc InitFromJson*(this: var gp_Ax1; theSStream: Standard_SStream;
                  theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "InitFromJson", header: "gp_Ax1.hxx".}