##  Created by: Kirill GAVRILOV
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

## ! Generic 4-components vector.
## ! To be used as RGBA color vector or XYZW 3D-point with special W-component
## ! for operations with projection / model view matrices.
## ! Use this class for 3D-points carefully because declared W-component may
## ! results in incorrect results if used without matrices.

type
  NCollectionVec4*[ElementT] {.importcpp: "NCollection_Vec4<\'0>",
                              header: "NCollection_Vec4.hxx", bycopy.} = object ## !
                                                                           ## Returns the
                                                                           ## number of
                                                                           ## components.
    ## !< define the vector as array to avoid structure alignment issues


proc lengthV4*[ElementT](): cint {.cdecl, importcpp: "NCollection_Vec4::Length(@)",
                              dynlib: tkernel.}
proc newNCollectionVec4*[ElementT](): NCollectionVec4[ElementT] {.cdecl,
    constructor, importcpp: "NCollection_Vec4<\'*0>(@)", dynlib: tkernel.}
proc newNCollectionVec4*[ElementT](theValue: ElementT): NCollectionVec4[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)", dynlib: tkernel.}
proc newNCollectionVec4*[ElementT](theX: ElementT; theY: ElementT; theZ: ElementT;
                                  theW: ElementT): NCollectionVec4[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)", dynlib: tkernel.}
proc newNCollectionVec4*[ElementT](theVec2: NCollectionVec2[ElementT]): NCollectionVec4[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
               dynlib: tkernel.}
proc newNCollectionVec4*[ElementT](theVec3: NCollectionVec3[ElementT];
                                  theW: ElementT = ElementT(0)): NCollectionVec4[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
               dynlib: tkernel.}
proc newNCollectionVec4*[ElementT; OtherElementT](
    theOtherVec4: NCollectionVec4[OtherElementT]): NCollectionVec4[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)", dynlib: tkernel.}
proc setValues*[ElementT](this: var NCollectionVec4[ElementT]; theX: ElementT;
                         theY: ElementT; theZ: ElementT; theW: ElementT) {.cdecl,
    importcpp: "SetValues", dynlib: tkernel.}
proc setValues*[ElementT](this: var NCollectionVec4[ElementT];
                         theVec3: NCollectionVec3[ElementT]; theW: ElementT) {.
    cdecl, importcpp: "SetValues", dynlib: tkernel.}
