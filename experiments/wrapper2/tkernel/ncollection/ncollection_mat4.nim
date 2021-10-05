##  Created on: 2013-05-30
##  Created by: Anton POLETAEV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! Generic matrix of 4 x 4 elements.
## ! To be used in conjunction with NCollection_Vec4 entities.
## ! Originally introduced for 3D space projection and orientation
## ! operations.

type
  NCollectionMat4*[ElementT] {.importcpp: "NCollection_Mat4<\'0>",
                              header: "NCollection_Mat4.hxx", bycopy.} = object ## ! Get
                                                                           ## number of rows.
                                                                           ## !
                                                                           ## @return
                                                                           ## number of rows.


proc rows*[ElementT](): csize_t {.cdecl, importcpp: "NCollection_Mat4::Rows(@)",
                               dynlib: tkernel.}
proc cols*[ElementT](): csize_t {.cdecl, importcpp: "NCollection_Mat4::Cols(@)",
                               dynlib: tkernel.}
proc constructNCollectionMat4*[ElementT](): NCollectionMat4[ElementT] {.cdecl,
    constructor, importcpp: "NCollection_Mat4<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionMat4*[ElementT; OtherElementT](
    theOtherMat4: NCollectionMat4[OtherElementT]): NCollectionMat4[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Mat4<\'*0>(@)", dynlib: tkernel.}
proc getValue*[ElementT](this: NCollectionMat4[ElementT]; theRow: csize_t;
                        theCol: csize_t): ElementT {.noSideEffect, cdecl,
    importcpp: "GetValue", dynlib: tkernel.}
proc changeValue*[ElementT](this: var NCollectionMat4[ElementT]; theRow: csize_t;
                           theCol: csize_t): var ElementT {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc setValue*[ElementT](this: var NCollectionMat4[ElementT]; theRow: csize_t;
                        theCol: csize_t; theValue: ElementT) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}
proc getRow*[ElementT](this: NCollectionMat4[ElementT]; theRow: csize_t): NCollectionVec4[
    ElementT] {.noSideEffect, cdecl, importcpp: "GetRow", dynlib: tkernel.}
proc setRow*[ElementT](this: var NCollectionMat4[ElementT]; theRow: csize_t;
                      theVec: NCollectionVec3[ElementT]) {.cdecl,
    importcpp: "SetRow", dynlib: tkernel.}
proc setRow*[ElementT](this: var NCollectionMat4[ElementT]; theRow: csize_t;
                      theVec: NCollectionVec4[ElementT]) {.cdecl,
    importcpp: "SetRow", dynlib: tkernel.}
proc getColumn*[ElementT](this: NCollectionMat4[ElementT]; theCol: csize_t): NCollectionVec4[
    ElementT] {.noSideEffect, cdecl, importcpp: "GetColumn", dynlib: tkernel.}
proc setColumn*[ElementT](this: var NCollectionMat4[ElementT]; theCol: csize_t;
                         theVec: NCollectionVec3[ElementT]) {.cdecl,
    importcpp: "SetColumn", dynlib: tkernel.}
proc setColumn*[ElementT](this: var NCollectionMat4[ElementT]; theCol: csize_t;
                         theVec: NCollectionVec4[ElementT]) {.cdecl,
    importcpp: "SetColumn", dynlib: tkernel.}
proc getDiagonal*[ElementT](this: NCollectionMat4[ElementT]): NCollectionVec4[
    ElementT] {.noSideEffect, cdecl, importcpp: "GetDiagonal", dynlib: tkernel.}
proc setDiagonal*[ElementT](this: var NCollectionMat4[ElementT];
                           theVec: NCollectionVec3[ElementT]) {.cdecl,
    importcpp: "SetDiagonal", dynlib: tkernel.}
proc setDiagonal*[ElementT](this: var NCollectionMat4[ElementT];
                           theVec: NCollectionVec4[ElementT]) {.cdecl,
    importcpp: "SetDiagonal", dynlib: tkernel.}
proc initIdentity*[ElementT](this: var NCollectionMat4[ElementT]) {.cdecl,
    importcpp: "InitIdentity", dynlib: tkernel.}
proc isIdentity*[ElementT](this: NCollectionMat4[ElementT]): bool {.noSideEffect,
    cdecl, importcpp: "IsIdentity", dynlib: tkernel.}
proc isEqual*[ElementT](this: NCollectionMat4[ElementT]; theOther: NCollectionMat4): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*[ElementT](this: var NCollectionMat4[ElementT]; theOther: NCollectionMat4): bool {.
    cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc `==`*[ElementT](this: NCollectionMat4[ElementT]; theOther: NCollectionMat4): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc getData*[ElementT](this: NCollectionMat4[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "GetData", dynlib: tkernel.}
proc changeData*[ElementT](this: var NCollectionMat4[ElementT]): ptr ElementT {.cdecl,
    importcpp: "ChangeData", dynlib: tkernel.}
converter `constElementT*`*[ElementT](this: NCollectionMat4[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "NCollection_Mat4::operator constElement_t*",
    dynlib: tkernel.}
converter `elementT*`*[ElementT](this: var NCollectionMat4[ElementT]): ptr ElementT {.
    cdecl, importcpp: "NCollection_Mat4::operator Element_t*", dynlib: tkernel.}
proc `*`*[ElementT](this: NCollectionMat4[ElementT];
                   theVec: NCollectionVec4[ElementT]): NCollectionVec4[ElementT] {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc multiply*[ElementT](this: var NCollectionMat4[ElementT];
                        theMatA: NCollectionMat4; theMatB: NCollectionMat4): NCollectionMat4 {.
    cdecl, importcpp: "Multiply", dynlib: tkernel.}
proc multiply*[ElementT](this: var NCollectionMat4[ElementT];
                        theMat: NCollectionMat4) {.cdecl, importcpp: "Multiply",
    dynlib: tkernel.}
proc `*=`*[ElementT](this: var NCollectionMat4[ElementT]; theMat: NCollectionMat4) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `*`*[ElementT](this: NCollectionMat4[ElementT]; theMat: NCollectionMat4): NCollectionMat4 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc multiplied*[ElementT](this: NCollectionMat4[ElementT]; theMat: NCollectionMat4): NCollectionMat4 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc multiply*[ElementT](this: var NCollectionMat4[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "Multiply", dynlib: tkernel.}
proc `*=`*[ElementT](this: var NCollectionMat4[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `*`*[ElementT](this: NCollectionMat4[ElementT]; theFactor: ElementT): NCollectionMat4 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc multiplied*[ElementT](this: NCollectionMat4[ElementT]; theFactor: ElementT): NCollectionMat4 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc translate*[ElementT](this: var NCollectionMat4[ElementT];
                         theVec: NCollectionVec3[ElementT]) {.cdecl,
    importcpp: "Translate", dynlib: tkernel.}
proc transposed*[ElementT](this: NCollectionMat4[ElementT]): NCollectionMat4 {.
    noSideEffect, cdecl, importcpp: "Transposed", dynlib: tkernel.}
proc transpose*[ElementT](this: var NCollectionMat4[ElementT]) {.cdecl,
    importcpp: "Transpose", dynlib: tkernel.}
proc inverted*[ElementT](this: NCollectionMat4[ElementT];
                        theOutMx: var NCollectionMat4[ElementT]): bool {.
    noSideEffect, cdecl, importcpp: "Inverted", dynlib: tkernel.}
proc convertFrom*[ElementT; OtherT](this: var NCollectionMat4[ElementT];
                                  theFrom: NCollectionMat4[OtherT]) {.cdecl,
    importcpp: "ConvertFrom", dynlib: tkernel.}
proc convert*[ElementT; OtherT](this: var NCollectionMat4[ElementT];
                              theFrom: NCollectionMat4[OtherT]) {.cdecl,
    importcpp: "Convert", dynlib: tkernel.}
proc map*[ElementT](theData: ptr ElementT): var NCollectionMat4[ElementT] {.cdecl,
    importcpp: "NCollection_Mat4::Map(@)", dynlib: tkernel.}
#proc map*[ElementT](theData: ptr ElementT): NCollectionMat4[ElementT] {.cdecl,
#    importcpp: "NCollection_Mat4::Map(@)", dynlib: tkernel.}
proc dumpJson*[ElementT](this: NCollectionMat4[ElementT];
                        theOStream: var StandardOStream; a3: cint) {.noSideEffect,
    cdecl, importcpp: "DumpJson", dynlib: tkernel.}
#when defined(msc_Ver) and (msc_Ver >= 1900):
#  staticAssert(Value[NCollectionMat4[cfloat]],
#               "NCollection_Mat4 is not is_trivially_copyable() structure!")
#  staticAssert(Value[NCollectionMat4[cfloat]],
#               "NCollection_Mat4 is not is_standard_layout() structure!")