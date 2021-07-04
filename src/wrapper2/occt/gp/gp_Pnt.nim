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
  ../Standard/Standard_Handle, gp_XYZ, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  gp_Pnt* {.importcpp: "gp_Pnt", header: "gp_Pnt.hxx", bycopy.} = object ## ! Creates a point with zero coordinates.
    gp_Pnt* {.importc: "gp_Pnt".}: Standard_NODISCARD
    gp_Pnt* {.importc: "gp_Pnt".}: Standard_NODISCARD
    gp_Pnt* {.importc: "gp_Pnt".}: Standard_NODISCARD
    gp_Pnt* {.importc: "gp_Pnt".}: Standard_NODISCARD
    gp_Pnt* {.importc: "gp_Pnt".}: Standard_NODISCARD
    gp_Pnt* {.importc: "gp_Pnt".}: Standard_NODISCARD
    gp_Pnt* {.importc: "gp_Pnt".}: Standard_NODISCARD
    gp_Pnt* {.importc: "gp_Pnt".}: Standard_NODISCARD


proc constructgp_Pnt*(): gp_Pnt {.constructor, importcpp: "gp_Pnt(@)",
                               header: "gp_Pnt.hxx".}
proc constructgp_Pnt*(Coord: gp_XYZ): gp_Pnt {.constructor, importcpp: "gp_Pnt(@)",
    header: "gp_Pnt.hxx".}
proc constructgp_Pnt*(Xp: Standard_Real; Yp: Standard_Real; Zp: Standard_Real): gp_Pnt {.
    constructor, importcpp: "gp_Pnt(@)", header: "gp_Pnt.hxx".}
proc SetCoord*(this: var gp_Pnt; Index: Standard_Integer; Xi: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Pnt.hxx".}
proc SetCoord*(this: var gp_Pnt; Xp: Standard_Real; Yp: Standard_Real; Zp: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Pnt.hxx".}
proc SetX*(this: var gp_Pnt; X: Standard_Real) {.importcpp: "SetX", header: "gp_Pnt.hxx".}
proc SetY*(this: var gp_Pnt; Y: Standard_Real) {.importcpp: "SetY", header: "gp_Pnt.hxx".}
proc SetZ*(this: var gp_Pnt; Z: Standard_Real) {.importcpp: "SetZ", header: "gp_Pnt.hxx".}
proc SetXYZ*(this: var gp_Pnt; Coord: gp_XYZ) {.importcpp: "SetXYZ",
    header: "gp_Pnt.hxx".}
proc Coord*(this: gp_Pnt; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Coord", header: "gp_Pnt.hxx".}
proc Coord*(this: gp_Pnt; Xp: var Standard_Real; Yp: var Standard_Real;
           Zp: var Standard_Real) {.noSideEffect, importcpp: "Coord",
                                 header: "gp_Pnt.hxx".}
proc X*(this: gp_Pnt): Standard_Real {.noSideEffect, importcpp: "X",
                                   header: "gp_Pnt.hxx".}
proc Y*(this: gp_Pnt): Standard_Real {.noSideEffect, importcpp: "Y",
                                   header: "gp_Pnt.hxx".}
proc Z*(this: gp_Pnt): Standard_Real {.noSideEffect, importcpp: "Z",
                                   header: "gp_Pnt.hxx".}
proc XYZ*(this: gp_Pnt): gp_XYZ {.noSideEffect, importcpp: "XYZ", header: "gp_Pnt.hxx".}
proc Coord*(this: gp_Pnt): gp_XYZ {.noSideEffect, importcpp: "Coord",
                                header: "gp_Pnt.hxx".}
proc ChangeCoord*(this: var gp_Pnt): var gp_XYZ {.importcpp: "ChangeCoord",
    header: "gp_Pnt.hxx".}
proc BaryCenter*(this: var gp_Pnt; Alpha: Standard_Real; P: gp_Pnt; Beta: Standard_Real) {.
    importcpp: "BaryCenter", header: "gp_Pnt.hxx".}
proc IsEqual*(this: gp_Pnt; Other: gp_Pnt; LinearTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_Pnt.hxx".}
proc Distance*(this: gp_Pnt; Other: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "gp_Pnt.hxx".}
proc SquareDistance*(this: gp_Pnt; Other: gp_Pnt): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pnt.hxx".}
proc Mirror*(this: var gp_Pnt; P: gp_Pnt) {.importcpp: "Mirror", header: "gp_Pnt.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Pnt & P ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Pnt; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Pnt.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Pnt; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Pnt.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Pnt; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Pnt.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Scale*(this: var gp_Pnt; P: gp_Pnt; S: Standard_Real) {.importcpp: "Scale",
    header: "gp_Pnt.hxx".}
## !!!Ignored construct:  Scaled ( const gp_Pnt & P , const Standard_Real S ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Pnt; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Pnt.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Pnt; V: gp_Vec) {.importcpp: "Translate",
    header: "gp_Pnt.hxx".}
## !!!Ignored construct:  Translated ( const gp_Vec & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Translate*(this: var gp_Pnt; P1: gp_Pnt; P2: gp_Pnt) {.importcpp: "Translate",
    header: "gp_Pnt.hxx".}
## !!!Ignored construct:  Translated ( const gp_Pnt & P1 , const gp_Pnt & P2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc DumpJson*(this: gp_Pnt; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Pnt.hxx".}
proc InitFromJson*(this: var gp_Pnt; theSStream: Standard_SStream;
                  theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "InitFromJson", header: "gp_Pnt.hxx".}