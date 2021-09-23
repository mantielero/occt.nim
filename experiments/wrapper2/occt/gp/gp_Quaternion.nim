##  Created on: 2010-05-11
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, gp_EulerSequence, gp_Vec

discard "forward decl of gp_Vec"
discard "forward decl of gp_Mat"
type
  gp_Quaternion* {.importcpp: "gp_Quaternion", header: "gp_Quaternion.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## identity
                                                                                      ## quaternion
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD
    gp_Quaternion* {.importc: "gp_Quaternion".}: Standard_NODISCARD


proc constructgp_Quaternion*(): gp_Quaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc constructgp_Quaternion*(x: Standard_Real; y: Standard_Real; z: Standard_Real;
                            w: Standard_Real): gp_Quaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc constructgp_Quaternion*(theVecFrom: gp_Vec; theVecTo: gp_Vec): gp_Quaternion {.
    constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc constructgp_Quaternion*(theVecFrom: gp_Vec; theVecTo: gp_Vec;
                            theHelpCrossVec: gp_Vec): gp_Quaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc constructgp_Quaternion*(theAxis: gp_Vec; theAngle: Standard_Real): gp_Quaternion {.
    constructor, importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc constructgp_Quaternion*(theMat: gp_Mat): gp_Quaternion {.constructor,
    importcpp: "gp_Quaternion(@)", header: "gp_Quaternion.hxx".}
proc IsEqual*(this: gp_Quaternion; theOther: gp_Quaternion): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "gp_Quaternion.hxx".}
proc SetRotation*(this: var gp_Quaternion; theVecFrom: gp_Vec; theVecTo: gp_Vec) {.
    importcpp: "SetRotation", header: "gp_Quaternion.hxx".}
proc SetRotation*(this: var gp_Quaternion; theVecFrom: gp_Vec; theVecTo: gp_Vec;
                 theHelpCrossVec: gp_Vec) {.importcpp: "SetRotation",
    header: "gp_Quaternion.hxx".}
proc SetVectorAndAngle*(this: var gp_Quaternion; theAxis: gp_Vec;
                       theAngle: Standard_Real) {.importcpp: "SetVectorAndAngle",
    header: "gp_Quaternion.hxx".}
proc GetVectorAndAngle*(this: gp_Quaternion; theAxis: var gp_Vec;
                       theAngle: var Standard_Real) {.noSideEffect,
    importcpp: "GetVectorAndAngle", header: "gp_Quaternion.hxx".}
proc SetMatrix*(this: var gp_Quaternion; theMat: gp_Mat) {.importcpp: "SetMatrix",
    header: "gp_Quaternion.hxx".}
proc GetMatrix*(this: gp_Quaternion): gp_Mat {.noSideEffect, importcpp: "GetMatrix",
    header: "gp_Quaternion.hxx".}
proc SetEulerAngles*(this: var gp_Quaternion; theOrder: gp_EulerSequence;
                    theAlpha: Standard_Real; theBeta: Standard_Real;
                    theGamma: Standard_Real) {.importcpp: "SetEulerAngles",
    header: "gp_Quaternion.hxx".}
proc GetEulerAngles*(this: gp_Quaternion; theOrder: gp_EulerSequence;
                    theAlpha: var Standard_Real; theBeta: var Standard_Real;
                    theGamma: var Standard_Real) {.noSideEffect,
    importcpp: "GetEulerAngles", header: "gp_Quaternion.hxx".}
proc Set*(this: var gp_Quaternion; x: Standard_Real; y: Standard_Real; z: Standard_Real;
         w: Standard_Real) {.importcpp: "Set", header: "gp_Quaternion.hxx".}
proc Set*(this: var gp_Quaternion; theQuaternion: gp_Quaternion) {.importcpp: "Set",
    header: "gp_Quaternion.hxx".}
proc X*(this: gp_Quaternion): Standard_Real {.noSideEffect, importcpp: "X",
    header: "gp_Quaternion.hxx".}
proc Y*(this: gp_Quaternion): Standard_Real {.noSideEffect, importcpp: "Y",
    header: "gp_Quaternion.hxx".}
proc Z*(this: gp_Quaternion): Standard_Real {.noSideEffect, importcpp: "Z",
    header: "gp_Quaternion.hxx".}
proc W*(this: gp_Quaternion): Standard_Real {.noSideEffect, importcpp: "W",
    header: "gp_Quaternion.hxx".}
proc SetIdent*(this: var gp_Quaternion) {.importcpp: "SetIdent",
                                      header: "gp_Quaternion.hxx".}
proc Reverse*(this: var gp_Quaternion) {.importcpp: "Reverse",
                                     header: "gp_Quaternion.hxx".}
## !!!Ignored construct:  Reversed ( ) const ;
## Error: identifier expected, but got: )!!!

proc Invert*(this: var gp_Quaternion) {.importcpp: "Invert",
                                    header: "gp_Quaternion.hxx".}
## !!!Ignored construct:  Inverted ( ) const ;
## Error: identifier expected, but got: )!!!

proc SquareNorm*(this: gp_Quaternion): Standard_Real {.noSideEffect,
    importcpp: "SquareNorm", header: "gp_Quaternion.hxx".}
proc Norm*(this: gp_Quaternion): Standard_Real {.noSideEffect, importcpp: "Norm",
    header: "gp_Quaternion.hxx".}
proc Scale*(this: var gp_Quaternion; theScale: Standard_Real) {.importcpp: "Scale",
    header: "gp_Quaternion.hxx".}
proc `*=`*(this: var gp_Quaternion; theScale: Standard_Real) {.importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
## !!!Ignored construct:  Scaled ( const Standard_Real theScale ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const Standard_Real theScale ) const { return Scaled ( theScale ) ; } ! Stabilize quaternion length within 1 - 1/4.
## ! This operation is a lot faster than normalization
## ! and preserve length goes to 0 or infinity void StabilizeLength ( ) ;
## Error: identifier expected, but got: *!!!

proc Normalize*(this: var gp_Quaternion) {.importcpp: "Normalize",
                                       header: "gp_Quaternion.hxx".}
## !!!Ignored construct:  Normalized ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  Negated ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  operator - ( ) const { return Negated ( ) ; } ! Makes sum of quaternion components; result is "rotations mix" Standard_NODISCARD gp_Quaternion Added ( const gp_Quaternion & theOther ) const ;
## Error: identifier expected, but got: -!!!

## !!!Ignored construct:  operator + ( const gp_Quaternion & theOther ) const { return Added ( theOther ) ; } ! Makes difference of quaternion components; result is "rotations mix" Standard_NODISCARD gp_Quaternion Subtracted ( const gp_Quaternion & theOther ) const ;
## Error: identifier expected, but got: +!!!

## !!!Ignored construct:  operator - ( const gp_Quaternion & theOther ) const { return Subtracted ( theOther ) ; } ! Multiply function - work the same as Matrices multiplying.
## ! qq' = (cross(v,v') + wv' + w'v, ww' - dot(v,v'))
## ! Result is rotation combination: q' than q (here q=this, q'=theQ).
## ! Notices than:
## ! qq' != q'q;
## ! qq^-1 = q; Standard_NODISCARD gp_Quaternion Multiplied ( const gp_Quaternion & theOther ) const ;
## Error: identifier expected, but got: -!!!

## !!!Ignored construct:  operator * ( const gp_Quaternion & theOther ) const { return Multiplied ( theOther ) ; } ! Adds componnets of other quaternion; result is "rotations mix" void Add ( const gp_Quaternion & theOther ) ;
## Error: identifier expected, but got: *!!!

proc `+=`*(this: var gp_Quaternion; theOther: gp_Quaternion) {.importcpp: "(# += #)",
    header: "gp_Quaternion.hxx".}
proc Subtract*(this: var gp_Quaternion; theOther: gp_Quaternion) {.
    importcpp: "Subtract", header: "gp_Quaternion.hxx".}
proc `-=`*(this: var gp_Quaternion; theOther: gp_Quaternion) {.importcpp: "(# -= #)",
    header: "gp_Quaternion.hxx".}
proc Multiply*(this: var gp_Quaternion; theOther: gp_Quaternion) {.
    importcpp: "Multiply", header: "gp_Quaternion.hxx".}
proc `*=`*(this: var gp_Quaternion; theOther: gp_Quaternion) {.importcpp: "(# *= #)",
    header: "gp_Quaternion.hxx".}
proc Dot*(this: gp_Quaternion; theOther: gp_Quaternion): Standard_Real {.noSideEffect,
    importcpp: "Dot", header: "gp_Quaternion.hxx".}
proc GetRotationAngle*(this: gp_Quaternion): Standard_Real {.noSideEffect,
    importcpp: "GetRotationAngle", header: "gp_Quaternion.hxx".}
proc Multiply*(this: gp_Quaternion; theVec: gp_Vec): gp_Vec {.noSideEffect,
    importcpp: "Multiply", header: "gp_Quaternion.hxx".}
proc `*`*(this: gp_Quaternion; theVec: gp_Vec): gp_Vec {.noSideEffect,
    importcpp: "(# * #)", header: "gp_Quaternion.hxx".}