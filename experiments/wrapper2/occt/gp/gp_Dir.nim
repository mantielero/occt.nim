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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Vec"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
type
  gp_Dir* {.importcpp: "gp_Dir", header: "gp_Dir.hxx", bycopy.} = object ## ! Creates a direction corresponding to X axis.
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD
    gp_Dir* {.importc: "gp_Dir".}: Standard_NODISCARD


proc constructgp_Dir*(): gp_Dir {.constructor, importcpp: "gp_Dir(@)",
                               header: "gp_Dir.hxx".}
proc constructgp_Dir*(V: gp_Vec): gp_Dir {.constructor, importcpp: "gp_Dir(@)",
                                       header: "gp_Dir.hxx".}
proc constructgp_Dir*(Coord: gp_XYZ): gp_Dir {.constructor, importcpp: "gp_Dir(@)",
    header: "gp_Dir.hxx".}
proc constructgp_Dir*(Xv: Standard_Real; Yv: Standard_Real; Zv: Standard_Real): gp_Dir {.
    constructor, importcpp: "gp_Dir(@)", header: "gp_Dir.hxx".}
proc SetCoord*(this: var gp_Dir; Index: Standard_Integer; Xi: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Dir.hxx".}
proc SetCoord*(this: var gp_Dir; Xv: Standard_Real; Yv: Standard_Real; Zv: Standard_Real) {.
    importcpp: "SetCoord", header: "gp_Dir.hxx".}
proc SetX*(this: var gp_Dir; X: Standard_Real) {.importcpp: "SetX", header: "gp_Dir.hxx".}
proc SetY*(this: var gp_Dir; Y: Standard_Real) {.importcpp: "SetY", header: "gp_Dir.hxx".}
proc SetZ*(this: var gp_Dir; Z: Standard_Real) {.importcpp: "SetZ", header: "gp_Dir.hxx".}
proc SetXYZ*(this: var gp_Dir; Coord: gp_XYZ) {.importcpp: "SetXYZ",
    header: "gp_Dir.hxx".}
proc Coord*(this: gp_Dir; Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Coord", header: "gp_Dir.hxx".}
proc Coord*(this: gp_Dir; Xv: var Standard_Real; Yv: var Standard_Real;
           Zv: var Standard_Real) {.noSideEffect, importcpp: "Coord",
                                 header: "gp_Dir.hxx".}
proc X*(this: gp_Dir): Standard_Real {.noSideEffect, importcpp: "X",
                                   header: "gp_Dir.hxx".}
proc Y*(this: gp_Dir): Standard_Real {.noSideEffect, importcpp: "Y",
                                   header: "gp_Dir.hxx".}
proc Z*(this: gp_Dir): Standard_Real {.noSideEffect, importcpp: "Z",
                                   header: "gp_Dir.hxx".}
proc XYZ*(this: gp_Dir): gp_XYZ {.noSideEffect, importcpp: "XYZ", header: "gp_Dir.hxx".}
proc IsEqual*(this: gp_Dir; Other: gp_Dir; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_Dir.hxx".}
proc IsNormal*(this: gp_Dir; Other: gp_Dir; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsNormal", header: "gp_Dir.hxx".}
proc IsOpposite*(this: gp_Dir; Other: gp_Dir; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsOpposite", header: "gp_Dir.hxx".}
proc IsParallel*(this: gp_Dir; Other: gp_Dir; AngularTolerance: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsParallel", header: "gp_Dir.hxx".}
proc Angle*(this: gp_Dir; Other: gp_Dir): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "gp_Dir.hxx".}
proc AngleWithRef*(this: gp_Dir; Other: gp_Dir; VRef: gp_Dir): Standard_Real {.
    noSideEffect, importcpp: "AngleWithRef", header: "gp_Dir.hxx".}
proc Cross*(this: var gp_Dir; Right: gp_Dir) {.importcpp: "Cross", header: "gp_Dir.hxx".}
proc `^=`*(this: var gp_Dir; Right: gp_Dir) {.importcpp: "(# ^= #)",
                                        header: "gp_Dir.hxx".}
## !!!Ignored construct:  Crossed ( const gp_Dir & Right ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator ^ ( const gp_Dir & Right ) const { return Crossed ( Right ) ; } void CrossCross ( const gp_Dir & V1 , const gp_Dir & V2 ) ;
## Error: identifier expected, but got: ^!!!

## !!!Ignored construct:  CrossCrossed ( const gp_Dir & V1 , const gp_Dir & V2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Dot*(this: gp_Dir; Other: gp_Dir): Standard_Real {.noSideEffect, importcpp: "Dot",
    header: "gp_Dir.hxx".}
proc `*`*(this: gp_Dir; Other: gp_Dir): Standard_Real {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Dir.hxx".}
proc DotCross*(this: gp_Dir; V1: gp_Dir; V2: gp_Dir): Standard_Real {.noSideEffect,
    importcpp: "DotCross", header: "gp_Dir.hxx".}
proc Reverse*(this: var gp_Dir) {.importcpp: "Reverse", header: "gp_Dir.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  operator - ( ) const { return Reversed ( ) ; } void Mirror ( const gp_Dir & V ) ;
## Error: identifier expected, but got: -!!!

## !!!Ignored construct:  Mirrored ( const gp_Dir & V ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Dir; A1: gp_Ax1) {.importcpp: "Mirror", header: "gp_Dir.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax1 & A1 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Mirror*(this: var gp_Dir; A2: gp_Ax2) {.importcpp: "Mirror", header: "gp_Dir.hxx".}
## !!!Ignored construct:  Mirrored ( const gp_Ax2 & A2 ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Rotate*(this: var gp_Dir; A1: gp_Ax1; Ang: Standard_Real) {.importcpp: "Rotate",
    header: "gp_Dir.hxx".}
## !!!Ignored construct:  Rotated ( const gp_Ax1 & A1 , const Standard_Real Ang ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transform*(this: var gp_Dir; T: gp_Trsf) {.importcpp: "Transform",
    header: "gp_Dir.hxx".}
## !!!Ignored construct:  Transformed ( const gp_Trsf & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc DumpJson*(this: gp_Dir; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "gp_Dir.hxx".}
proc InitFromJson*(this: var gp_Dir; theSStream: Standard_SStream;
                  theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "InitFromJson", header: "gp_Dir.hxx".}