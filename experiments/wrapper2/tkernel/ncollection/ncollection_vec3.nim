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

## ! Auxiliary macros to define couple of similar access components as vector methods;
## ! Generic 3-components vector.
## ! To be used as RGB color pixel or XYZ 3D-point.
## ! The main target for this class - to handle raw low-level arrays (from/to graphic driver etc.).

type
  NCollection_Vec3*[Element_t] {.importcpp: "NCollection_Vec3<\'0>",
                                header: "NCollection_Vec3.hxx", bycopy.} = object ## !
                                                                             ## Returns the
                                                                             ## number of
                                                                             ## components.
    ## !< define the vector as array to avoid structure alignment issues


proc Length*[Element_t](): cint {.cdecl, importcpp: "NCollection_Vec3::Length(@)",
                               dynlib: tkernel.}
proc constructNCollection_Vec3*[Element_t](): NCollection_Vec3[Element_t] {.cdecl,
    constructor, importcpp: "NCollection_Vec3<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Vec3*[Element_t](theValue: Element_t): NCollection_Vec3[
    Element_t] {.cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)",
                dynlib: tkernel.}
proc constructNCollection_Vec3*[Element_t](theX: Element_t; theY: Element_t;
    theZ: Element_t): NCollection_Vec3[Element_t] {.cdecl, constructor,
    importcpp: "NCollection_Vec3<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Vec3*[Element_t](theVec2: NCollection_Vec2[Element_t];
    theZ: Element_t = Element_t(0)): NCollection_Vec3[Element_t] {.cdecl, constructor,
    importcpp: "NCollection_Vec3<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Vec3*[Element_t; OtherElement_t](
    theOtherVec3: NCollection_Vec3[OtherElement_t]): NCollection_Vec3[Element_t] {.
    cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)", dynlib: tkernel.}
proc SetValues*[Element_t](this: var NCollection_Vec3[Element_t]; theX: Element_t;
                          theY: Element_t; theZ: Element_t) {.cdecl,
    importcpp: "SetValues", dynlib: tkernel.}
proc SetValues*[Element_t](this: var NCollection_Vec3[Element_t];
                          theVec2: NCollection_Vec2[Element_t]; theZ: Element_t) {.
    cdecl, importcpp: "SetValues", dynlib: tkernel.}
proc x*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "x", dynlib: tkernel.}
proc r*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "r", dynlib: tkernel.}
proc y*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "y", dynlib: tkernel.}
proc g*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "g", dynlib: tkernel.}
proc z*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "z", dynlib: tkernel.}
proc b*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "b", dynlib: tkernel.}
proc xy*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "xy", dynlib: tkernel.}
proc yx*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "yx", dynlib: tkernel.}
proc xz*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "xz", dynlib: tkernel.}
proc zx*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "zx", dynlib: tkernel.}
proc yz*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "yz", dynlib: tkernel.}
proc zy*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "zy", dynlib: tkernel.}
proc xyz*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "xyz", dynlib: tkernel.}
proc xzy*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "xzy", dynlib: tkernel.}
proc yxz*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "yxz", dynlib: tkernel.}
proc yzx*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "yzx", dynlib: tkernel.}
proc zyx*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "zyx", dynlib: tkernel.}
proc zxy*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, cdecl, importcpp: "zxy", dynlib: tkernel.}
proc x*[Element_t](this: var NCollection_Vec3[Element_t]): var Element_t {.cdecl,
    importcpp: "x", dynlib: tkernel.}
proc r*[Element_t](this: var NCollection_Vec3[Element_t]): var Element_t {.cdecl,
    importcpp: "r", dynlib: tkernel.}
proc y*[Element_t](this: var NCollection_Vec3[Element_t]): var Element_t {.cdecl,
    importcpp: "y", dynlib: tkernel.}
proc g*[Element_t](this: var NCollection_Vec3[Element_t]): var Element_t {.cdecl,
    importcpp: "g", dynlib: tkernel.}
proc z*[Element_t](this: var NCollection_Vec3[Element_t]): var Element_t {.cdecl,
    importcpp: "z", dynlib: tkernel.}
proc b*[Element_t](this: var NCollection_Vec3[Element_t]): var Element_t {.cdecl,
    importcpp: "b", dynlib: tkernel.}
proc IsEqual*[Element_t](this: NCollection_Vec3[Element_t];
                        theOther: NCollection_Vec3): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*[Element_t](this: var NCollection_Vec3[Element_t];
                     theOther: NCollection_Vec3): bool {.cdecl,
    importcpp: "(# == #)", dynlib: tkernel.}
proc `==`*[Element_t](this: NCollection_Vec3[Element_t]; theOther: NCollection_Vec3): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc GetData*[Element_t](this: NCollection_Vec3[Element_t]): ptr Element_t {.
    noSideEffect, cdecl, importcpp: "GetData", dynlib: tkernel.}
proc ChangeData*[Element_t](this: var NCollection_Vec3[Element_t]): ptr Element_t {.
    cdecl, importcpp: "ChangeData", dynlib: tkernel.}
