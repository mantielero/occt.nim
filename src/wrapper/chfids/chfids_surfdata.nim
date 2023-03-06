import ../gp/gp_types
import ../topabs/topabs_types
import ../standard/standard_types
import chfids_types





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





proc newChFiDS_SurfData*(): ChFiDS_SurfData {.cdecl, constructor,
    importcpp: "ChFiDS_SurfData(@)", header: "ChFiDS_SurfData.hxx".}
proc copy*(this: var ChFiDS_SurfData; other: Handle[ChFiDS_SurfData]) {.cdecl,
    importcpp: "Copy", header: "ChFiDS_SurfData.hxx".}
proc indexOfS1*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfS1", header: "ChFiDS_SurfData.hxx".}
proc indexOfS2*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfS2", header: "ChFiDS_SurfData.hxx".}
proc isOnCurve1*(this: ChFiDS_SurfData): bool {.noSideEffect, cdecl,
    importcpp: "IsOnCurve1", header: "ChFiDS_SurfData.hxx".}
proc isOnCurve2*(this: ChFiDS_SurfData): bool {.noSideEffect, cdecl,
    importcpp: "IsOnCurve2", header: "ChFiDS_SurfData.hxx".}
proc indexOfC1*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfC1", header: "ChFiDS_SurfData.hxx".}
proc indexOfC2*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfC2", header: "ChFiDS_SurfData.hxx".}
proc surf*(this: ChFiDS_SurfData): cint {.noSideEffect, cdecl, importcpp: "Surf",
                                      header: "ChFiDS_SurfData.hxx".}
proc orientation*(this: ChFiDS_SurfData): TopAbsOrientation {.noSideEffect, cdecl,
    importcpp: "Orientation", header: "ChFiDS_SurfData.hxx".}
proc interferenceOnS1*(this: ChFiDS_SurfData): ChFiDS_FaceInterference {.
    noSideEffect, cdecl, importcpp: "InterferenceOnS1", header: "ChFiDS_SurfData.hxx".}
proc interferenceOnS2*(this: ChFiDS_SurfData): ChFiDS_FaceInterference {.
    noSideEffect, cdecl, importcpp: "InterferenceOnS2", header: "ChFiDS_SurfData.hxx".}
proc vertexFirstOnS1*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    cdecl, importcpp: "VertexFirstOnS1", header: "ChFiDS_SurfData.hxx".}
proc vertexFirstOnS2*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    cdecl, importcpp: "VertexFirstOnS2", header: "ChFiDS_SurfData.hxx".}
proc vertexLastOnS1*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    cdecl, importcpp: "VertexLastOnS1", header: "ChFiDS_SurfData.hxx".}
proc vertexLastOnS2*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    cdecl, importcpp: "VertexLastOnS2", header: "ChFiDS_SurfData.hxx".}
proc changeIndexOfS1*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "ChangeIndexOfS1", header: "ChFiDS_SurfData.hxx".}
proc changeIndexOfS2*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "ChangeIndexOfS2", header: "ChFiDS_SurfData.hxx".}
proc changeSurf*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "ChangeSurf", header: "ChFiDS_SurfData.hxx".}
proc setIndexOfC1*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "SetIndexOfC1", header: "ChFiDS_SurfData.hxx".}
proc setIndexOfC2*(this: var ChFiDS_SurfData; index: cint) {.cdecl,
    importcpp: "SetIndexOfC2", header: "ChFiDS_SurfData.hxx".}
proc changeOrientation*(this: var ChFiDS_SurfData): var TopAbsOrientation {.cdecl,
    importcpp: "ChangeOrientation", header: "ChFiDS_SurfData.hxx".}
proc changeInterferenceOnS1*(this: var ChFiDS_SurfData): var ChFiDS_FaceInterference {.
    cdecl, importcpp: "ChangeInterferenceOnS1", header: "ChFiDS_SurfData.hxx".}
proc changeInterferenceOnS2*(this: var ChFiDS_SurfData): var ChFiDS_FaceInterference {.
    cdecl, importcpp: "ChangeInterferenceOnS2", header: "ChFiDS_SurfData.hxx".}
proc changeVertexFirstOnS1*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    cdecl, importcpp: "ChangeVertexFirstOnS1", header: "ChFiDS_SurfData.hxx".}
proc changeVertexFirstOnS2*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    cdecl, importcpp: "ChangeVertexFirstOnS2", header: "ChFiDS_SurfData.hxx".}
proc changeVertexLastOnS1*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.cdecl,
    importcpp: "ChangeVertexLastOnS1", header: "ChFiDS_SurfData.hxx".}
proc changeVertexLastOnS2*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.cdecl,
    importcpp: "ChangeVertexLastOnS2", header: "ChFiDS_SurfData.hxx".}
