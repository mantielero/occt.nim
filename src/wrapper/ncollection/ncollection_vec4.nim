import ncollection_types
import ../standard/standard_types
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



proc lengthV4*[ElementT](): cint {.cdecl, importcpp: "NCollection_Vec4::Length(@)",
                              header: "NCollection_Vec4.hxx".}
proc newNCollectionVec4*[ElementT](): NCollectionVec4[ElementT] {.cdecl,
    constructor, importcpp: "NCollection_Vec4<\'*0>(@)", header: "NCollection_Vec4.hxx".}
proc newNCollectionVec4*[ElementT](theValue: ElementT): NCollectionVec4[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)", header: "NCollection_Vec4.hxx".}
proc newNCollectionVec4*[ElementT](theX: ElementT; theY: ElementT; theZ: ElementT;
                                  theW: ElementT): NCollectionVec4[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)", header: "NCollection_Vec4.hxx".}
proc newNCollectionVec4*[ElementT](theVec2: NCollectionVec2[ElementT]): NCollectionVec4[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
               header: "NCollection_Vec4.hxx".}
proc newNCollectionVec4*[ElementT](theVec3: NCollectionVec3[ElementT];
                                  theW: ElementT = ElementT(0)): NCollectionVec4[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)",
               header: "NCollection_Vec4.hxx".}
proc newNCollectionVec4*[ElementT; OtherElementT](
    theOtherVec4: NCollectionVec4[OtherElementT]): NCollectionVec4[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec4<\'*0>(@)", header: "NCollection_Vec4.hxx".}
proc setValues*[ElementT](this: var NCollectionVec4[ElementT]; theX: ElementT;
                         theY: ElementT; theZ: ElementT; theW: ElementT) {.cdecl,
    importcpp: "SetValues", header: "NCollection_Vec4.hxx".}
proc setValues*[ElementT](this: var NCollectionVec4[ElementT];
                         theVec3: NCollectionVec3[ElementT]; theW: ElementT) {.
    cdecl, importcpp: "SetValues", header: "NCollection_Vec4.hxx".}
proc x*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "x", header: "NCollection_Vec4.hxx".}
proc r*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "r", header: "NCollection_Vec4.hxx".}
proc y*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "y", header: "NCollection_Vec4.hxx".}
proc g*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "g", header: "NCollection_Vec4.hxx".}
proc z*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "z", header: "NCollection_Vec4.hxx".}
proc b*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "b", header: "NCollection_Vec4.hxx".}
proc w*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "w", header: "NCollection_Vec4.hxx".}
proc a*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "a", header: "NCollection_Vec4.hxx".}
proc xy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xy", header: "NCollection_Vec4.hxx".}
proc yx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yx", header: "NCollection_Vec4.hxx".}
proc xz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xz", header: "NCollection_Vec4.hxx".}
proc zx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zx", header: "NCollection_Vec4.hxx".}
proc xw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xw", header: "NCollection_Vec4.hxx".}
proc wx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "wx", header: "NCollection_Vec4.hxx".}
proc yz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yz", header: "NCollection_Vec4.hxx".}
proc zy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zy", header: "NCollection_Vec4.hxx".}
proc yw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yw", header: "NCollection_Vec4.hxx".}
proc wy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "wy", header: "NCollection_Vec4.hxx".}
proc zw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zw", header: "NCollection_Vec4.hxx".}
proc wz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "wz", header: "NCollection_Vec4.hxx".}
proc xyz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xyz", header: "NCollection_Vec4.hxx".}
proc xzy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xzy", header: "NCollection_Vec4.hxx".}
proc yxz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yxz", header: "NCollection_Vec4.hxx".}
proc yzx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yzx", header: "NCollection_Vec4.hxx".}
proc zyx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zyx", header: "NCollection_Vec4.hxx".}
proc zxy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zxy", header: "NCollection_Vec4.hxx".}
proc xyw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xyw", header: "NCollection_Vec4.hxx".}
proc xwy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xwy", header: "NCollection_Vec4.hxx".}
proc yxw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yxw", header: "NCollection_Vec4.hxx".}
proc ywx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "ywx", header: "NCollection_Vec4.hxx".}
proc wyx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wyx", header: "NCollection_Vec4.hxx".}
proc wxy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wxy", header: "NCollection_Vec4.hxx".}
proc xzw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xzw", header: "NCollection_Vec4.hxx".}
proc xwz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xwz", header: "NCollection_Vec4.hxx".}
proc zxw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zxw", header: "NCollection_Vec4.hxx".}
proc zwx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zwx", header: "NCollection_Vec4.hxx".}
proc wzx*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wzx", header: "NCollection_Vec4.hxx".}
proc wxz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wxz", header: "NCollection_Vec4.hxx".}
proc yzw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yzw", header: "NCollection_Vec4.hxx".}
proc ywz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "ywz", header: "NCollection_Vec4.hxx".}
proc zyw*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zyw", header: "NCollection_Vec4.hxx".}
proc zwy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zwy", header: "NCollection_Vec4.hxx".}
proc wzy*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wzy", header: "NCollection_Vec4.hxx".}
proc wyz*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "wyz", header: "NCollection_Vec4.hxx".}
proc rgb*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "rgb", header: "NCollection_Vec4.hxx".}
proc rbg*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "rbg", header: "NCollection_Vec4.hxx".}
proc grb*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "grb", header: "NCollection_Vec4.hxx".}
proc gbr*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "gbr", header: "NCollection_Vec4.hxx".}
proc bgr*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "bgr", header: "NCollection_Vec4.hxx".}
proc brg*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "brg", header: "NCollection_Vec4.hxx".}
proc x*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "x", header: "NCollection_Vec4.hxx".}
proc r*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "r", header: "NCollection_Vec4.hxx".}
proc y*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "y", header: "NCollection_Vec4.hxx".}
proc g*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "g", header: "NCollection_Vec4.hxx".}
proc z*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "z", header: "NCollection_Vec4.hxx".}
proc b*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "b", header: "NCollection_Vec4.hxx".}
proc w*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "w", header: "NCollection_Vec4.hxx".}
proc a*[ElementT](this: var NCollectionVec4[ElementT]): var ElementT {.cdecl,
    importcpp: "a", header: "NCollection_Vec4.hxx".}
