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


proc Length*[Element_t](): cint {.importcpp: "NCollection_Vec4::Length(@)",
                               header: "NCollection_Vec4.hxx".}
proc constructNCollection_Vec4*[Element_t](): NCollection_Vec4[Element_t] {.
    constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
    header: "NCollection_Vec4.hxx".}
proc constructNCollection_Vec4*[Element_t](theValue: Element_t): NCollection_Vec4[
    Element_t] {.constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
                header: "NCollection_Vec4.hxx".}
proc constructNCollection_Vec4*[Element_t](theX: Element_t; theY: Element_t;
    theZ: Element_t; theW: Element_t): NCollection_Vec4[Element_t] {.constructor,
    importcpp: "NCollection_Vec4<\'*0>(@)", header: "NCollection_Vec4.hxx".}
#[ proc constructNCollection_Vec4*[Element_t](theVec2: NCollection_Vec2[Element_t]): NCollection_Vec4[
    Element_t] {.constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
                header: "NCollection_Vec4.hxx".} ]#
#[ proc constructNCollection_Vec4*[Element_t](theVec3: NCollection_Vec3[Element_t];
    theW: Element_t = Element_t(0)): NCollection_Vec4[Element_t] {.constructor,
    importcpp: "NCollection_Vec4<\'*0>(@)", header: "NCollection_Vec4.hxx".} ]#
proc constructNCollection_Vec4*[Element_t; OtherElement_t](
    theOtherVec4: NCollection_Vec4[OtherElement_t]): NCollection_Vec4[Element_t] {.
    constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
    header: "NCollection_Vec4.hxx".}
proc SetValues*[Element_t](this: var NCollection_Vec4[Element_t]; theX: Element_t;
                          theY: Element_t; theZ: Element_t; theW: Element_t) {.
    importcpp: "SetValues", header: "NCollection_Vec4.hxx".}
#[ proc SetValues*[Element_t](this: var NCollection_Vec4[Element_t];
                          theVec3: NCollection_Vec3[Element_t]; theW: Element_t) {.
    importcpp: "SetValues", header: "NCollection_Vec4.hxx".} ]#
proc x*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    importcpp: "x", header: "NCollection_Vec4.hxx".}
proc r*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    importcpp: "r", header: "NCollection_Vec4.hxx".}
proc y*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    importcpp: "y", header: "NCollection_Vec4.hxx".}
proc g*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    importcpp: "g", header: "NCollection_Vec4.hxx".}
proc z*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    importcpp: "z", header: "NCollection_Vec4.hxx".}
proc b*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    importcpp: "b", header: "NCollection_Vec4.hxx".}
proc w*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    importcpp: "w", header: "NCollection_Vec4.hxx".}
proc a*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.noSideEffect,
    importcpp: "a", header: "NCollection_Vec4.hxx".}
