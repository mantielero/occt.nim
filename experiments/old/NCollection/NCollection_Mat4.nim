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


proc Rows*[Element_t](): csize_t {.importcpp: "NCollection_Mat4::Rows(@)",
                                header: "NCollection_Mat4.hxx".}
proc Cols*[Element_t](): csize_t {.importcpp: "NCollection_Mat4::Cols(@)",
                                header: "NCollection_Mat4.hxx".}
proc constructNCollection_Mat4*[Element_t](): NCollection_Mat4[Element_t] {.
    constructor, importcpp: "NCollection_Mat4<\'*0>(@)",
    header: "NCollection_Mat4.hxx".}
proc constructNCollection_Mat4*[Element_t; OtherElement_t](
    theOtherMat4: NCollection_Mat4[OtherElement_t]): NCollection_Mat4[Element_t] {.
    constructor, importcpp: "NCollection_Mat4<\'*0>(@)",
    header: "NCollection_Mat4.hxx".}
proc GetValue*[Element_t](this: NCollection_Mat4[Element_t]; theRow: csize_t;
                         theCol: csize_t): Element_t {.noSideEffect,
    importcpp: "GetValue", header: "NCollection_Mat4.hxx".}
proc ChangeValue*[Element_t](this: var NCollection_Mat4[Element_t]; theRow: csize_t;
                            theCol: csize_t): var Element_t {.
    importcpp: "ChangeValue", header: "NCollection_Mat4.hxx".}
proc SetValue*[Element_t](this: var NCollection_Mat4[Element_t]; theRow: csize_t;
                         theCol: csize_t; theValue: Element_t) {.
    importcpp: "SetValue", header: "NCollection_Mat4.hxx".}
proc GetRow*[Element_t](this: NCollection_Mat4[Element_t]; theRow: csize_t): NCollection_Vec4[
    Element_t] {.noSideEffect, importcpp: "GetRow", header: "NCollection_Mat4.hxx".}
#[ proc SetRow*[Element_t](this: var NCollection_Mat4[Element_t]; theRow: csize_t;
                       theVec: NCollection_Vec3[Element_t]) {.importcpp: "SetRow",
    header: "NCollection_Mat4.hxx".} ]#
proc SetRow*[Element_t](this: var NCollection_Mat4[Element_t]; theRow: csize_t;
                       theVec: NCollection_Vec4[Element_t]) {.importcpp: "SetRow",
    header: "NCollection_Mat4.hxx".}
proc GetColumn*[Element_t](this: NCollection_Mat4[Element_t]; theCol: csize_t): NCollection_Vec4[
    Element_t] {.noSideEffect, importcpp: "GetColumn",
                header: "NCollection_Mat4.hxx".}
#[ proc SetColumn*[Element_t](this: var NCollection_Mat4[Element_t]; theCol: csize_t;
                          theVec: NCollection_Vec3[Element_t]) {.
    importcpp: "SetColumn", header: "NCollection_Mat4.hxx".} ]#
proc SetColumn*[Element_t](this: var NCollection_Mat4[Element_t]; theCol: csize_t;
                          theVec: NCollection_Vec4[Element_t]) {.
    importcpp: "SetColumn", header: "NCollection_Mat4.hxx".}
proc GetDiagonal*[Element_t](this: NCollection_Mat4[Element_t]): NCollection_Vec4[
    Element_t] {.noSideEffect, importcpp: "GetDiagonal",
                header: "NCollection_Mat4.hxx".}
#[ proc SetDiagonal*[Element_t](this: var NCollection_Mat4[Element_t];
                            theVec: NCollection_Vec3[Element_t]) {.
    importcpp: "SetDiagonal", header: "NCollection_Mat4.hxx".} ]#
proc SetDiagonal*[Element_t](this: var NCollection_Mat4[Element_t];
                            theVec: NCollection_Vec4[Element_t]) {.
    importcpp: "SetDiagonal", header: "NCollection_Mat4.hxx".}
proc InitIdentity*[Element_t](this: var NCollection_Mat4[Element_t]) {.
    importcpp: "InitIdentity", header: "NCollection_Mat4.hxx".}
proc IsIdentity*[Element_t](this: NCollection_Mat4[Element_t]): bool {.noSideEffect,
    importcpp: "IsIdentity", header: "NCollection_Mat4.hxx".}
proc IsEqual*[Element_t](this: NCollection_Mat4[Element_t];
                        theOther: NCollection_Mat4): bool {.noSideEffect,
    importcpp: "IsEqual", header: "NCollection_Mat4.hxx".}
proc `==`*[Element_t](this: var NCollection_Mat4[Element_t];
                     theOther: NCollection_Mat4): bool {.importcpp: "(# == #)",
    header: "NCollection_Mat4.hxx".}
proc `==`*[Element_t](this: NCollection_Mat4[Element_t]; theOther: NCollection_Mat4): bool {.
    noSideEffect, importcpp: "(# == #)", header: "NCollection_Mat4.hxx".}
proc GetData*[Element_t](this: NCollection_Mat4[Element_t]): ptr Element_t {.
    noSideEffect, importcpp: "GetData", header: "NCollection_Mat4.hxx".}
