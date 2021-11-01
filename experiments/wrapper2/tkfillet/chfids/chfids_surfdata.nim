##  Created on: 1993-11-26
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of ChFiDS_FaceInterference"
discard "forward decl of ChFiDS_CommonPoint"
discard "forward decl of gp_Pnt2d"
discard "forward decl of ChFiDS_SurfData"
type
  HandleChFiDS_SurfData* = Handle[ChFiDS_SurfData]

## ! data structure for all information related to  the
## ! fillet and to 2 faces vis a vis

type
  ChFiDS_SurfData* {.importcpp: "ChFiDS_SurfData", header: "ChFiDS_SurfData.hxx",
                    bycopy.} = object of StandardTransient


proc newChFiDS_SurfData*(): ChFiDS_SurfData {.cdecl, constructor,
    importcpp: "ChFiDS_SurfData(@)", dynlib: tkfillet.}
proc copy*(this: var ChFiDS_SurfData; other: Handle[ChFiDS_SurfData]) {.cdecl,
    importcpp: "Copy", dynlib: tkfillet.}
proc indexOfS1*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfS1", dynlib: tkfillet.}
proc indexOfS2*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfS2", dynlib: tkfillet.}
proc isOnCurve1*(this: ChFiDS_SurfData): bool {.noSideEffect, cdecl,
    importcpp: "IsOnCurve1", dynlib: tkfillet.}
proc isOnCurve2*(this: ChFiDS_SurfData): bool {.noSideEffect, cdecl,
    importcpp: "IsOnCurve2", dynlib: tkfillet.}
proc indexOfC1*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfC1", dynlib: tkfillet.}
proc indexOfC2*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfC2", dynlib: tkfillet.}
proc surf*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl, importcpp: "Surf",
                                      dynlib: tkfillet.}
proc orientation*(this: ChFiDS_SurfData): TopAbsOrientation {.noSideEffect, cdecl,
    importcpp: "Orientation", dynlib: tkfillet.}
proc interferenceOnS1*(this: ChFiDS_SurfData): ChFiDS_FaceInterference {.
    noSideEffect, cdecl, importcpp: "InterferenceOnS1", dynlib: tkfillet.}
proc interferenceOnS2*(this: ChFiDS_SurfData): ChFiDS_FaceInterference {.
    noSideEffect, cdecl, importcpp: "InterferenceOnS2", dynlib: tkfillet.}
proc vertexFirstOnS1*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    cdecl, importcpp: "VertexFirstOnS1", dynlib: tkfillet.}
proc vertexFirstOnS2*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    cdecl, importcpp: "VertexFirstOnS2", dynlib: tkfillet.}
proc vertexLastOnS1*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    cdecl, importcpp: "VertexLastOnS1", dynlib: tkfillet.}
proc vertexLastOnS2*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    cdecl, importcpp: "VertexLastOnS2", dynlib: tkfillet.}
proc changeIndexOfS1*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "ChangeIndexOfS1", dynlib: tkfillet.}
proc changeIndexOfS2*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "ChangeIndexOfS2", dynlib: tkfillet.}
proc changeSurf*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "ChangeSurf", dynlib: tkfillet.}
proc setIndexOfC1*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "SetIndexOfC1", dynlib: tkfillet.}
proc setIndexOfC2*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "SetIndexOfC2", dynlib: tkfillet.}
proc changeOrientation*(this: var ChFiDS_SurfData): var TopAbsOrientation {.cdecl,
    importcpp: "ChangeOrientation", dynlib: tkfillet.}
proc changeInterferenceOnS1*(this: var ChFiDS_SurfData): var ChFiDS_FaceInterference {.
    cdecl, importcpp: "ChangeInterferenceOnS1", dynlib: tkfillet.}
proc changeInterferenceOnS2*(this: var ChFiDS_SurfData): var ChFiDS_FaceInterference {.
    cdecl, importcpp: "ChangeInterferenceOnS2", dynlib: tkfillet.}
proc changeVertexFirstOnS1*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    cdecl, importcpp: "ChangeVertexFirstOnS1", dynlib: tkfillet.}
proc changeVertexFirstOnS2*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    cdecl, importcpp: "ChangeVertexFirstOnS2", dynlib: tkfillet.}
proc changeVertexLastOnS1*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.cdecl,
    importcpp: "ChangeVertexLastOnS1", dynlib: tkfillet.}
