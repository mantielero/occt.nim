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
  NCollectionVec3*[ElementT] {.importcpp: "NCollection_Vec3<\'0>",
                              header: "NCollection_Vec3.hxx", bycopy.} = object ## !
                                                                           ## Returns the
                                                                           ## number of
                                                                           ## components.
    ## !< define the vector as array to avoid structure alignment issues


proc length*[ElementT](): cint {.cdecl, importcpp: "NCollection_Vec3::Length(@)",
                              dynlib: tkernel.}
proc constructNCollectionVec3*[ElementT](): NCollectionVec3[ElementT] {.cdecl,
    constructor, importcpp: "NCollection_Vec3<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionVec3*[ElementT](theValue: ElementT): NCollectionVec3[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)",
               dynlib: tkernel.}
proc constructNCollectionVec3*[ElementT](theX: ElementT; theY: ElementT;
                                        theZ: ElementT): NCollectionVec3[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)", dynlib: tkernel.}
proc constructNCollectionVec3*[ElementT](theVec2: NCollectionVec2[ElementT];
                                        theZ: ElementT = elementT(0)): NCollectionVec3[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)",
               dynlib: tkernel.}
proc constructNCollectionVec3*[ElementT; OtherElementT](
    theOtherVec3: NCollectionVec3[OtherElementT]): NCollectionVec3[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)", dynlib: tkernel.}
proc setValues*[ElementT](this: var NCollectionVec3[ElementT]; theX: ElementT;
                         theY: ElementT; theZ: ElementT) {.cdecl,
    importcpp: "SetValues", dynlib: tkernel.}
proc setValues*[ElementT](this: var NCollectionVec3[ElementT];
                         theVec2: NCollectionVec2[ElementT]; theZ: ElementT) {.
    cdecl, importcpp: "SetValues", dynlib: tkernel.}
proc x*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "x", dynlib: tkernel.}
proc r*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "r", dynlib: tkernel.}
proc y*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "y", dynlib: tkernel.}
proc g*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "g", dynlib: tkernel.}
proc z*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "z", dynlib: tkernel.}
proc b*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "b", dynlib: tkernel.}
proc xy*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xy", dynlib: tkernel.}
proc yx*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yx", dynlib: tkernel.}
proc xz*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xz", dynlib: tkernel.}
proc zx*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zx", dynlib: tkernel.}
proc yz*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yz", dynlib: tkernel.}
proc zy*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zy", dynlib: tkernel.}
proc xyz*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xyz", dynlib: tkernel.}
proc xzy*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xzy", dynlib: tkernel.}
proc yxz*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yxz", dynlib: tkernel.}
proc yzx*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yzx", dynlib: tkernel.}
proc zyx*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zyx", dynlib: tkernel.}
proc zxy*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zxy", dynlib: tkernel.}
proc x*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "x", dynlib: tkernel.}
proc r*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "r", dynlib: tkernel.}
proc y*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "y", dynlib: tkernel.}
proc g*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "g", dynlib: tkernel.}
proc z*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "z", dynlib: tkernel.}
proc b*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "b", dynlib: tkernel.}
proc isEqual*[ElementT](this: NCollectionVec3[ElementT]; theOther: NCollectionVec3): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*[ElementT](this: var NCollectionVec3[ElementT]; theOther: NCollectionVec3): bool {.
    cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc `==`*[ElementT](this: NCollectionVec3[ElementT]; theOther: NCollectionVec3): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc getData*[ElementT](this: NCollectionVec3[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "GetData", dynlib: tkernel.}
proc changeData*[ElementT](this: var NCollectionVec3[ElementT]): ptr ElementT {.cdecl,
    importcpp: "ChangeData", dynlib: tkernel.}
converter `constElementT*`*[ElementT](this: NCollectionVec3[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "NCollection_Vec3::operator constElement_t*",
    dynlib: tkernel.}
converter `elementT*`*[ElementT](this: var NCollectionVec3[ElementT]): ptr ElementT {.
    cdecl, importcpp: "NCollection_Vec3::operator Element_t*", dynlib: tkernel.}
proc `+=`*[ElementT](this: var NCollectionVec3[ElementT]; theAdd: NCollectionVec3) {.
    cdecl, importcpp: "(# += #)", dynlib: tkernel.}
proc `-`*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "(- #)", dynlib: tkernel.}
proc `-=`*[ElementT](this: var NCollectionVec3[ElementT]; theDec: NCollectionVec3) {.
    cdecl, importcpp: "(# -= #)", dynlib: tkernel.}
proc multiply*[ElementT](this: var NCollectionVec3[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "Multiply", dynlib: tkernel.}
proc `*=`*[ElementT](this: var NCollectionVec3[ElementT]; theRight: NCollectionVec3) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `*=`*[ElementT](this: var NCollectionVec3[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `*`*[ElementT](this: NCollectionVec3[ElementT]; theFactor: ElementT): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc multiplied*[ElementT](this: NCollectionVec3[ElementT]; theFactor: ElementT): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc cwiseMin*[ElementT](this: NCollectionVec3[ElementT]; theVec: NCollectionVec3): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "cwiseMin", dynlib: tkernel.}
proc cwiseMax*[ElementT](this: NCollectionVec3[ElementT]; theVec: NCollectionVec3): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "cwiseMax", dynlib: tkernel.}
proc cwiseAbs*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "cwiseAbs", dynlib: tkernel.}
proc maxComp*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "maxComp", dynlib: tkernel.}
proc minComp*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "minComp", dynlib: tkernel.}
proc `/=`*[ElementT](this: var NCollectionVec3[ElementT]; theInvFactor: ElementT) {.
    cdecl, importcpp: "(# /= #)", dynlib: tkernel.}