proc x*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "x", dynlib: tkernel.}
proc r*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "r", dynlib: tkernel.}
proc y*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "y", dynlib: tkernel.}
proc g*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "g", dynlib: tkernel.}
proc z*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "z", dynlib: tkernel.}
proc b*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "b", dynlib: tkernel.}
proc w*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "w", dynlib: tkernel.}
proc a*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "a", dynlib: tkernel.}
proc xy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xy", dynlib: tkernel.}
proc yx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yx", dynlib: tkernel.}
proc xz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xz", dynlib: tkernel.}
proc zx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zx", dynlib: tkernel.}
proc xw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xw", dynlib: tkernel.}
proc wx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "wx", dynlib: tkernel.}
proc yz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yz", dynlib: tkernel.}
proc zy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zy", dynlib: tkernel.}
proc yw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yw", dynlib: tkernel.}
proc wy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "wy", dynlib: tkernel.}
proc zw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zw", dynlib: tkernel.}
proc wz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "wz", dynlib: tkernel.}
proc xyz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xyz", dynlib: tkernel.}
proc xzy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xzy", dynlib: tkernel.}
proc yxz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yxz", dynlib: tkernel.}
proc yzx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yzx", dynlib: tkernel.}
proc zyx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zyx", dynlib: tkernel.}
proc zxy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zxy", dynlib: tkernel.}
proc xyw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xyw", dynlib: tkernel.}
proc xwy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xwy", dynlib: tkernel.}
proc yxw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yxw", dynlib: tkernel.}
proc ywx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "ywx", dynlib: tkernel.}
proc wyx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wyx", dynlib: tkernel.}
proc wxy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wxy", dynlib: tkernel.}
proc xzw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xzw", dynlib: tkernel.}
proc xwz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xwz", dynlib: tkernel.}
proc zxw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zxw", dynlib: tkernel.}
proc zwx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zwx", dynlib: tkernel.}
proc wzx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wzx", dynlib: tkernel.}
proc wxz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wxz", dynlib: tkernel.}
proc yzw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yzw", dynlib: tkernel.}
proc ywz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "ywz", dynlib: tkernel.}
proc zyw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zyw", dynlib: tkernel.}
proc zwy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zwy", dynlib: tkernel.}
proc wzy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wzy", dynlib: tkernel.}
proc wyz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wyz", dynlib: tkernel.}
proc rgb*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "rgb", dynlib: tkernel.}
proc rbg*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "rbg", dynlib: tkernel.}
proc grb*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "grb", dynlib: tkernel.}
proc gbr*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "gbr", dynlib: tkernel.}
proc bgr*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "bgr", dynlib: tkernel.}
proc brg*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "brg", dynlib: tkernel.}
proc x*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "x", dynlib: tkernel.}
proc r*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "r", dynlib: tkernel.}
proc y*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "y", dynlib: tkernel.}
proc g*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "g", dynlib: tkernel.}
proc z*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "z", dynlib: tkernel.}
proc b*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "b", dynlib: tkernel.}
proc w*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "w", dynlib: tkernel.}
proc a*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "a", dynlib: tkernel.}
proc isEqual*[ElementT](this: NCollectionVec4[ElementT]; theOther: NCollectionVec4): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*[ElementT](this: var NCollectionVec4[ElementT]; theOther: NCollectionVec4): bool {.
    cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc `==`*[ElementT](this: NCollectionVec4[ElementT]; theOther: NCollectionVec4): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc getData*[ElementT](this: NCollectionVec4[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "GetData", dynlib: tkernel.}
proc changeData*[ElementT](this: var NCollectionVec4[ElementT]): ptr ElementT {.cdecl,
    importcpp: "ChangeData", dynlib: tkernel.}
converter `constElementT*`*[ElementT](this: NCollectionVec4[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "NCollection_Vec4::operator constElement_t*",
    dynlib: tkernel.}
converter `elementT*`*[ElementT](this: var NCollectionVec4[ElementT]): ptr ElementT {.
    cdecl, importcpp: "NCollection_Vec4::operator Element_t*", dynlib: tkernel.}
proc `+=`*[ElementT](this: var NCollectionVec4[ElementT]; theAdd: NCollectionVec4) {.
    cdecl, importcpp: "(# += #)", dynlib: tkernel.}
proc `-`*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkernel.}
proc `-=`*[ElementT](this: var NCollectionVec4[ElementT]; theDec: NCollectionVec4) {.
    cdecl, importcpp: "(# -= #)", dynlib: tkernel.}
proc `*=`*[ElementT](this: var NCollectionVec4[ElementT]; theRight: NCollectionVec4) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc multiply*[ElementT](this: var NCollectionVec4[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "Multiply", dynlib: tkernel.}
proc `*=`*[ElementT](this: var NCollectionVec4[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `*`*[ElementT](this: NCollectionVec4[ElementT]; theFactor: ElementT): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc multiplied*[ElementT](this: NCollectionVec4[ElementT]; theFactor: ElementT): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc cwiseMin*[ElementT](this: NCollectionVec4[ElementT]; theVec: NCollectionVec4): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "cwiseMin", dynlib: tkernel.}
proc cwiseMax*[ElementT](this: NCollectionVec4[ElementT]; theVec: NCollectionVec4): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "cwiseMax", dynlib: tkernel.}
proc cwiseAbs*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "cwiseAbs", dynlib: tkernel.}
proc maxComp*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "maxComp", dynlib: tkernel.}
proc minComp*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "minComp", dynlib: tkernel.}
proc dot*[ElementT](this: NCollectionVec4[ElementT]; theOther: NCollectionVec4): ElementT {.
    noSideEffect, cdecl, importcpp: "Dot", dynlib: tkernel.}
proc `/=`*[ElementT](this: var NCollectionVec4[ElementT]; theInvFactor: ElementT) {.
    cdecl, importcpp: "(# /= #)", dynlib: tkernel.}
proc `/=`*[ElementT](this: var NCollectionVec4[ElementT]; theRight: NCollectionVec4) {.
    cdecl, importcpp: "(# /= #)", dynlib: tkernel.}
proc `/`*[ElementT](this: var NCollectionVec4[ElementT]; theInvFactor: ElementT): NCollectionVec4 {.
    cdecl, importcpp: "(# / #)", dynlib: tkernel.}
proc dumpJson*[ElementT](this: NCollectionVec4[ElementT];
                        theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkernel.}
## ignored statement
