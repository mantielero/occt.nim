when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
  NCollection_Mat4*[Element_t] {.importcpp: "NCollection_Mat4<\'0>",
                                header: "NCollection_Mat4.hxx", bycopy.} = object ## ! Get
                                                                             ## number of
                                                                             ## rows.
                                                                             ## !
                                                                             ## @return
                                                                             ## number of
                                                                             ## rows.


proc Rows*[Element_t](): csize_t {.cdecl, importcpp: "NCollection_Mat4::Rows(@)",
                                dynlib: tkernel.}
proc Cols*[Element_t](): csize_t {.cdecl, importcpp: "NCollection_Mat4::Cols(@)",
                                dynlib: tkernel.}
proc constructNCollection_Mat4*[Element_t](): NCollection_Mat4[Element_t] {.cdecl,
    constructor, importcpp: "NCollection_Mat4<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Mat4*[Element_t; OtherElement_t](
    theOtherMat4: NCollection_Mat4[OtherElement_t]): NCollection_Mat4[Element_t] {.
    cdecl, constructor, importcpp: "NCollection_Mat4<\'*0>(@)", dynlib: tkernel.}
proc GetValue*[Element_t](this: NCollection_Mat4[Element_t]; theRow: csize_t;
                         theCol: csize_t): Element_t {.noSideEffect, cdecl,
    importcpp: "GetValue", dynlib: tkernel.}
proc ChangeValue*[Element_t](this: var NCollection_Mat4[Element_t]; theRow: csize_t;
                            theCol: csize_t): var Element_t {.cdecl,
    importcpp: "ChangeValue", dynlib: tkernel.}
proc SetValue*[Element_t](this: var NCollection_Mat4[Element_t]; theRow: csize_t;
                         theCol: csize_t; theValue: Element_t) {.cdecl,
    importcpp: "SetValue", dynlib: tkernel.}
proc GetRow*[Element_t](this: NCollection_Mat4[Element_t]; theRow: csize_t): NCollection_Vec4[
    Element_t] {.noSideEffect, cdecl, importcpp: "GetRow", dynlib: tkernel.}
proc SetRow*[Element_t](this: var NCollection_Mat4[Element_t]; theRow: csize_t;
                       theVec: NCollection_Vec3[Element_t]) {.cdecl,
    importcpp: "SetRow", dynlib: tkernel.}
proc SetRow*[Element_t](this: var NCollection_Mat4[Element_t]; theRow: csize_t;
                       theVec: NCollection_Vec4[Element_t]) {.cdecl,
    importcpp: "SetRow", dynlib: tkernel.}
proc GetColumn*[Element_t](this: NCollection_Mat4[Element_t]; theCol: csize_t): NCollection_Vec4[
    Element_t] {.noSideEffect, cdecl, importcpp: "GetColumn", dynlib: tkernel.}
proc SetColumn*[Element_t](this: var NCollection_Mat4[Element_t]; theCol: csize_t;
                          theVec: NCollection_Vec3[Element_t]) {.cdecl,
    importcpp: "SetColumn", dynlib: tkernel.}
proc SetColumn*[Element_t](this: var NCollection_Mat4[Element_t]; theCol: csize_t;
                          theVec: NCollection_Vec4[Element_t]) {.cdecl,
    importcpp: "SetColumn", dynlib: tkernel.}
proc GetDiagonal*[Element_t](this: NCollection_Mat4[Element_t]): NCollection_Vec4[
    Element_t] {.noSideEffect, cdecl, importcpp: "GetDiagonal", dynlib: tkernel.}
proc SetDiagonal*[Element_t](this: var NCollection_Mat4[Element_t];
                            theVec: NCollection_Vec3[Element_t]) {.cdecl,
    importcpp: "SetDiagonal", dynlib: tkernel.}
proc SetDiagonal*[Element_t](this: var NCollection_Mat4[Element_t];
                            theVec: NCollection_Vec4[Element_t]) {.cdecl,
    importcpp: "SetDiagonal", dynlib: tkernel.}
proc InitIdentity*[Element_t](this: var NCollection_Mat4[Element_t]) {.cdecl,
    importcpp: "InitIdentity", dynlib: tkernel.}
proc IsIdentity*[Element_t](this: NCollection_Mat4[Element_t]): bool {.noSideEffect,
    cdecl, importcpp: "IsIdentity", dynlib: tkernel.}
proc IsEqual*[Element_t](this: NCollection_Mat4[Element_t];
                        theOther: NCollection_Mat4): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*[Element_t](this: var NCollection_Mat4[Element_t];
                     theOther: NCollection_Mat4): bool {.cdecl,
    importcpp: "(# == #)", dynlib: tkernel.}
