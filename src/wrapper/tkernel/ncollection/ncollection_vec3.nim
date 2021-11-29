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


#proc length*[ElementT](): cint {.cdecl, importcpp: "NCollection_Vec3::Length(@)",
#                              header: "NCollection_Vec3.hxx".}
proc newNCollectionVec3*[ElementT](): NCollectionVec3[ElementT] {.cdecl,
    constructor, importcpp: "NCollection_Vec3<\'*0>(@)", header: "NCollection_Vec3.hxx".}
proc newNCollectionVec3*[ElementT](theValue: ElementT): NCollectionVec3[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)", header: "NCollection_Vec3.hxx".}
proc newNCollectionVec3*[ElementT](theX: ElementT; theY: ElementT; theZ: ElementT): NCollectionVec3[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)",
               header: "NCollection_Vec3.hxx".}
proc newNCollectionVec3*[ElementT](theVec2: NCollectionVec2[ElementT];
                                  theZ: ElementT = ElementT(0)): NCollectionVec3[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)",
               header: "NCollection_Vec3.hxx".}
proc newNCollectionVec3*[ElementT; OtherElementT](
    theOtherVec3: NCollectionVec3[OtherElementT]): NCollectionVec3[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec3<\'*0>(@)", header: "NCollection_Vec3.hxx".}
proc setValues*[ElementT](this: var NCollectionVec3[ElementT]; theX: ElementT;
                         theY: ElementT; theZ: ElementT) {.cdecl,
    importcpp: "SetValues", header: "NCollection_Vec3.hxx".}
proc setValues*[ElementT](this: var NCollectionVec3[ElementT];
                         theVec2: NCollectionVec2[ElementT]; theZ: ElementT) {.
    cdecl, importcpp: "SetValues", header: "NCollection_Vec3.hxx".}
proc x*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "x", header: "NCollection_Vec3.hxx".}
proc r*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "r", header: "NCollection_Vec3.hxx".}
proc y*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "y", header: "NCollection_Vec3.hxx".}
proc g*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "g", header: "NCollection_Vec3.hxx".}
proc z*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "z", header: "NCollection_Vec3.hxx".}
proc b*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "b", header: "NCollection_Vec3.hxx".}
proc xy*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xy", header: "NCollection_Vec3.hxx".}
proc yx*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yx", header: "NCollection_Vec3.hxx".}
proc xz*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xz", header: "NCollection_Vec3.hxx".}
proc zx*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zx", header: "NCollection_Vec3.hxx".}
proc yz*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yz", header: "NCollection_Vec3.hxx".}
proc zy*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "zy", header: "NCollection_Vec3.hxx".}
proc xyz*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xyz", header: "NCollection_Vec3.hxx".}
proc xzy*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "xzy", header: "NCollection_Vec3.hxx".}
proc yxz*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yxz", header: "NCollection_Vec3.hxx".}
proc yzx*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "yzx", header: "NCollection_Vec3.hxx".}
proc zyx*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zyx", header: "NCollection_Vec3.hxx".}
proc zxy*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3[ElementT] {.
    noSideEffect, cdecl, importcpp: "zxy", header: "NCollection_Vec3.hxx".}
proc x*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "x", header: "NCollection_Vec3.hxx".}
proc r*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "r", header: "NCollection_Vec3.hxx".}
proc y*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "y", header: "NCollection_Vec3.hxx".}
proc g*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "g", header: "NCollection_Vec3.hxx".}
proc z*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "z", header: "NCollection_Vec3.hxx".}
proc b*[ElementT](this: var NCollectionVec3[ElementT]): var ElementT {.cdecl,
    importcpp: "b", header: "NCollection_Vec3.hxx".}
proc isEqual*[ElementT](this: NCollectionVec3[ElementT]; theOther: NCollectionVec3): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "NCollection_Vec3.hxx".}
proc `==`*[ElementT](this: var NCollectionVec3[ElementT]; theOther: NCollectionVec3): bool {.
    cdecl, importcpp: "(# == #)", header: "NCollection_Vec3.hxx".}