proc `/=`*[ElementT](this: var NCollectionVec3[ElementT]; theRight: NCollectionVec3) {.
    cdecl, importcpp: "(# /= #)", dynlib: tkernel.}
proc `/`*[ElementT](this: NCollectionVec3[ElementT]; theInvFactor: ElementT): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "(# / #)", dynlib: tkernel.}
proc dot*[ElementT](this: NCollectionVec3[ElementT]; theOther: NCollectionVec3): ElementT {.
    noSideEffect, cdecl, importcpp: "Dot", dynlib: tkernel.}
proc modulus*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "Modulus", dynlib: tkernel.}
proc squareModulus*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.
    noSideEffect, cdecl, importcpp: "SquareModulus", dynlib: tkernel.}
proc normalize*[ElementT](this: var NCollectionVec3[ElementT]) {.cdecl,
    importcpp: "Normalize", dynlib: tkernel.}
proc normalized*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "Normalized", dynlib: tkernel.}
proc cross*[ElementT](theVec1: NCollectionVec3; theVec2: NCollectionVec3): NCollectionVec3 {.
    cdecl, importcpp: "NCollection_Vec3::Cross(@)", dynlib: tkernel.}
proc getLERP*[ElementT](theFrom: NCollectionVec3; theTo: NCollectionVec3;
                       theT: ElementT): NCollectionVec3 {.cdecl,
    importcpp: "NCollection_Vec3::GetLERP(@)", dynlib: tkernel.}
proc dx*[ElementT](): NCollectionVec3 {.cdecl, importcpp: "NCollection_Vec3::DX(@)",
                                     dynlib: tkernel.}
proc dy*[ElementT](): NCollectionVec3 {.cdecl, importcpp: "NCollection_Vec3::DY(@)",
                                     dynlib: tkernel.}
proc dz*[ElementT](): NCollectionVec3 {.cdecl, importcpp: "NCollection_Vec3::DZ(@)",
                                     dynlib: tkernel.}
proc dumpJson*[ElementT](this: NCollectionVec3[ElementT];
                        theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkernel.}