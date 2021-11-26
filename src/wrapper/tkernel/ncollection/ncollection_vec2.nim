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

## ! Auxiliary macros to define couple of similar access components as vector methods.
## ! @return 2 components by their names in specified order
## ! Defines the 2D-vector template.
## ! The main target for this class - to handle raw low-level arrays (from/to graphic driver etc.).

type
  NCollectionVec2*[ElementT] {.importcpp: "NCollection_Vec2<\'0>",
                              header: "NCollection_Vec2.hxx", bycopy.} = object ## !
                                                                           ## Returns the
                                                                           ## number of
                                                                           ## components.


proc length*[ElementT](): cint {.cdecl, importcpp: "NCollection_Vec2::Length(@)",
                              dynlib: tkernel.}
proc newNCollectionVec2*[ElementT](): NCollectionVec2[ElementT] {.cdecl,
    constructor, importcpp: "NCollection_Vec2<\'*0>(@)", dynlib: tkernel.}
proc newNCollectionVec2*[ElementT](theXY: ElementT): NCollectionVec2[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec2<\'*0>(@)", dynlib: tkernel.}
proc newNCollectionVec2*[ElementT](theX: ElementT; theY: ElementT): NCollectionVec2[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec2<\'*0>(@)",
               dynlib: tkernel.}
proc newNCollectionVec2*[ElementT; OtherElementT](
    theOtherVec2: NCollectionVec2[OtherElementT]): NCollectionVec2[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec2<\'*0>(@)", dynlib: tkernel.}
proc setValues*[ElementT](this: var NCollectionVec2[ElementT]; theX: ElementT;
                         theY: ElementT) {.cdecl, importcpp: "SetValues",
    dynlib: tkernel.}
proc x*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "x", dynlib: tkernel.}
proc y*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "y", dynlib: tkernel.}
proc xy*[ElementT](this: NCollectionVec2[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xy", dynlib: tkernel.}
proc yx*[ElementT](this: NCollectionVec2[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yx", dynlib: tkernel.}
proc x*[ElementT](this: var NCollectionVec2[ElementT]): var ElementT {.cdecl,
    importcpp: "x", dynlib: tkernel.}
proc y*[ElementT](this: var NCollectionVec2[ElementT]): var ElementT {.cdecl,
    importcpp: "y", dynlib: tkernel.}
proc isEqual*[ElementT](this: NCollectionVec2[ElementT]; theOther: NCollectionVec2): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*[ElementT](this: var NCollectionVec2[ElementT]; theOther: NCollectionVec2): bool {.
    cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc `==`*[ElementT](this: NCollectionVec2[ElementT]; theOther: NCollectionVec2): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc getData*[ElementT](this: NCollectionVec2[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "GetData", dynlib: tkernel.}
proc changeData*[ElementT](this: var NCollectionVec2[ElementT]): ptr ElementT {.cdecl,
    importcpp: "ChangeData", dynlib: tkernel.}
converter `constElementT*`*[ElementT](this: NCollectionVec2[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "NCollection_Vec2::operator constElement_t*",
    dynlib: tkernel.}
converter `elementT*`*[ElementT](this: var NCollectionVec2[ElementT]): ptr ElementT {.
    cdecl, importcpp: "NCollection_Vec2::operator Element_t*", dynlib: tkernel.}
proc multiply*[ElementT](this: var NCollectionVec2[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "Multiply", dynlib: tkernel.}
proc multiplied*[ElementT](this: NCollectionVec2[ElementT]; theFactor: ElementT): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc cwiseMin*[ElementT](this: NCollectionVec2[ElementT]; theVec: NCollectionVec2): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "cwiseMin", dynlib: tkernel.}
proc cwiseMax*[ElementT](this: NCollectionVec2[ElementT]; theVec: NCollectionVec2): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "cwiseMax", dynlib: tkernel.}
proc cwiseAbs*[ElementT](this: NCollectionVec2[ElementT]): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "cwiseAbs", dynlib: tkernel.}
proc maxComp*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "maxComp", dynlib: tkernel.}
proc minComp*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "minComp", dynlib: tkernel.}
proc `*=`*[ElementT](this: var NCollectionVec2[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `/=`*[ElementT](this: var NCollectionVec2[ElementT]; theInvFactor: ElementT) {.
    cdecl, importcpp: "(# /= #)", dynlib: tkernel.}
proc `/=`*[ElementT](this: var NCollectionVec2[ElementT]; theRight: NCollectionVec2) {.
    cdecl, importcpp: "(# /= #)", dynlib: tkernel.}
proc `*`*[ElementT](this: NCollectionVec2[ElementT]; theFactor: ElementT): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc `/`*[ElementT](this: NCollectionVec2[ElementT]; theInvFactor: ElementT): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "(# / #)", dynlib: tkernel.}
proc dot*[ElementT](this: NCollectionVec2[ElementT]; theOther: NCollectionVec2): ElementT {.
    noSideEffect, cdecl, importcpp: "Dot", dynlib: tkernel.}
proc modulus*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "Modulus", dynlib: tkernel.}
proc squareModulus*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.
    noSideEffect, cdecl, importcpp: "SquareModulus", dynlib: tkernel.}
proc dx*[ElementT](): NCollectionVec2 {.cdecl, importcpp: "NCollection_Vec2::DX(@)",
                                     dynlib: tkernel.}
proc dy*[ElementT](): NCollectionVec2 {.cdecl, importcpp: "NCollection_Vec2::DY(@)",
                                     dynlib: tkernel.}
proc dumpJson*[ElementT](this: NCollectionVec2[ElementT];
                        theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkernel.}