proc `==`*[Element_t](this: NCollection_Mat4[Element_t]; theOther: NCollection_Mat4): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc GetData*[Element_t](this: NCollection_Mat4[Element_t]): ptr Element_t {.
    noSideEffect, cdecl, importcpp: "GetData", dynlib: tkernel.}
proc ChangeData*[Element_t](this: var NCollection_Mat4[Element_t]): ptr Element_t {.
    cdecl, importcpp: "ChangeData", dynlib: tkernel.}
converter `constElement_t*`*[Element_t](this: NCollection_Mat4[Element_t]): ptr Element_t {.
    noSideEffect, cdecl, importcpp: "NCollection_Mat4::operator constElement_t*",
    dynlib: tkernel.}
converter `Element_t*`*[Element_t](this: var NCollection_Mat4[Element_t]): ptr Element_t {.
    cdecl, importcpp: "NCollection_Mat4::operator Element_t*", dynlib: tkernel.}
proc `*`*[Element_t](this: NCollection_Mat4[Element_t];
                    theVec: NCollection_Vec4[Element_t]): NCollection_Vec4[
    Element_t] {.noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc Multiply*[Element_t](this: var NCollection_Mat4[Element_t];
                         theMatA: NCollection_Mat4; theMatB: NCollection_Mat4): NCollection_Mat4 {.
    cdecl, importcpp: "Multiply", dynlib: tkernel.}
proc Multiply*[Element_t](this: var NCollection_Mat4[Element_t];
                         theMat: NCollection_Mat4) {.cdecl, importcpp: "Multiply",
    dynlib: tkernel.}
proc `*=`*[Element_t](this: var NCollection_Mat4[Element_t];
                     theMat: NCollection_Mat4) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkernel.}
proc `*`*[Element_t](this: NCollection_Mat4[Element_t]; theMat: NCollection_Mat4): NCollection_Mat4 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc Multiplied*[Element_t](this: NCollection_Mat4[Element_t];
                           theMat: NCollection_Mat4): NCollection_Mat4 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc Multiply*[Element_t](this: var NCollection_Mat4[Element_t];
                         theFactor: Element_t) {.cdecl, importcpp: "Multiply",
    dynlib: tkernel.}
proc `*=`*[Element_t](this: var NCollection_Mat4[Element_t]; theFactor: Element_t) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `*`*[Element_t](this: NCollection_Mat4[Element_t]; theFactor: Element_t): NCollection_Mat4 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc Multiplied*[Element_t](this: NCollection_Mat4[Element_t]; theFactor: Element_t): NCollection_Mat4 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc Translate*[Element_t](this: var NCollection_Mat4[Element_t];
                          theVec: NCollection_Vec3[Element_t]) {.cdecl,
    importcpp: "Translate", dynlib: tkernel.}
proc Transposed*[Element_t](this: NCollection_Mat4[Element_t]): NCollection_Mat4 {.
    noSideEffect, cdecl, importcpp: "Transposed", dynlib: tkernel.}
proc Transpose*[Element_t](this: var NCollection_Mat4[Element_t]) {.cdecl,
    importcpp: "Transpose", dynlib: tkernel.}
proc Inverted*[Element_t](this: NCollection_Mat4[Element_t];
                         theOutMx: var NCollection_Mat4[Element_t]): bool {.
    noSideEffect, cdecl, importcpp: "Inverted", dynlib: tkernel.}
proc ConvertFrom*[Element_t; Other_t](this: var NCollection_Mat4[Element_t];
                                    theFrom: NCollection_Mat4[Other_t]) {.cdecl,
    importcpp: "ConvertFrom", dynlib: tkernel.}
proc Convert*[Element_t; Other_t](this: var NCollection_Mat4[Element_t];
                                theFrom: NCollection_Mat4[Other_t]) {.cdecl,
    importcpp: "Convert", dynlib: tkernel.}
proc Map*[Element_t](theData: ptr Element_t): var NCollection_Mat4[Element_t] {.cdecl,
    importcpp: "NCollection_Mat4::Map(@)", dynlib: tkernel.}
proc Map*[Element_t](theData: ptr Element_t): NCollection_Mat4[Element_t] {.cdecl,
    importcpp: "NCollection_Mat4::Map(@)", dynlib: tkernel.}
proc DumpJson*[Element_t](this: NCollection_Mat4[Element_t];
                         theOStream: var Standard_OStream; a3: cint) {.noSideEffect,
    cdecl, importcpp: "DumpJson", dynlib: tkernel.}