converter `constElement_t*`*[Element_t](this: NCollection_Vec3[Element_t]): ptr Element_t {.
    noSideEffect, cdecl, importcpp: "NCollection_Vec3::operator constElement_t*",
    dynlib: tkernel.}
converter `Element_t*`*[Element_t](this: var NCollection_Vec3[Element_t]): ptr Element_t {.
    cdecl, importcpp: "NCollection_Vec3::operator Element_t*", dynlib: tkernel.}
proc `+=`*[Element_t](this: var NCollection_Vec3[Element_t];
                     theAdd: NCollection_Vec3) {.cdecl, importcpp: "(# += #)",
    dynlib: tkernel.}
proc `-`*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec3 {.
    noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkernel.}
proc `-=`*[Element_t](this: var NCollection_Vec3[Element_t];
                     theDec: NCollection_Vec3) {.cdecl, importcpp: "(# -= #)",
    dynlib: tkernel.}
proc Multiply*[Element_t](this: var NCollection_Vec3[Element_t];
                         theFactor: Element_t) {.cdecl, importcpp: "Multiply",
    dynlib: tkernel.}
proc `*=`*[Element_t](this: var NCollection_Vec3[Element_t];
                     theRight: NCollection_Vec3) {.cdecl, importcpp: "(# *= #)",
    dynlib: tkernel.}
proc `*=`*[Element_t](this: var NCollection_Vec3[Element_t]; theFactor: Element_t) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `*`*[Element_t](this: NCollection_Vec3[Element_t]; theFactor: Element_t): NCollection_Vec3 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc Multiplied*[Element_t](this: NCollection_Vec3[Element_t]; theFactor: Element_t): NCollection_Vec3 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc cwiseMin*[Element_t](this: NCollection_Vec3[Element_t];
                         theVec: NCollection_Vec3): NCollection_Vec3 {.
    noSideEffect, cdecl, importcpp: "cwiseMin", dynlib: tkernel.}
proc cwiseMax*[Element_t](this: NCollection_Vec3[Element_t];
                         theVec: NCollection_Vec3): NCollection_Vec3 {.
    noSideEffect, cdecl, importcpp: "cwiseMax", dynlib: tkernel.}
proc cwiseAbs*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec3 {.
    noSideEffect, cdecl, importcpp: "cwiseAbs", dynlib: tkernel.}
proc maxComp*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "maxComp", dynlib: tkernel.}
proc minComp*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "minComp", dynlib: tkernel.}
proc `/=`*[Element_t](this: var NCollection_Vec3[Element_t]; theInvFactor: Element_t) {.
    cdecl, importcpp: "(# /= #)", dynlib: tkernel.}
proc `/=`*[Element_t](this: var NCollection_Vec3[Element_t];
                     theRight: NCollection_Vec3) {.cdecl, importcpp: "(# /= #)",
    dynlib: tkernel.}
proc `/`*[Element_t](this: NCollection_Vec3[Element_t]; theInvFactor: Element_t): NCollection_Vec3 {.
    noSideEffect, cdecl, importcpp: "(# / #)", dynlib: tkernel.}
proc Dot*[Element_t](this: NCollection_Vec3[Element_t]; theOther: NCollection_Vec3): Element_t {.
    noSideEffect, cdecl, importcpp: "Dot", dynlib: tkernel.}
proc Modulus*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "Modulus", dynlib: tkernel.}
proc SquareModulus*[Element_t](this: NCollection_Vec3[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "SquareModulus", dynlib: tkernel.}
proc Normalize*[Element_t](this: var NCollection_Vec3[Element_t]) {.cdecl,
    importcpp: "Normalize", dynlib: tkernel.}
proc Normalized*[Element_t](this: NCollection_Vec3[Element_t]): NCollection_Vec3 {.
    noSideEffect, cdecl, importcpp: "Normalized", dynlib: tkernel.}
proc Cross*[Element_t](theVec1: NCollection_Vec3; theVec2: NCollection_Vec3): NCollection_Vec3 {.
    cdecl, importcpp: "NCollection_Vec3::Cross(@)", dynlib: tkernel.}
proc GetLERP*[Element_t](theFrom: NCollection_Vec3; theTo: NCollection_Vec3;
                        theT: Element_t): NCollection_Vec3 {.cdecl,
    importcpp: "NCollection_Vec3::GetLERP(@)", dynlib: tkernel.}
proc DX*[Element_t](): NCollection_Vec3 {.cdecl,
                                       importcpp: "NCollection_Vec3::DX(@)",
                                       dynlib: tkernel.}
proc DY*[Element_t](): NCollection_Vec3 {.cdecl,
                                       importcpp: "NCollection_Vec3::DY(@)",
                                       dynlib: tkernel.}
proc DZ*[Element_t](): NCollection_Vec3 {.cdecl,
                                       importcpp: "NCollection_Vec3::DZ(@)",
                                       dynlib: tkernel.}
proc DumpJson*[Element_t](this: NCollection_Vec3[Element_t];
                         theOStream: var Standard_OStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkernel.}