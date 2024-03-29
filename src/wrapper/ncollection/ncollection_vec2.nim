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

## ! Auxiliary macros to define couple of similar access components as vector methods.
## ! @return 2 components by their names in specified order
## ! Defines the 2D-vector template.
## ! The main target for this class - to handle raw low-level arrays (from/to graphic driver etc.).



proc length*[ElementT](): cint {.cdecl, importcpp: "NCollection_Vec2::Length(@)",
                              header: "NCollection_Vec2.hxx".}
proc newNCollectionVec2*[ElementT](): NCollectionVec2[ElementT] {.cdecl,
    constructor, importcpp: "NCollection_Vec2<\'*0>(@)", header: "NCollection_Vec2.hxx".}
proc newNCollectionVec2*[ElementT](theXY: ElementT): NCollectionVec2[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec2<\'*0>(@)", header: "NCollection_Vec2.hxx".}
proc newNCollectionVec2*[ElementT](theX: ElementT; theY: ElementT): NCollectionVec2[
    ElementT] {.cdecl, constructor, importcpp: "NCollection_Vec2<\'*0>(@)",
               header: "NCollection_Vec2.hxx".}
proc newNCollectionVec2*[ElementT; OtherElementT](
    theOtherVec2: NCollectionVec2[OtherElementT]): NCollectionVec2[ElementT] {.
    cdecl, constructor, importcpp: "NCollection_Vec2<\'*0>(@)", header: "NCollection_Vec2.hxx".}
proc setValues*[ElementT](this: var NCollectionVec2[ElementT]; theX: ElementT;
                         theY: ElementT) {.cdecl, importcpp: "SetValues",
    header: "NCollection_Vec2.hxx".}
proc x*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "x", header: "NCollection_Vec2.hxx".}
proc y*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect, cdecl,
    importcpp: "y", header: "NCollection_Vec2.hxx".}
proc xy*[ElementT](this: NCollectionVec2[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "xy", header: "NCollection_Vec2.hxx".}
proc yx*[ElementT](this: NCollectionVec2[ElementT]): NCollectionVec2[ElementT] {.
    noSideEffect, cdecl, importcpp: "yx", header: "NCollection_Vec2.hxx".}
proc x*[ElementT](this: var NCollectionVec2[ElementT]): var ElementT {.cdecl,
    importcpp: "x", header: "NCollection_Vec2.hxx".}
proc y*[ElementT](this: var NCollectionVec2[ElementT]): var ElementT {.cdecl,
    importcpp: "y", header: "NCollection_Vec2.hxx".}
proc isEqual*[ElementT](this: NCollectionVec2[ElementT]; theOther: NCollectionVec2): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "NCollection_Vec2.hxx".}
proc `==`*[ElementT](this: var NCollectionVec2[ElementT]; theOther: NCollectionVec2): bool {.
    cdecl, importcpp: "(# == #)", header: "NCollection_Vec2.hxx".}
proc `==`*[ElementT](this: NCollectionVec2[ElementT]; theOther: NCollectionVec2): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "NCollection_Vec2.hxx".}
proc getData*[ElementT](this: NCollectionVec2[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "GetData", header: "NCollection_Vec2.hxx".}
proc changeData*[ElementT](this: var NCollectionVec2[ElementT]): ptr ElementT {.cdecl,
    importcpp: "ChangeData", header: "NCollection_Vec2.hxx".}
converter `constElementT*`*[ElementT](this: NCollectionVec2[ElementT]): ptr ElementT {.
    noSideEffect, cdecl, importcpp: "NCollection_Vec2::operator constElement_t*",
    header: "NCollection_Vec2.hxx".}
converter `elementT*`*[ElementT](this: var NCollectionVec2[ElementT]): ptr ElementT {.
    cdecl, importcpp: "NCollection_Vec2::operator Element_t*", header: "NCollection_Vec2.hxx".}
proc multiply*[ElementT](this: var NCollectionVec2[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "Multiply", header: "NCollection_Vec2.hxx".}
proc multiplied*[ElementT](this: NCollectionVec2[ElementT]; theFactor: ElementT): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "Multiplied", header: "NCollection_Vec2.hxx".}
proc cwiseMin*[ElementT](this: NCollectionVec2[ElementT]; theVec: NCollectionVec2): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "cwiseMin", header: "NCollection_Vec2.hxx".}
proc cwiseMax*[ElementT](this: NCollectionVec2[ElementT]; theVec: NCollectionVec2): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "cwiseMax", header: "NCollection_Vec2.hxx".}
proc cwiseAbs*[ElementT](this: NCollectionVec2[ElementT]): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "cwiseAbs", header: "NCollection_Vec2.hxx".}
proc maxComp*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "maxComp", header: "NCollection_Vec2.hxx".}
proc minComp*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "minComp", header: "NCollection_Vec2.hxx".}
proc `*=`*[ElementT](this: var NCollectionVec2[ElementT]; theFactor: ElementT) {.
    cdecl, importcpp: "(# *= #)", header: "NCollection_Vec2.hxx".}
proc `/=`*[ElementT](this: var NCollectionVec2[ElementT]; theInvFactor: ElementT) {.
    cdecl, importcpp: "(# /= #)", header: "NCollection_Vec2.hxx".}
proc `/=`*[ElementT](this: var NCollectionVec2[ElementT]; theRight: NCollectionVec2) {.
    cdecl, importcpp: "(# /= #)", header: "NCollection_Vec2.hxx".}
proc `*`*[ElementT](this: NCollectionVec2[ElementT]; theFactor: ElementT): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "(# * #)", header: "NCollection_Vec2.hxx".}
proc `/`*[ElementT](this: NCollectionVec2[ElementT]; theInvFactor: ElementT): NCollectionVec2 {.
    noSideEffect, cdecl, importcpp: "(# / #)", header: "NCollection_Vec2.hxx".}
proc dot*[ElementT](this: NCollectionVec2[ElementT]; theOther: NCollectionVec2): ElementT {.
    noSideEffect, cdecl, importcpp: "Dot", header: "NCollection_Vec2.hxx".}
proc modulus*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.noSideEffect,
    cdecl, importcpp: "Modulus", header: "NCollection_Vec2.hxx".}
proc squareModulus*[ElementT](this: NCollectionVec2[ElementT]): ElementT {.
    noSideEffect, cdecl, importcpp: "SquareModulus", header: "NCollection_Vec2.hxx".}
proc dx*[ElementT](): NCollectionVec2 {.cdecl, importcpp: "NCollection_Vec2::DX(@)",
                                     header: "NCollection_Vec2.hxx".}
proc dy*[ElementT](): NCollectionVec2 {.cdecl, importcpp: "NCollection_Vec2::DY(@)",
                                     header: "NCollection_Vec2.hxx".}
proc dumpJson*[ElementT](this: NCollectionVec2[ElementT];
                        theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "NCollection_Vec2.hxx".}
