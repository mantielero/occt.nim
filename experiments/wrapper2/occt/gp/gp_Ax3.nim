##  Created on: 1993-08-02
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, gp_Ax1, gp_Dir, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Ax3* {.importcpp: "gp_Ax3", header: "gp_Ax3.hxx", bycopy.} = object ## ! Creates an object corresponding to the reference
                                                                 ## ! coordinate system (OXYZ).
    gp_Ax3* {.importc: "gp_Ax3".}: Standard_NODISCARD
    gp_Ax3* {.importc: "gp_Ax3".}: Standard_NODISCARD
    gp_Ax3* {.importc: "gp_Ax3".}: Standard_NODISCARD
    gp_Ax3* {.importc: "gp_Ax3".}: Standard_NODISCARD
    gp_Ax3* {.importc: "gp_Ax3".}: Standard_NODISCARD
    gp_Ax3* {.importc: "gp_Ax3".}: Standard_NODISCARD
    gp_Ax3* {.importc: "gp_Ax3".}: Standard_NODISCARD
    gp_Ax3* {.importc: "gp_Ax3".}: Standard_NODISCARD


proc constructgp_Ax3*(): gp_Ax3 {.constructor, importcpp: "gp_Ax3(@)",
                               header: "gp_Ax3.hxx".}
proc constructgp_Ax3*(A: gp_Ax2): gp_Ax3 {.constructor, importcpp: "gp_Ax3(@)",
                                       header: "gp_Ax3.hxx".}
proc constructgp_Ax3*(P: gp_Pnt; N: gp_Dir; Vx: gp_Dir): gp_Ax3 {.constructor,
    importcpp: "gp_Ax3(@)", header: "gp_Ax3.hxx".}
proc constructgp_Ax3*(P: gp_Pnt; V: gp_Dir): gp_Ax3 {.constructor,
    importcpp: "gp_Ax3(@)", header: "gp_Ax3.hxx".}
proc XReverse*(this: var gp_Ax3) {.importcpp: "XReverse", header: "gp_Ax3.hxx".}
proc YReverse*(this: var gp_Ax3) {.importcpp: "YReverse", header: "gp_Ax3.hxx".}
proc ZReverse*(this: var gp_Ax3) {.importcpp: "ZReverse", header: "gp_Ax3.hxx".}
proc SetAxis*(this: var gp_Ax3; A1: gp_Ax1) {.importcpp: "SetAxis", header: "gp_Ax3.hxx".}
proc SetDirection*(this: var gp_Ax3; V: gp_Dir) {.importcpp: "SetDirection",
    header: "gp_Ax3.hxx".}
proc SetLocation*(this: var gp_Ax3; P: gp_Pnt) {.importcpp: "SetLocation",
    header: "gp_Ax3.hxx".}
proc SetXDirection*(this: var gp_Ax3; Vx: gp_Dir) {.importcpp: "SetXDirection",
    header: "gp_Ax3.hxx".}
proc SetYDirection*(this: var gp_Ax3; Vy: gp_Dir) {.importcpp: "SetYDirection",
    header: "gp_Ax3.hxx".}
proc Angle*(this: gp_Ax3; Other: gp_Ax3): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "gp_Ax3.hxx".}
proc Axis*(this: gp_Ax3): gp_Ax1 {.noSideEffect, importcpp: "Axis",
                               header: "gp_Ax3.hxx".}
proc Ax2*(this: gp_Ax3): gp_Ax2 {.noSideEffect, importcpp: "Ax2", header: "gp_Ax3.hxx".}
proc Direction*(this: gp_Ax3): gp_Dir {.noSideEffect, importcpp: "Direction",
                                    header: "gp_Ax3.hxx".}
proc Location*(this: gp_Ax3): gp_Pnt {.noSideEffect, importcpp: "Location",
                                   header: "gp_Ax3.hxx".}
proc XDirection*(this: gp_Ax3): gp_Dir {.noSideEffect, importcpp: "XDirection",
                                     header: "gp_Ax3.hxx".}
proc YDirection*(this: gp_Ax3): gp_Dir {.noSideEffect, importcpp: "YDirection",
                                     header: "gp_Ax3.hxx".}
proc Direct*(this: gp_Ax3): Standard_Boolean {.noSideEffect, importcpp: "Direct",
    header: "gp_Ax3.hxx".}
proc IsCoplanar*(this: gp_Ax3; Other: gp_Ax3; LinearTolerance: Standard_Real;
                AngularTolerance: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsCoplanar", header: "gp_Ax3.hxx".}
proc IsCoplanar*(this: gp_Ax3; A1: gp_Ax1; LinearTolerance: Standard_Real;
                AngularTolerance: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsCoplanar", header: "gp_Ax3.hxx".}
proc Mirror*(this: var gp_Ax3; P: gp_Pnt) {.importcpp: "Mirror", header: "gp_Ax3.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Ax3; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Ax3.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Ax3; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Ax3.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Ax3; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Ax3.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Ax3; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Ax3.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Ax3; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Ax3.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Ax3; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Ax3.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Ax3; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Ax3.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc DumpJson*(this: gp_Ax3; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Ax3.hxx".}
proc InitFromJson*(this: var gp_Ax3; theSStream: Standard_SStream;
                  theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "InitFromJson", header: "gp_Ax3.hxx".}