proc isEqual*[ElementT](this: NCollectionVec4[ElementT]; theOther: NCollectionVec4): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "NCollection_Vec4.hxx".}
proc `==`*[ElementT](this: var NCollectionVec4[ElementT]; theOther: NCollectionVec4): bool {.
    cdecl, importcpp: "(# == #)", header: "NCollection_Vec4.hxx".}
proc `==`*[ElementT](this: NCollectionVec4[ElementT]; theOther: NCollectionVec4): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "NCollection_Vec4.hxx".}
proc getData*[ElementT](this: NCollectionVec4[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "GetData", header: "NCollection_Vec4.hxx".}
proc changeData*[ElementT](this: var NCollectionVec4[ElementT]): ptr ElementT {.cdecl,
    importcpp: "ChangeData", header: "NCollection_Vec4.hxx".}
converter `constElementT*`*[ElementT](this: NCollectionVec4[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "NCollection_Vec4::operator constElement_t*",
    header: "NCollection_Vec4.hxx".}
converter `elementT*`*[ElementT](this: var NCollectionVec4[ElementT]): ptr ElementT {.
    cdecl, importcpp: "NCollection_Vec4::operator Element_t*", header: "NCollection_Vec4.hxx".}
proc `+=`*[ElementT](this: var NCollectionVec4[ElementT]; theAdd: NCollectionVec4) {.
    cdecl, importcpp: "(# += #)", header: "NCollection_Vec4.hxx".}
proc `-`*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "(- #)", header: "NCollection_Vec4.hxx".}
proc `-=`*[ElementT](this: var NCollectionVec4[ElementT]; theDec: NCollectionVec4) {.
    cdecl, importcpp: "(# -= #)", header: "NCollection_Vec4.hxx".}
proc `*=`*[ElementT](this: var NCollectionVec4[ElementT]; theRight: NCollectionVec4) {.
    cdecl, importcpp: "(# *= #)", header: "NCollection_Vec4.hxx".}
proc multiply*[ElementT](this: var NCollectionVec4[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "Multiply", header: "NCollection_Vec4.hxx".}
proc `*=`*[ElementT](this: var NCollectionVec4[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "(# *= #)", header: "NCollection_Vec4.hxx".}
proc `*`*[ElementT](this: NCollectionVec4[ElementT]; theFactor: ElementT): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "(# * #)", header: "NCollection_Vec4.hxx".}
proc multiplied*[ElementT](this: NCollectionVec4[ElementT]; theFactor: ElementT): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "Multiplied", header: "NCollection_Vec4.hxx".}
proc cwiseMin*[ElementT](this: NCollectionVec4[ElementT]; theVec: NCollectionVec4): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "cwiseMin", header: "NCollection_Vec4.hxx".}
proc cwiseMax*[ElementT](this: NCollectionVec4[ElementT]; theVec: NCollectionVec4): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "cwiseMax", header: "NCollection_Vec4.hxx".}
proc cwiseAbs*[ElementT](this: NCollectionVec4[ElementT]): NCollectionVec4 {.
    noSideEffect, cdecl, importcpp: "cwiseAbs", header: "NCollection_Vec4.hxx".}
proc maxComp*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "maxComp", header: "NCollection_Vec4.hxx".}
proc minComp*[ElementT](this: NCollectionVec4[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "minComp", header: "NCollection_Vec4.hxx".}
proc dot*[ElementT](this: NCollectionVec4[ElementT]; theOther: NCollectionVec4): ElementT {.
    noSideEffect, cdecl, importcpp: "Dot", header: "NCollection_Vec4.hxx".}
proc `/=`*[ElementT](this: var NCollectionVec4[ElementT]; theInvFactor: ElementT) {.
    cdecl, importcpp: "(# /= #)", header: "NCollection_Vec4.hxx".}
proc `/=`*[ElementT](this: var NCollectionVec4[ElementT]; theRight: NCollectionVec4) {.
    cdecl, importcpp: "(# /= #)", header: "NCollection_Vec4.hxx".}
proc `/`*[ElementT](this: var NCollectionVec4[ElementT]; theInvFactor: ElementT): NCollectionVec4 {.
    cdecl, importcpp: "(# / #)", header: "NCollection_Vec4.hxx".}
proc dumpJson*[ElementT](this: NCollectionVec4[ElementT];
                        theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "NCollection_Vec4.hxx".}
## ignored statement