proc changeVertexLastOnS2*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.cdecl,
    importcpp: "ChangeVertexLastOnS2", dynlib: tkfillet.}
proc interference*(this: ChFiDS_SurfData; onS: cint): ChFiDS_FaceInterference {.
    noSideEffect, cdecl, importcpp: "Interference", dynlib: tkfillet.}
proc changeInterference*(this: var ChFiDS_SurfData; onS: cint): var ChFiDS_FaceInterference {.
    cdecl, importcpp: "ChangeInterference", dynlib: tkfillet.}
proc index*(this: ChFiDS_SurfData; ofS: cint): cint {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkfillet.}
proc vertex*(this: ChFiDS_SurfData; first: bool; onS: cint): ChFiDS_CommonPoint {.
    noSideEffect, cdecl, importcpp: "Vertex", dynlib: tkfillet.}
proc changeVertex*(this: var ChFiDS_SurfData; first: bool; onS: cint): var ChFiDS_CommonPoint {.
    cdecl, importcpp: "ChangeVertex", dynlib: tkfillet.}
proc isOnCurve*(this: ChFiDS_SurfData; onS: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsOnCurve", dynlib: tkfillet.}
proc indexOfC*(this: ChFiDS_SurfData; onS: cint): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfC", dynlib: tkfillet.}
proc firstSpineParam*(this: ChFiDS_SurfData): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstSpineParam", dynlib: tkfillet.}
proc lastSpineParam*(this: ChFiDS_SurfData): cfloat {.noSideEffect, cdecl,
    importcpp: "LastSpineParam", dynlib: tkfillet.}
proc firstSpineParam*(this: var ChFiDS_SurfData; par: cfloat) {.cdecl,
    importcpp: "FirstSpineParam", dynlib: tkfillet.}
proc lastSpineParam*(this: var ChFiDS_SurfData; par: cfloat) {.cdecl,
    importcpp: "LastSpineParam", dynlib: tkfillet.}
proc firstExtensionValue*(this: ChFiDS_SurfData): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstExtensionValue", dynlib: tkfillet.}
proc lastExtensionValue*(this: ChFiDS_SurfData): cfloat {.noSideEffect, cdecl,
    importcpp: "LastExtensionValue", dynlib: tkfillet.}
proc firstExtensionValue*(this: var ChFiDS_SurfData; extend: cfloat) {.cdecl,
    importcpp: "FirstExtensionValue", dynlib: tkfillet.}
proc lastExtensionValue*(this: var ChFiDS_SurfData; extend: cfloat) {.cdecl,
    importcpp: "LastExtensionValue", dynlib: tkfillet.}
proc simul*(this: ChFiDS_SurfData): Handle[StandardTransient] {.noSideEffect, cdecl,
    importcpp: "Simul", dynlib: tkfillet.}
proc setSimul*(this: var ChFiDS_SurfData; s: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetSimul", dynlib: tkfillet.}
proc resetSimul*(this: var ChFiDS_SurfData) {.cdecl, importcpp: "ResetSimul",
    dynlib: tkfillet.}
proc get2dPoints*(this: ChFiDS_SurfData; first: bool; onS: cint): Pnt2d {.noSideEffect,
    cdecl, importcpp: "Get2dPoints", dynlib: tkfillet.}
proc get2dPoints*(this: ChFiDS_SurfData; p2df1: var Pnt2d; p2dl1: var Pnt2d;
                 p2df2: var Pnt2d; p2dl2: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "Get2dPoints", dynlib: tkfillet.}
proc set2dPoints*(this: var ChFiDS_SurfData; p2df1: Pnt2d; p2dl1: Pnt2d; p2df2: Pnt2d;
                 p2dl2: Pnt2d) {.cdecl, importcpp: "Set2dPoints", dynlib: tkfillet.}
proc twistOnS1*(this: ChFiDS_SurfData): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS1", dynlib: tkfillet.}
proc twistOnS2*(this: ChFiDS_SurfData): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS2", dynlib: tkfillet.}
proc twistOnS1*(this: var ChFiDS_SurfData; t: bool) {.cdecl, importcpp: "TwistOnS1",
    dynlib: tkfillet.}
proc twistOnS2*(this: var ChFiDS_SurfData; t: bool) {.cdecl, importcpp: "TwistOnS2",
    dynlib: tkfillet.}