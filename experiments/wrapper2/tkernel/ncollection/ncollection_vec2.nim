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

## ! Auxiliary macros to define couple of similar access components as vector methods.
## ! @return 2 components by their names in specified order
## ! Defines the 2D-vector template.
## ! The main target for this class - to handle raw low-level arrays (from/to graphic driver etc.).

type
  NCollection_Vec2*[Element_t] {.importcpp: "NCollection_Vec2<\'0>",
                                header: "NCollection_Vec2.hxx", bycopy.} = object ## !
                                                                             ## Returns the
                                                                             ## number of
                                                                             ## components.


proc Length*[Element_t](): cint {.cdecl, importcpp: "NCollection_Vec2::Length(@)",
                               dynlib: tkernel.}
proc constructNCollection_Vec2*[Element_t](): NCollection_Vec2[Element_t] {.cdecl,
    constructor, importcpp: "NCollection_Vec2<\'*0>(@)", dynlib: tkernel.}
proc constructNCollection_Vec2*[Element_t](theXY: Element_t): NCollection_Vec2[
    Element_t] {.cdecl, constructor, importcpp: "NCollection_Vec2<\'*0>(@)",
                dynlib: tkernel.}
proc constructNCollection_Vec2*[Element_t](theX: Element_t; theY: Element_t): NCollection_Vec2[
    Element_t] {.cdecl, constructor, importcpp: "NCollection_Vec2<\'*0>(@)",
                dynlib: tkernel.}
proc constructNCollection_Vec2*[Element_t; OtherElement_t](
    theOtherVec2: NCollection_Vec2[OtherElement_t]): NCollection_Vec2[Element_t] {.
    cdecl, constructor, importcpp: "NCollection_Vec2<\'*0>(@)", dynlib: tkernel.}
proc SetValues*[Element_t](this: var NCollection_Vec2[Element_t]; theX: Element_t;
                          theY: Element_t) {.cdecl, importcpp: "SetValues",
    dynlib: tkernel.}
proc x*[Element_t](this: NCollection_Vec2[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "x", dynlib: tkernel.}
proc y*[Element_t](this: NCollection_Vec2[Element_t]): Element_t {.noSideEffect,
    cdecl, importcpp: "y", dynlib: tkernel.}
proc xy*[Element_t](this: NCollection_Vec2[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "xy", dynlib: tkernel.}
proc yx*[Element_t](this: NCollection_Vec2[Element_t]): NCollection_Vec2[Element_t] {.
    noSideEffect, cdecl, importcpp: "yx", dynlib: tkernel.}
proc x*[Element_t](this: var NCollection_Vec2[Element_t]): var Element_t {.cdecl,
    importcpp: "x", dynlib: tkernel.}
proc y*[Element_t](this: var NCollection_Vec2[Element_t]): var Element_t {.cdecl,
    importcpp: "y", dynlib: tkernel.}
proc IsEqual*[Element_t](this: NCollection_Vec2[Element_t];
                        theOther: NCollection_Vec2): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*[Element_t](this: var NCollection_Vec2[Element_t];
                     theOther: NCollection_Vec2): bool {.cdecl,
    importcpp: "(# == #)", dynlib: tkernel.}
proc `==`*[Element_t](this: NCollection_Vec2[Element_t]; theOther: NCollection_Vec2): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc GetData*[Element_t](this: NCollection_Vec2[Element_t]): ptr Element_t {.
    noSideEffect, cdecl, importcpp: "GetData", dynlib: tkernel.}
proc ChangeData*[Element_t](this: var NCollection_Vec2[Element_t]): ptr Element_t {.
    cdecl, importcpp: "ChangeData", dynlib: tkernel.}
converter `constElement_t*`*[Element_t](this: NCollection_Vec2[Element_t]): ptr Element_t {.
    noSideEffect, cdecl, importcpp: "NCollection_Vec2::operator constElement_t*",
    dynlib: tkernel.}
converter `Element_t*`*[Element_t](this: var NCollection_Vec2[Element_t]): ptr Element_t {.
    cdecl, importcpp: "NCollection_Vec2::operator Element_t*", dynlib: tkernel.}
proc Multiply*[Element_t](this: var NCollection_Vec2[Element_t];
                         theFactor: Element_t) {.cdecl, importcpp: "Multiply",
    dynlib: tkernel.}
proc Multiplied*[Element_t](this: NCollection_Vec2[Element_t]; theFactor: Element_t): NCollection_Vec2 {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkernel.}
proc cwiseMin*[Element_t](this: NCollection_Vec2[Element_t];
                         theVec: NCollection_Vec2): NCollection_Vec2 {.
    noSideEffect, cdecl, importcpp: "cwiseMin", dynlib: tkernel.}
proc cwiseMax*[Element_t](this: NCollection_Vec2[Element_t];
                         theVec: NCollection_Vec2): NCollection_Vec2 {.
    noSideEffect, cdecl, importcpp: "cwiseMax", dynlib: tkernel.}
proc cwiseAbs*[Element_t](this: NCollection_Vec2[Element_t]): NCollection_Vec2 {.
    noSideEffect, cdecl, importcpp: "cwiseAbs", dynlib: tkernel.}
proc maxComp*[Element_t](this: NCollection_Vec2[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "maxComp", dynlib: tkernel.}
proc minComp*[Element_t](this: NCollection_Vec2[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "minComp", dynlib: tkernel.}
proc `*=`*[Element_t](this: var NCollection_Vec2[Element_t]; theFactor: Element_t) {.
    cdecl, importcpp: "(# *= #)", dynlib: tkernel.}
proc `/=`*[Element_t](this: var NCollection_Vec2[Element_t]; theInvFactor: Element_t) {.
    cdecl, importcpp: "(# /= #)", dynlib: tkernel.}
proc `/=`*[Element_t](this: var NCollection_Vec2[Element_t];
                     theRight: NCollection_Vec2) {.cdecl, importcpp: "(# /= #)",
    dynlib: tkernel.}
proc `*`*[Element_t](this: NCollection_Vec2[Element_t]; theFactor: Element_t): NCollection_Vec2 {.
    noSideEffect, cdecl, importcpp: "(# * #)", dynlib: tkernel.}
proc `/`*[Element_t](this: NCollection_Vec2[Element_t]; theInvFactor: Element_t): NCollection_Vec2 {.
    noSideEffect, cdecl, importcpp: "(# / #)", dynlib: tkernel.}
proc Dot*[Element_t](this: NCollection_Vec2[Element_t]; theOther: NCollection_Vec2): Element_t {.
    noSideEffect, cdecl, importcpp: "Dot", dynlib: tkernel.}
proc Modulus*[Element_t](this: NCollection_Vec2[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "Modulus", dynlib: tkernel.}
proc SquareModulus*[Element_t](this: NCollection_Vec2[Element_t]): Element_t {.
    noSideEffect, cdecl, importcpp: "SquareModulus", dynlib: tkernel.}
proc DX*[Element_t](): NCollection_Vec2 {.cdecl,
                                       importcpp: "NCollection_Vec2::DX(@)",
                                       dynlib: tkernel.}
proc DY*[Element_t](): NCollection_Vec2 {.cdecl,
                                       importcpp: "NCollection_Vec2::DY(@)",
                                       dynlib: tkernel.}
proc DumpJson*[Element_t](this: NCollection_Vec2[Element_t];
                         theOStream: var Standard_OStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkernel.}