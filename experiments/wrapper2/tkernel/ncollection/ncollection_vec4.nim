when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
  NCollection_Vec4*[Element_t] {.importcpp: "NCollection_Vec4<\'0>",
                                header: "NCollection_Vec4.hxx", bycopy.} = object ## !
                                                                             ## Returns the
                                                                             ## number of
                                                                             ## components.
    ## !< define the vector as array to avoid structure alignment issues


proc Length*[Element_t](): cint {.cdecl, importcpp: "NCollection_Vec4::Length(@)",
                               dynlib: tkernel.}
proc constructNCollection_Vec4*[Element_t](): NCollection_Vec4[Element_t] {.cdecl,
    constructor, importcpp: "NCollection_Vec4<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Vec4*[Element_t](theValue: Element_t): NCollection_Vec4[
    Element_t] {.cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
                dynlib: tkernel.}
proc constructNCollection_Vec4*[Element_t](theX: Element_t; theY: Element_t;
    theZ: Element_t; theW: Element_t): NCollection_Vec4[Element_t] {.cdecl,
    constructor, importcpp: "NCollection_Vec4<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Vec4*[Element_t](theVec2: NCollection_Vec2[Element_t]): NCollection_Vec4[
    Element_t] {.cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
                dynlib: tkernel.}
proc constructNCollection_Vec4*[Element_t](theVec3: NCollection_Vec3[Element_t];
    theW: Element_t = Element_t(0)): NCollection_Vec4[Element_t] {.cdecl, constructor,
    importcpp: "NCollection_Vec4<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Vec4*[Element_t; OtherElement_t](
    theOtherVec4: NCollection_Vec4[OtherElement_t]): NCollection_Vec4[Element_t] {.
    cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)", dynlib: tkernel.}
proc SetValues*[Element_t](this: var NCollection_Vec4[Element_t]; theX: Element_t;
                          theY: Element_t; theZ: Element_t; theW: Element_t) {.cdecl,
    importcpp: "SetValues", dynlib: tkernel.}
proc SetValues*[Element_t](this: var NCollection_Vec4[Element_t];
                          theVec3: NCollection_Vec3[Element_t]; theW: Element_t) {.
    cdecl, importcpp: "SetValues", dynlib: tkernel.}
proc x*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "x", dynlib: tkernel.}
proc r*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "r", dynlib: tkernel.}
proc y*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "y", dynlib: tkernel.}
proc g*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "g", dynlib: tkernel.}
proc z*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "z", dynlib: tkernel.}
proc b*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "b", dynlib: tkernel.}
proc w*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "w", dynlib: tkernel.}
proc a*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "a", dynlib: tkernel.}
proc xy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "xy", dynlib: tkernel.}
proc yx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "yx", dynlib: tkernel.}
proc xz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "xz", dynlib: tkernel.}
proc zx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "zx", dynlib: tkernel.}
proc xw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "xw", dynlib: tkernel.}
proc wx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "wx", dynlib: tkernel.}
proc yz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "yz", dynlib: tkernel.}
proc zy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "zy", dynlib: tkernel.}
proc yw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "yw", dynlib: tkernel.}
proc wy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "wy", dynlib: tkernel.}
proc zw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "zw", dynlib: tkernel.}
proc wz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "wz", dynlib: tkernel.}
proc xyz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "xyz", dynlib: tkernel.}
proc xzy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "xzy", dynlib: tkernel.}
proc yxz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "yxz", dynlib: tkernel.}
proc yzx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "yzx", dynlib: tkernel.}
proc zyx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "zyx", dynlib: tkernel.}
proc zxy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "zxy", dynlib: tkernel.}
proc xyw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "xyw", dynlib: tkernel.}
proc xwy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "xwy", dynlib: tkernel.}
proc yxw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "yxw", dynlib: tkernel.}
proc ywx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "ywx", dynlib: tkernel.}
proc wyx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "wyx", dynlib: tkernel.}
proc wxy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "wxy", dynlib: tkernel.}
proc xzw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "xzw", dynlib: tkernel.}
proc xwz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "xwz", dynlib: tkernel.}
proc zxw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "zxw", dynlib: tkernel.}
proc zwx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "zwx", dynlib: tkernel.}
proc wzx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "wzx", dynlib: tkernel.}
proc wxz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "wxz", dynlib: tkernel.}
proc yzw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "yzw", dynlib: tkernel.}
proc ywz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "ywz", dynlib: tkernel.}
proc zyw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "zyw", dynlib: tkernel.}
proc zwy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "zwy", dynlib: tkernel.}
proc wzy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "wzy", dynlib: tkernel.}
proc wyz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "wyz", dynlib: tkernel.}
proc rgb*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "rgb", dynlib: tkernel.}
proc rbg*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "rbg", dynlib: tkernel.}
proc grb*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "grb", dynlib: tkernel.}
proc gbr*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "gbr", dynlib: tkernel.}
proc bgr*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "bgr", dynlib: tkernel.}
proc brg*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "brg", dynlib: tkernel.}
proc x*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.cdecl,
    importcpp: "x", dynlib: tkernel.}