proc `==`*[ElementT](this: NCollectionVec3[ElementT]; theOther: NCollectionVec3): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "NCollection_Vec3.hxx".}
proc getData*[ElementT](this: NCollectionVec3[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "GetData", header: "NCollection_Vec3.hxx".}
proc changeData*[ElementT](this: var NCollectionVec3[ElementT]): ptr ElementT {.cdecl,
    importcpp: "ChangeData", header: "NCollection_Vec3.hxx".}
converter `constElementT*`*[ElementT](this: NCollectionVec3[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "NCollection_Vec3::operator constElement_t*",
    header: "NCollection_Vec3.hxx".}
converter `elementT*`*[ElementT](this: var NCollectionVec3[ElementT]): ptr ElementT {.
    cdecl, importcpp: "NCollection_Vec3::operator Element_t*", header: "NCollection_Vec3.hxx".}
proc `+=`*[ElementT](this: var NCollectionVec3[ElementT]; theAdd: NCollectionVec3) {.
    cdecl, importcpp: "(# += #)", header: "NCollection_Vec3.hxx".}
proc `-`*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "(- #)", header: "NCollection_Vec3.hxx".}
proc `-=`*[ElementT](this: var NCollectionVec3[ElementT]; theDec: NCollectionVec3) {.
    cdecl, importcpp: "(# -= #)", header: "NCollection_Vec3.hxx".}
proc multiply*[ElementT](this: var NCollectionVec3[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "Multiply", header: "NCollection_Vec3.hxx".}
proc `*=`*[ElementT](this: var NCollectionVec3[ElementT]; theRight: NCollectionVec3) {.
    cdecl, importcpp: "(# *= #)", header: "NCollection_Vec3.hxx".}
proc `*=`*[ElementT](this: var NCollectionVec3[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "(# *= #)", header: "NCollection_Vec3.hxx".}
proc `*`*[ElementT](this: NCollectionVec3[ElementT]; theFactor: ElementT): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "(# * #)", header: "NCollection_Vec3.hxx".}
proc multiplied*[ElementT](this: NCollectionVec3[ElementT]; theFactor: ElementT): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "Multiplied", header: "NCollection_Vec3.hxx".}
proc cwiseMin*[ElementT](this: NCollectionVec3[ElementT]; theVec: NCollectionVec3): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "cwiseMin", header: "NCollection_Vec3.hxx".}
proc cwiseMax*[ElementT](this: NCollectionVec3[ElementT]; theVec: NCollectionVec3): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "cwiseMax", header: "NCollection_Vec3.hxx".}
proc cwiseAbs*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "cwiseAbs", header: "NCollection_Vec3.hxx".}
proc maxComp*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "maxComp", header: "NCollection_Vec3.hxx".}
proc minComp*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "minComp", header: "NCollection_Vec3.hxx".}
proc `/=`*[ElementT](this: var NCollectionVec3[ElementT]; theInvFactor: ElementT) {.
    cdecl, importcpp: "(# /= #)", header: "NCollection_Vec3.hxx".}
proc `/=`*[ElementT](this: var NCollectionVec3[ElementT]; theRight: NCollectionVec3) {.
    cdecl, importcpp: "(# /= #)", header: "NCollection_Vec3.hxx".}
proc `/`*[ElementT](this: NCollectionVec3[ElementT]; theInvFactor: ElementT): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "(# / #)", header: "NCollection_Vec3.hxx".}
proc dot*[ElementT](this: NCollectionVec3[ElementT]; theOther: NCollectionVec3): ElementT {.
    noSideEffect, cdecl, importcpp: "Dot", header: "NCollection_Vec3.hxx".}
proc modulus*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "Modulus", header: "NCollection_Vec3.hxx".}
proc squareModulus*[ElementT](this: NCollectionVec3[ElementT]): ElementT {.
    noSideEffect, cdecl, importcpp: "SquareModulus", header: "NCollection_Vec3.hxx".}
proc normalize*[ElementT](this: var NCollectionVec3[ElementT]) {.cdecl,
    importcpp: "Normalize", header: "NCollection_Vec3.hxx".}
proc normalized*[ElementT](this: NCollectionVec3[ElementT]): NCollectionVec3 {.
    noSideEffect, cdecl, importcpp: "Normalized", header: "NCollection_Vec3.hxx".}
proc cross*[ElementT](theVec1: NCollectionVec3; theVec2: NCollectionVec3): NCollectionVec3 {.
    cdecl, importcpp: "NCollection_Vec3::Cross(@)", header: "NCollection_Vec3.hxx".}
proc getLERP*[ElementT](theFrom: NCollectionVec3; theTo: NCollectionVec3;
                       theT: ElementT): NCollectionVec3 {.cdecl,
    importcpp: "NCollection_Vec3::GetLERP(@)", header: "NCollection_Vec3.hxx".}
proc dxVec3*[ElementT](): NCollectionVec3 {.cdecl, importcpp: "NCollection_Vec3::DX(@)",
                                     header: "NCollection_Vec3.hxx".}
proc dyVec3*[ElementT](): NCollectionVec3 {.cdecl, importcpp: "NCollection_Vec3::DY(@)",
                                     header: "NCollection_Vec3.hxx".}
proc dzVec3*[ElementT](): NCollectionVec3 {.cdecl, importcpp: "NCollection_Vec3::DZ(@)",
                                     header: "NCollection_Vec3.hxx".}
proc dumpJson*[ElementT](this: NCollectionVec3[ElementT];
                        theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "NCollection_Vec3.hxx".}