proc interference*(this: ChFiDS_SurfData; onS: cint): ChFiDS_FaceInterference {.
    noSideEffect, cdecl, importcpp: "Interference", header: "ChFiDS_SurfData.hxx".}
proc changeInterference*(this: var ChFiDS_SurfData; onS: cint): var ChFiDS_FaceInterference {.
    cdecl, importcpp: "ChangeInterference", header: "ChFiDS_SurfData.hxx".}
proc index*(this: ChFiDS_SurfData; ofS: cint): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "ChFiDS_SurfData.hxx".}
proc vertex*(this: ChFiDS_SurfData; first: bool; onS: cint): ChFiDS_CommonPoint {.
    noSideEffect, cdecl, importcpp: "Vertex", header: "ChFiDS_SurfData.hxx".}
proc changeVertex*(this: var ChFiDS_SurfData; first: bool; onS: cint): var ChFiDS_CommonPoint {.
    cdecl, importcpp: "ChangeVertex", header: "ChFiDS_SurfData.hxx".}
proc isOnCurve*(this: ChFiDS_SurfData; onS: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsOnCurve", header: "ChFiDS_SurfData.hxx".}
proc indexOfC*(this: ChFiDS_SurfData; onS: cint): cint {.noSideEffect, cdecl,
    importcpp: "IndexOfC", header: "ChFiDS_SurfData.hxx".}
proc firstSpineParam*(this: ChFiDS_SurfData): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstSpineParam", header: "ChFiDS_SurfData.hxx".}
proc lastSpineParam*(this: ChFiDS_SurfData): cfloat {.noSideEffect, cdecl,
    importcpp: "LastSpineParam", header: "ChFiDS_SurfData.hxx".}
proc firstSpineParam*(this: var ChFiDS_SurfData; par: cfloat) {.cdecl,
    importcpp: "FirstSpineParam", header: "ChFiDS_SurfData.hxx".}
proc lastSpineParam*(this: var ChFiDS_SurfData; par: cfloat) {.cdecl,
    importcpp: "LastSpineParam", header: "ChFiDS_SurfData.hxx".}
proc firstExtensionValue*(this: ChFiDS_SurfData): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc lastExtensionValue*(this: ChFiDS_SurfData): cfloat {.noSideEffect, cdecl,
    importcpp: "LastExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc firstExtensionValue*(this: var ChFiDS_SurfData; extend: cfloat) {.cdecl,
    importcpp: "FirstExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc lastExtensionValue*(this: var ChFiDS_SurfData; extend: cfloat) {.cdecl,
    importcpp: "LastExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc simul*(this: ChFiDS_SurfData): Handle[StandardTransient] {.noSideEffect, cdecl,
    importcpp: "Simul", header: "ChFiDS_SurfData.hxx".}
proc setSimul*(this: var ChFiDS_SurfData; s: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetSimul", header: "ChFiDS_SurfData.hxx".}
proc resetSimul*(this: var ChFiDS_SurfData) {.cdecl, importcpp: "ResetSimul",
    header: "ChFiDS_SurfData.hxx".}
proc get2dPoints*(this: ChFiDS_SurfData; first: bool; onS: cint): Pnt2dObj {.noSideEffect,
    cdecl, importcpp: "Get2dPoints", header: "ChFiDS_SurfData.hxx".}
proc get2dPoints*(this: ChFiDS_SurfData; p2df1: var Pnt2dObj; p2dl1: var Pnt2dObj;
                 p2df2: var Pnt2dObj; p2dl2: var Pnt2dObj) {.noSideEffect, cdecl,
    importcpp: "Get2dPoints", header: "ChFiDS_SurfData.hxx".}
proc set2dPoints*(this: var ChFiDS_SurfData; p2df1: Pnt2dObj; p2dl1: Pnt2dObj; p2df2: Pnt2dObj;
                 p2dl2: Pnt2dObj) {.cdecl, importcpp: "Set2dPoints", header: "ChFiDS_SurfData.hxx".}
proc twistOnS1*(this: ChFiDS_SurfData): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS1", header: "ChFiDS_SurfData.hxx".}
proc twistOnS2*(this: ChFiDS_SurfData): bool {.noSideEffect, cdecl,
    importcpp: "TwistOnS2", header: "ChFiDS_SurfData.hxx".}
proc twistOnS1*(this: var ChFiDS_SurfData; t: bool) {.cdecl, importcpp: "TwistOnS1",
    header: "ChFiDS_SurfData.hxx".}
proc twistOnS2*(this: var ChFiDS_SurfData; t: bool) {.cdecl, importcpp: "TwistOnS2",
    header: "ChFiDS_SurfData.hxx".}