proc ChangeData*[Element_t](this: var NCollection_Mat4[Element_t]): ptr Element_t {.
    importcpp: "ChangeData", header: "NCollection_Mat4.hxx".}
converter `constElement_t*`*[Element_t](this: NCollection_Mat4[Element_t]): ptr Element_t {.
    noSideEffect, importcpp: "NCollection_Mat4::operator constElement_t*",
    header: "NCollection_Mat4.hxx".}
converter `Element_t*`*[Element_t](this: var NCollection_Mat4[Element_t]): ptr Element_t {.
    importcpp: "NCollection_Mat4::operator Element_t*",
    header: "NCollection_Mat4.hxx".}
proc `*`*[Element_t](this: NCollection_Mat4[Element_t];
                    theVec: NCollection_Vec4[Element_t]): NCollection_Vec4[
    Element_t] {.noSideEffect, importcpp: "(# * #)", header: "NCollection_Mat4.hxx".}
proc Multiply*[Element_t](this: var NCollection_Mat4[Element_t];
                         theMatA: NCollection_Mat4; theMatB: NCollection_Mat4): NCollection_Mat4 {.
    importcpp: "Multiply", header: "NCollection_Mat4.hxx".}
proc Multiply*[Element_t](this: var NCollection_Mat4[Element_t];
                         theMat: NCollection_Mat4) {.importcpp: "Multiply",
    header: "NCollection_Mat4.hxx".}
proc `*=`*[Element_t](this: var NCollection_Mat4[Element_t];
                     theMat: NCollection_Mat4) {.importcpp: "(# *= #)",
    header: "NCollection_Mat4.hxx".}
proc `*`*[Element_t](this: NCollection_Mat4[Element_t]; theMat: NCollection_Mat4): NCollection_Mat4 {.
    noSideEffect, importcpp: "(# * #)", header: "NCollection_Mat4.hxx".}
proc Multiplied*[Element_t](this: NCollection_Mat4[Element_t];
                           theMat: NCollection_Mat4): NCollection_Mat4 {.
    noSideEffect, importcpp: "Multiplied", header: "NCollection_Mat4.hxx".}
proc Multiply*[Element_t](this: var NCollection_Mat4[Element_t];
                         theFactor: Element_t) {.importcpp: "Multiply",
    header: "NCollection_Mat4.hxx".}
proc `*=`*[Element_t](this: var NCollection_Mat4[Element_t]; theFactor: Element_t) {.
    importcpp: "(# *= #)", header: "NCollection_Mat4.hxx".}
proc `*`*[Element_t](this: NCollection_Mat4[Element_t]; theFactor: Element_t): NCollection_Mat4 {.
    noSideEffect, importcpp: "(# * #)", header: "NCollection_Mat4.hxx".}
proc Multiplied*[Element_t](this: NCollection_Mat4[Element_t]; theFactor: Element_t): NCollection_Mat4 {.
    noSideEffect, importcpp: "Multiplied", header: "NCollection_Mat4.hxx".}
#[ proc Translate*[Element_t](this: var NCollection_Mat4[Element_t];
                          theVec: NCollection_Vec3[Element_t]) {.
    importcpp: "Translate", header: "NCollection_Mat4.hxx".} ]#
proc Transposed*[Element_t](this: NCollection_Mat4[Element_t]): NCollection_Mat4 {.
    noSideEffect, importcpp: "Transposed", header: "NCollection_Mat4.hxx".}
proc Transpose*[Element_t](this: var NCollection_Mat4[Element_t]) {.
    importcpp: "Transpose", header: "NCollection_Mat4.hxx".}
proc Inverted*[Element_t](this: NCollection_Mat4[Element_t];
                         theOutMx: var NCollection_Mat4[Element_t]): bool {.
    noSideEffect, importcpp: "Inverted", header: "NCollection_Mat4.hxx".}
proc ConvertFrom*[Element_t; Other_t](this: var NCollection_Mat4[Element_t];
                                    theFrom: NCollection_Mat4[Other_t]) {.
    importcpp: "ConvertFrom", header: "NCollection_Mat4.hxx".}
proc Convert*[Element_t; Other_t](this: var NCollection_Mat4[Element_t];
                                theFrom: NCollection_Mat4[Other_t]) {.
    importcpp: "Convert", header: "NCollection_Mat4.hxx".}
proc Map*[Element_t](theData: ptr Element_t): var NCollection_Mat4[Element_t] {.
    importcpp: "NCollection_Mat4::Map(@)", header: "NCollection_Mat4.hxx".}
#[ proc Map*[Element_t](theData: ptr Element_t): NCollection_Mat4[Element_t] {.
    importcpp: "NCollection_Mat4::Map(@)", header: "NCollection_Mat4.hxx".} ]#
proc DumpJson*[Element_t](this: NCollection_Mat4[Element_t];
                         theOStream: var Standard_OStream; a3: int) {.noSideEffect,
    importcpp: "DumpJson", header: "NCollection_Mat4.hxx".}