proc r*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.cdecl,
    importcpp: "r", dynlib: tkernel.}
proc y*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.cdecl,
    importcpp: "y", dynlib: tkernel.}
proc g*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.cdecl,
    importcpp: "g", dynlib: tkernel.}
proc z*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.cdecl,
    importcpp: "z", dynlib: tkernel.}
proc b*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.cdecl,
    importcpp: "b", dynlib: tkernel.}
proc w*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.cdecl,
    importcpp: "w", dynlib: tkernel.}
proc a*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.cdecl,
    importcpp: "a", dynlib: tkernel.}
proc IsEqual*[Element_t](this: NCollection_Vec4[Element_t];
                        theOther: NCollection_Vec4): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theOther: NCollection_Vec4): bool {.cdecl,
    importcpp: "(# == #)", dynlib: tkernel.}
proc `==`*[Element_t](this: NCollection_Vec4[Element_t]; theOther: NCollection_Vec4): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc GetData*[Element_t](this: NCollection_Vec4[Element_t]): ptr Element_t {.
    noSideEffect, cdecl, importcpp: "GetData", dynlib: tkernel.}
proc ChangeData*[Element_t](this: var NCollection_Vec4[Element_t]): ptr Element_t {.
    cdecl, importcpp: "ChangeData", dynlib: tkernel.}
converter `constElement_t*`*[Element_t](this: NCollection_Vec4[Element_t]): ptr Element_t {.
    noSideEffect, cdecl, importcpp: "NCollection_Vec4::operator constElement_t*",
    dynlib: tkernel.}
converter `Element_t*`*[Element_t](this: var NCollection_Vec4[Element_t]): ptr Element_t {.
    cdecl, importcpp: "NCollection_Vec4::operator Element_t*", dynlib: tkernel.}
proc `+=`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theAdd: NCollection_Vec4) {.cdecl, importcpp: "(# += #)",
    dynlib: tkernel.}
proc `-`*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec4 {.
    noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkernel.}
proc `-=`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theDec: NCollection_Vec4) {.cdecl, importcpp: "(# -= #)",
    dynlib: tkernel.}
proc `*=`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theRight: NCollection_Vec4) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkernel.}
proc Multiply*[Element_t](this: var NCollection_Vec4[Element_t];
                         theFactor: Element_t) {.cdecl, importcpp: "Multiply",
    dynlib: tkernel.}
proc `*=`*[Element_t](this: var NCollection_Vec4[Element_t]; theFactor: Element_t) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `*`*[Element_t](this: NCollection_Vec4[Element_t]; theFactor: Element_t): NCollection_Vec4 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc Multiplied*[Element_t](this: NCollection_Vec4[Element_t]; theFactor: Element_t): NCollection_Vec4 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc cwiseMin*[Element_t](this: NCollection_Vec4[Element_t];
                         theVec: NCollection_Vec4): NCollection_Vec4 {.
    noSideEffect, cdecl, importcpp: "cwiseMin", dynlib: tkernel.}
proc cwiseMax*[Element_t](this: NCollection_Vec4[Element_t];
                         theVec: NCollection_Vec4): NCollection_Vec4 {.
    noSideEffect, cdecl, importcpp: "cwiseMax", dynlib: tkernel.}
proc cwiseAbs*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec4 {.
    noSideEffect, cdecl, importcpp: "cwiseAbs", dynlib: tkernel.}
proc maxComp*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "maxComp", dynlib: tkernel.}
proc minComp*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "minComp", dynlib: tkernel.}
proc Dot*[Element_t](this: NCollection_Vec4[Element_t]; theOther: NCollection_Vec4): Element_t {.
    noSideEffect, cdecl, importcpp: "Dot", dynlib: tkernel.}
proc `/=`*[Element_t](this: var NCollection_Vec4[Element_t]; theInvFactor: Element_t) {.
    cdecl, importcpp: "(# /= #)", dynlib: tkernel.}
proc `/=`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theRight: NCollection_Vec4) {.cdecl, importcpp: "(# /= #)",
    dynlib: tkernel.}
proc `/`*[Element_t](this: var NCollection_Vec4[Element_t]; theInvFactor: Element_t): NCollection_Vec4 {.
    cdecl, importcpp: "(# / #)", dynlib: tkernel.}
proc DumpJson*[Element_t](this: NCollection_Vec4[Element_t];
                         theOStream: var Standard_OStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkernel.}
## ignored statement
