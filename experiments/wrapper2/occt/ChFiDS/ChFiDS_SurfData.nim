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
discard "forward decl of ChFiDS_SurfData"
type
  HandleC1C1* = Handle[ChFiDS_SurfData]

## ! data structure for all information related to  the
## ! fillet and to 2 faces vis a vis

type
  ChFiDS_SurfData* {.importcpp: "ChFiDS_SurfData", header: "ChFiDS_SurfData.hxx",
                    bycopy.} = object of StandardTransient


proc constructChFiDS_SurfData*(): ChFiDS_SurfData {.constructor,
    importcpp: "ChFiDS_SurfData(@)", header: "ChFiDS_SurfData.hxx".}
proc copy*(this: var ChFiDS_SurfData; other: Handle[ChFiDS_SurfData]) {.
    importcpp: "Copy", header: "ChFiDS_SurfData.hxx".}
proc indexOfS1*(this: ChFiDS_SurfData): int {.noSideEffect, importcpp: "IndexOfS1",
    header: "ChFiDS_SurfData.hxx".}
proc indexOfS2*(this: ChFiDS_SurfData): int {.noSideEffect, importcpp: "IndexOfS2",
    header: "ChFiDS_SurfData.hxx".}
proc isOnCurve1*(this: ChFiDS_SurfData): StandardBoolean {.noSideEffect,
    importcpp: "IsOnCurve1", header: "ChFiDS_SurfData.hxx".}
proc isOnCurve2*(this: ChFiDS_SurfData): StandardBoolean {.noSideEffect,
    importcpp: "IsOnCurve2", header: "ChFiDS_SurfData.hxx".}
proc indexOfC1*(this: ChFiDS_SurfData): int {.noSideEffect, importcpp: "IndexOfC1",
    header: "ChFiDS_SurfData.hxx".}
proc indexOfC2*(this: ChFiDS_SurfData): int {.noSideEffect, importcpp: "IndexOfC2",
    header: "ChFiDS_SurfData.hxx".}
proc surf*(this: ChFiDS_SurfData): int {.noSideEffect, importcpp: "Surf",
                                     header: "ChFiDS_SurfData.hxx".}
proc orientation*(this: ChFiDS_SurfData): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "ChFiDS_SurfData.hxx".}
proc interferenceOnS1*(this: ChFiDS_SurfData): ChFiDS_FaceInterference {.
    noSideEffect, importcpp: "InterferenceOnS1", header: "ChFiDS_SurfData.hxx".}
proc interferenceOnS2*(this: ChFiDS_SurfData): ChFiDS_FaceInterference {.
    noSideEffect, importcpp: "InterferenceOnS2", header: "ChFiDS_SurfData.hxx".}
proc vertexFirstOnS1*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    importcpp: "VertexFirstOnS1", header: "ChFiDS_SurfData.hxx".}
proc vertexFirstOnS2*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    importcpp: "VertexFirstOnS2", header: "ChFiDS_SurfData.hxx".}
proc vertexLastOnS1*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    importcpp: "VertexLastOnS1", header: "ChFiDS_SurfData.hxx".}
proc vertexLastOnS2*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    importcpp: "VertexLastOnS2", header: "ChFiDS_SurfData.hxx".}
proc changeIndexOfS1*(this: var ChFiDS_SurfData; index: int) {.
    importcpp: "ChangeIndexOfS1", header: "ChFiDS_SurfData.hxx".}
proc changeIndexOfS2*(this: var ChFiDS_SurfData; index: int) {.
    importcpp: "ChangeIndexOfS2", header: "ChFiDS_SurfData.hxx".}
proc changeSurf*(this: var ChFiDS_SurfData; index: int) {.importcpp: "ChangeSurf",
    header: "ChFiDS_SurfData.hxx".}
proc setIndexOfC1*(this: var ChFiDS_SurfData; index: int) {.importcpp: "SetIndexOfC1",
    header: "ChFiDS_SurfData.hxx".}
proc setIndexOfC2*(this: var ChFiDS_SurfData; index: int) {.importcpp: "SetIndexOfC2",
    header: "ChFiDS_SurfData.hxx".}
proc changeOrientation*(this: var ChFiDS_SurfData): var TopAbsOrientation {.
    importcpp: "ChangeOrientation", header: "ChFiDS_SurfData.hxx".}
proc changeInterferenceOnS1*(this: var ChFiDS_SurfData): var ChFiDS_FaceInterference {.
    importcpp: "ChangeInterferenceOnS1", header: "ChFiDS_SurfData.hxx".}
proc changeInterferenceOnS2*(this: var ChFiDS_SurfData): var ChFiDS_FaceInterference {.
    importcpp: "ChangeInterferenceOnS2", header: "ChFiDS_SurfData.hxx".}
proc changeVertexFirstOnS1*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertexFirstOnS1", header: "ChFiDS_SurfData.hxx".}
proc changeVertexFirstOnS2*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertexFirstOnS2", header: "ChFiDS_SurfData.hxx".}
proc changeVertexLastOnS1*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertexLastOnS1", header: "ChFiDS_SurfData.hxx".}
proc changeVertexLastOnS2*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertexLastOnS2", header: "ChFiDS_SurfData.hxx".}
proc interference*(this: ChFiDS_SurfData; onS: int): ChFiDS_FaceInterference {.
    noSideEffect, importcpp: "Interference", header: "ChFiDS_SurfData.hxx".}