#[ proc xy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "xy", header: "NCollection_Vec4.hxx".}
proc yz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "yz", header: "NCollection_Vec4.hxx".}
proc xz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "xz", header: "NCollection_Vec4.hxx".}
proc zx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "zx", header: "NCollection_Vec4.hxx".}
proc xw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "xw", header: "NCollection_Vec4.hxx".}
proc wx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "wx", header: "NCollection_Vec4.hxx".}
proc yz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "yz", header: "NCollection_Vec4.hxx".}
proc zy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "zy", header: "NCollection_Vec4.hxx".}
proc yw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "yw", header: "NCollection_Vec4.hxx".}
proc wy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "wy", header: "NCollection_Vec4.hxx".}
proc zw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "zw", header: "NCollection_Vec4.hxx".}
proc wz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, importcpp: "wz", header: "NCollection_Vec4.hxx".}
proc xyz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "xyz", header: "NCollection_Vec4.hxx".}
proc xzy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "xzy", header: "NCollection_Vec4.hxx".}
proc yxz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "yxz", header: "NCollection_Vec4.hxx".}
proc yzx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "yzx", header: "NCollection_Vec4.hxx".}
proc zyx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "zyx", header: "NCollection_Vec4.hxx".}
proc zxy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "zxy", header: "NCollection_Vec4.hxx".}
proc xyw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "xyw", header: "NCollection_Vec4.hxx".}
proc xwy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "xwy", header: "NCollection_Vec4.hxx".}
proc yxw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "yxw", header: "NCollection_Vec4.hxx".}
proc ywx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "ywx", header: "NCollection_Vec4.hxx".}
proc wyx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "wyx", header: "NCollection_Vec4.hxx".}
proc wxy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "wxy", header: "NCollection_Vec4.hxx".}
proc xzw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "xzw", header: "NCollection_Vec4.hxx".}
proc xwz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "xwz", header: "NCollection_Vec4.hxx".}
proc zxw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "zxw", header: "NCollection_Vec4.hxx".}
proc zwx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "zwx", header: "NCollection_Vec4.hxx".}
proc wzx*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "wzx", header: "NCollection_Vec4.hxx".}
proc wxz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "wxz", header: "NCollection_Vec4.hxx".}
proc yzw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "yzw", header: "NCollection_Vec4.hxx".}
proc ywz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "ywz", header: "NCollection_Vec4.hxx".}
proc zyw*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "zyw", header: "NCollection_Vec4.hxx".}
proc zwy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "zwy", header: "NCollection_Vec4.hxx".}
proc wzy*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "wzy", header: "NCollection_Vec4.hxx".}
proc wyz*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "wyz", header: "NCollection_Vec4.hxx".}
proc rgb*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "rgb", header: "NCollection_Vec4.hxx".}
proc rbg*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "rbg", header: "NCollection_Vec4.hxx".}
proc grb*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "grb", header: "NCollection_Vec4.hxx".}
proc gbr*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "gbr", header: "NCollection_Vec4.hxx".}
proc bgr*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "bgr", header: "NCollection_Vec4.hxx".}
proc brg*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec3[Element_t] {.
    noSideEffect, importcpp: "brg", header: "NCollection_Vec4.hxx".} ]#
proc x*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.
    importcpp: "x", header: "NCollection_Vec4.hxx".}
proc r*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.
    importcpp: "r", header: "NCollection_Vec4.hxx".}
proc y*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.
    importcpp: "y", header: "NCollection_Vec4.hxx".}
proc g*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.
    importcpp: "g", header: "NCollection_Vec4.hxx".}
proc z*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.
    importcpp: "z", header: "NCollection_Vec4.hxx".}
proc b*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.
    importcpp: "b", header: "NCollection_Vec4.hxx".}
proc w*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.
    importcpp: "w", header: "NCollection_Vec4.hxx".}
proc a*[Element_t](this: var NCollection_Vec4[Element_t]): var Element_t {.
    importcpp: "a", header: "NCollection_Vec4.hxx".}
proc IsEqual*[Element_t](this: NCollection_Vec4[Element_t];
                        theOther: NCollection_Vec4): bool {.noSideEffect,
    importcpp: "IsEqual", header: "NCollection_Vec4.hxx".}
proc `==`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theOther: NCollection_Vec4): bool {.importcpp: "(# == #)",
    header: "NCollection_Vec4.hxx".}
proc `==`*[Element_t](this: NCollection_Vec4[Element_t]; theOther: NCollection_Vec4): bool {.
    noSideEffect, importcpp: "(# == #)", header: "NCollection_Vec4.hxx".}
proc GetData*[Element_t](this: NCollection_Vec4[Element_t]): ptr Element_t {.
    noSideEffect, importcpp: "GetData", header: "NCollection_Vec4.hxx".}
proc ChangeData*[Element_t](this: var NCollection_Vec4[Element_t]): ptr Element_t {.
    importcpp: "ChangeData", header: "NCollection_Vec4.hxx".}
converter `constElement_t*`*[Element_t](this: NCollection_Vec4[Element_t]): ptr Element_t {.
    noSideEffect, importcpp: "NCollection_Vec4::operator constElement_t*",
    header: "NCollection_Vec4.hxx".}