proc changeInterference*(this: var ChFiDS_SurfData; onS: int): var ChFiDS_FaceInterference {.
    importcpp: "ChangeInterference", header: "ChFiDS_SurfData.hxx".}
proc index*(this: ChFiDS_SurfData; ofS: int): int {.noSideEffect, importcpp: "Index",
    header: "ChFiDS_SurfData.hxx".}
proc vertex*(this: ChFiDS_SurfData; first: StandardBoolean; onS: int): ChFiDS_CommonPoint {.
    noSideEffect, importcpp: "Vertex", header: "ChFiDS_SurfData.hxx".}
proc changeVertex*(this: var ChFiDS_SurfData; first: StandardBoolean; onS: int): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertex", header: "ChFiDS_SurfData.hxx".}
proc isOnCurve*(this: ChFiDS_SurfData; onS: int): StandardBoolean {.noSideEffect,
    importcpp: "IsOnCurve", header: "ChFiDS_SurfData.hxx".}
proc indexOfC*(this: ChFiDS_SurfData; onS: int): int {.noSideEffect,
    importcpp: "IndexOfC", header: "ChFiDS_SurfData.hxx".}
proc firstSpineParam*(this: ChFiDS_SurfData): StandardReal {.noSideEffect,
    importcpp: "FirstSpineParam", header: "ChFiDS_SurfData.hxx".}
proc lastSpineParam*(this: ChFiDS_SurfData): StandardReal {.noSideEffect,
    importcpp: "LastSpineParam", header: "ChFiDS_SurfData.hxx".}
proc firstSpineParam*(this: var ChFiDS_SurfData; par: StandardReal) {.
    importcpp: "FirstSpineParam", header: "ChFiDS_SurfData.hxx".}
proc lastSpineParam*(this: var ChFiDS_SurfData; par: StandardReal) {.
    importcpp: "LastSpineParam", header: "ChFiDS_SurfData.hxx".}
proc firstExtensionValue*(this: ChFiDS_SurfData): StandardReal {.noSideEffect,
    importcpp: "FirstExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc lastExtensionValue*(this: ChFiDS_SurfData): StandardReal {.noSideEffect,
    importcpp: "LastExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc firstExtensionValue*(this: var ChFiDS_SurfData; extend: StandardReal) {.
    importcpp: "FirstExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc lastExtensionValue*(this: var ChFiDS_SurfData; extend: StandardReal) {.
    importcpp: "LastExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc simul*(this: ChFiDS_SurfData): Handle[StandardTransient] {.noSideEffect,
    importcpp: "Simul", header: "ChFiDS_SurfData.hxx".}
proc setSimul*(this: var ChFiDS_SurfData; s: Handle[StandardTransient]) {.
    importcpp: "SetSimul", header: "ChFiDS_SurfData.hxx".}
proc resetSimul*(this: var ChFiDS_SurfData) {.importcpp: "ResetSimul",
    header: "ChFiDS_SurfData.hxx".}
proc get2dPoints*(this: ChFiDS_SurfData; first: StandardBoolean; onS: int): Pnt2d {.
    noSideEffect, importcpp: "Get2dPoints", header: "ChFiDS_SurfData.hxx".}
proc get2dPoints*(this: ChFiDS_SurfData; p2df1: var Pnt2d; p2dl1: var Pnt2d;
                 p2df2: var Pnt2d; p2dl2: var Pnt2d) {.noSideEffect,
    importcpp: "Get2dPoints", header: "ChFiDS_SurfData.hxx".}
proc set2dPoints*(this: var ChFiDS_SurfData; p2df1: Pnt2d; p2dl1: Pnt2d; p2df2: Pnt2d;
                 p2dl2: Pnt2d) {.importcpp: "Set2dPoints",
                               header: "ChFiDS_SurfData.hxx".}
proc twistOnS1*(this: ChFiDS_SurfData): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS1", header: "ChFiDS_SurfData.hxx".}
proc twistOnS2*(this: ChFiDS_SurfData): StandardBoolean {.noSideEffect,
    importcpp: "TwistOnS2", header: "ChFiDS_SurfData.hxx".}
proc twistOnS1*(this: var ChFiDS_SurfData; t: StandardBoolean) {.
    importcpp: "TwistOnS1", header: "ChFiDS_SurfData.hxx".}
proc twistOnS2*(this: var ChFiDS_SurfData; t: StandardBoolean) {.
    importcpp: "TwistOnS2", header: "ChFiDS_SurfData.hxx".}
type
  ChFiDS_SurfDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ChFiDS_SurfData::get_type_name(@)",
                            header: "ChFiDS_SurfData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ChFiDS_SurfData::get_type_descriptor(@)",
    header: "ChFiDS_SurfData.hxx".}
proc dynamicType*(this: ChFiDS_SurfData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_SurfData.hxx".}