converter `Element_t*`*[Element_t](this: var NCollection_Vec4[Element_t]): ptr Element_t {.
    importcpp: "NCollection_Vec4::operator Element_t*",
    header: "NCollection_Vec4.hxx".}
proc `+=`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theAdd: NCollection_Vec4) {.importcpp: "(# += #)",
    header: "NCollection_Vec4.hxx".}
proc `-`*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec4 {.
    noSideEffect, importcpp: "(- #)", header: "NCollection_Vec4.hxx".}
proc `-=`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theDec: NCollection_Vec4) {.importcpp: "(# -= #)",
    header: "NCollection_Vec4.hxx".}
proc `*=`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theRight: NCollection_Vec4) {.importcpp: "(# *= #)",
    header: "NCollection_Vec4.hxx".}
proc Multiply*[Element_t](this: var NCollection_Vec4[Element_t];
                         theFactor: Element_t) {.importcpp: "Multiply",
    header: "NCollection_Vec4.hxx".}
proc `*=`*[Element_t](this: var NCollection_Vec4[Element_t]; theFactor: Element_t) {.
    importcpp: "(# *= #)", header: "NCollection_Vec4.hxx".}
proc `*`*[Element_t](this: NCollection_Vec4[Element_t]; theFactor: Element_t): NCollection_Vec4 {.
    noSideEffect, importcpp: "(# * #)", header: "NCollection_Vec4.hxx".}
proc Multiplied*[Element_t](this: NCollection_Vec4[Element_t]; theFactor: Element_t): NCollection_Vec4 {.
    noSideEffect, importcpp: "Multiplied", header: "NCollection_Vec4.hxx".}
proc cwiseMin*[Element_t](this: NCollection_Vec4[Element_t];
                         theVec: NCollection_Vec4): NCollection_Vec4 {.
    noSideEffect, importcpp: "cwiseMin", header: "NCollection_Vec4.hxx".}
proc cwiseMax*[Element_t](this: NCollection_Vec4[Element_t];
                         theVec: NCollection_Vec4): NCollection_Vec4 {.
    noSideEffect, importcpp: "cwiseMax", header: "NCollection_Vec4.hxx".}
proc cwiseAbs*[Element_t](this: NCollection_Vec4[Element_t]): NCollection_Vec4 {.
    noSideEffect, importcpp: "cwiseAbs", header: "NCollection_Vec4.hxx".}
proc maxComp*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.
    noSideEffect, importcpp: "maxComp", header: "NCollection_Vec4.hxx".}
proc minComp*[Element_t](this: NCollection_Vec4[Element_t]): Element_t {.
    noSideEffect, importcpp: "minComp", header: "NCollection_Vec4.hxx".}
proc Dot*[Element_t](this: NCollection_Vec4[Element_t]; theOther: NCollection_Vec4): Element_t {.
    noSideEffect, importcpp: "Dot", header: "NCollection_Vec4.hxx".}
proc `/=`*[Element_t](this: var NCollection_Vec4[Element_t]; theInvFactor: Element_t) {.
    importcpp: "(# /= #)", header: "NCollection_Vec4.hxx".}
proc `/=`*[Element_t](this: var NCollection_Vec4[Element_t];
                     theRight: NCollection_Vec4) {.importcpp: "(# /= #)",
    header: "NCollection_Vec4.hxx".}
proc `/`*[Element_t](this: var NCollection_Vec4[Element_t]; theInvFactor: Element_t): NCollection_Vec4 {.
    importcpp: "(# / #)", header: "NCollection_Vec4.hxx".}
proc DumpJson*[Element_t](this: NCollection_Vec4[Element_t];
                         theOStream: var Standard_OStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "NCollection_Vec4.hxx".}
## ! Optimized concretization for float type.
##  template<> inline NCollection_Vec4<float>& NCollection_Vec4<float>::operator/= (const float theInvFactor);
## ! Optimized concretization for double type.
##  template<> inline NCollection_Vec4<double>& NCollection_Vec4<double>::operator/= (const double theInvFactor);
