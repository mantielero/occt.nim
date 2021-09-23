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

import
  ../Standard/Standard, ../Standard/Standard_Type, ChFiDS_CommonPoint,
  ChFiDS_FaceInterference, ../gp/gp_Pnt2d, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Transient

discard "forward decl of ChFiDS_FaceInterference"
discard "forward decl of ChFiDS_CommonPoint"
discard "forward decl of gp_Pnt2d"
discard "forward decl of ChFiDS_SurfData"
discard "forward decl of ChFiDS_SurfData"
type
  Handle_ChFiDS_SurfData* = handle[ChFiDS_SurfData]

## ! data structure for all information related to  the
## ! fillet and to 2 faces vis a vis

type
  ChFiDS_SurfData* {.importcpp: "ChFiDS_SurfData", header: "ChFiDS_SurfData.hxx",
                    bycopy.} = object of Standard_Transient


proc constructChFiDS_SurfData*(): ChFiDS_SurfData {.constructor,
    importcpp: "ChFiDS_SurfData(@)", header: "ChFiDS_SurfData.hxx".}
proc Copy*(this: var ChFiDS_SurfData; Other: handle[ChFiDS_SurfData]) {.
    importcpp: "Copy", header: "ChFiDS_SurfData.hxx".}
proc IndexOfS1*(this: ChFiDS_SurfData): Standard_Integer {.noSideEffect,
    importcpp: "IndexOfS1", header: "ChFiDS_SurfData.hxx".}
proc IndexOfS2*(this: ChFiDS_SurfData): Standard_Integer {.noSideEffect,
    importcpp: "IndexOfS2", header: "ChFiDS_SurfData.hxx".}
proc IsOnCurve1*(this: ChFiDS_SurfData): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnCurve1", header: "ChFiDS_SurfData.hxx".}
proc IsOnCurve2*(this: ChFiDS_SurfData): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnCurve2", header: "ChFiDS_SurfData.hxx".}
proc IndexOfC1*(this: ChFiDS_SurfData): Standard_Integer {.noSideEffect,
    importcpp: "IndexOfC1", header: "ChFiDS_SurfData.hxx".}
proc IndexOfC2*(this: ChFiDS_SurfData): Standard_Integer {.noSideEffect,
    importcpp: "IndexOfC2", header: "ChFiDS_SurfData.hxx".}
proc Surf*(this: ChFiDS_SurfData): Standard_Integer {.noSideEffect,
    importcpp: "Surf", header: "ChFiDS_SurfData.hxx".}
proc Orientation*(this: ChFiDS_SurfData): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "ChFiDS_SurfData.hxx".}
proc InterferenceOnS1*(this: ChFiDS_SurfData): ChFiDS_FaceInterference {.
    noSideEffect, importcpp: "InterferenceOnS1", header: "ChFiDS_SurfData.hxx".}
proc InterferenceOnS2*(this: ChFiDS_SurfData): ChFiDS_FaceInterference {.
    noSideEffect, importcpp: "InterferenceOnS2", header: "ChFiDS_SurfData.hxx".}
proc VertexFirstOnS1*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    importcpp: "VertexFirstOnS1", header: "ChFiDS_SurfData.hxx".}
proc VertexFirstOnS2*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    importcpp: "VertexFirstOnS2", header: "ChFiDS_SurfData.hxx".}
proc VertexLastOnS1*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    importcpp: "VertexLastOnS1", header: "ChFiDS_SurfData.hxx".}
proc VertexLastOnS2*(this: ChFiDS_SurfData): ChFiDS_CommonPoint {.noSideEffect,
    importcpp: "VertexLastOnS2", header: "ChFiDS_SurfData.hxx".}
proc ChangeIndexOfS1*(this: var ChFiDS_SurfData; Index: Standard_Integer) {.
    importcpp: "ChangeIndexOfS1", header: "ChFiDS_SurfData.hxx".}
proc ChangeIndexOfS2*(this: var ChFiDS_SurfData; Index: Standard_Integer) {.
    importcpp: "ChangeIndexOfS2", header: "ChFiDS_SurfData.hxx".}
proc ChangeSurf*(this: var ChFiDS_SurfData; Index: Standard_Integer) {.
    importcpp: "ChangeSurf", header: "ChFiDS_SurfData.hxx".}
proc SetIndexOfC1*(this: var ChFiDS_SurfData; Index: Standard_Integer) {.
    importcpp: "SetIndexOfC1", header: "ChFiDS_SurfData.hxx".}
proc SetIndexOfC2*(this: var ChFiDS_SurfData; Index: Standard_Integer) {.
    importcpp: "SetIndexOfC2", header: "ChFiDS_SurfData.hxx".}
proc ChangeOrientation*(this: var ChFiDS_SurfData): var TopAbs_Orientation {.
    importcpp: "ChangeOrientation", header: "ChFiDS_SurfData.hxx".}
proc ChangeInterferenceOnS1*(this: var ChFiDS_SurfData): var ChFiDS_FaceInterference {.
    importcpp: "ChangeInterferenceOnS1", header: "ChFiDS_SurfData.hxx".}
proc ChangeInterferenceOnS2*(this: var ChFiDS_SurfData): var ChFiDS_FaceInterference {.
    importcpp: "ChangeInterferenceOnS2", header: "ChFiDS_SurfData.hxx".}
proc ChangeVertexFirstOnS1*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertexFirstOnS1", header: "ChFiDS_SurfData.hxx".}
proc ChangeVertexFirstOnS2*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertexFirstOnS2", header: "ChFiDS_SurfData.hxx".}
proc ChangeVertexLastOnS1*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertexLastOnS1", header: "ChFiDS_SurfData.hxx".}
proc ChangeVertexLastOnS2*(this: var ChFiDS_SurfData): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertexLastOnS2", header: "ChFiDS_SurfData.hxx".}
proc Interference*(this: ChFiDS_SurfData; OnS: Standard_Integer): ChFiDS_FaceInterference {.
    noSideEffect, importcpp: "Interference", header: "ChFiDS_SurfData.hxx".}
proc ChangeInterference*(this: var ChFiDS_SurfData; OnS: Standard_Integer): var ChFiDS_FaceInterference {.
    importcpp: "ChangeInterference", header: "ChFiDS_SurfData.hxx".}
proc Index*(this: ChFiDS_SurfData; OfS: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "ChFiDS_SurfData.hxx".}
proc Vertex*(this: ChFiDS_SurfData; First: Standard_Boolean; OnS: Standard_Integer): ChFiDS_CommonPoint {.
    noSideEffect, importcpp: "Vertex", header: "ChFiDS_SurfData.hxx".}
proc ChangeVertex*(this: var ChFiDS_SurfData; First: Standard_Boolean;
                  OnS: Standard_Integer): var ChFiDS_CommonPoint {.
    importcpp: "ChangeVertex", header: "ChFiDS_SurfData.hxx".}
proc IsOnCurve*(this: ChFiDS_SurfData; OnS: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsOnCurve", header: "ChFiDS_SurfData.hxx".}
proc IndexOfC*(this: ChFiDS_SurfData; OnS: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "IndexOfC", header: "ChFiDS_SurfData.hxx".}
proc FirstSpineParam*(this: ChFiDS_SurfData): Standard_Real {.noSideEffect,
    importcpp: "FirstSpineParam", header: "ChFiDS_SurfData.hxx".}
proc LastSpineParam*(this: ChFiDS_SurfData): Standard_Real {.noSideEffect,
    importcpp: "LastSpineParam", header: "ChFiDS_SurfData.hxx".}
proc FirstSpineParam*(this: var ChFiDS_SurfData; Par: Standard_Real) {.
    importcpp: "FirstSpineParam", header: "ChFiDS_SurfData.hxx".}
proc LastSpineParam*(this: var ChFiDS_SurfData; Par: Standard_Real) {.
    importcpp: "LastSpineParam", header: "ChFiDS_SurfData.hxx".}
proc FirstExtensionValue*(this: ChFiDS_SurfData): Standard_Real {.noSideEffect,
    importcpp: "FirstExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc LastExtensionValue*(this: ChFiDS_SurfData): Standard_Real {.noSideEffect,
    importcpp: "LastExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc FirstExtensionValue*(this: var ChFiDS_SurfData; Extend: Standard_Real) {.
    importcpp: "FirstExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc LastExtensionValue*(this: var ChFiDS_SurfData; Extend: Standard_Real) {.
    importcpp: "LastExtensionValue", header: "ChFiDS_SurfData.hxx".}
proc Simul*(this: ChFiDS_SurfData): handle[Standard_Transient] {.noSideEffect,
    importcpp: "Simul", header: "ChFiDS_SurfData.hxx".}
proc SetSimul*(this: var ChFiDS_SurfData; S: handle[Standard_Transient]) {.
    importcpp: "SetSimul", header: "ChFiDS_SurfData.hxx".}
proc ResetSimul*(this: var ChFiDS_SurfData) {.importcpp: "ResetSimul",
    header: "ChFiDS_SurfData.hxx".}
proc Get2dPoints*(this: ChFiDS_SurfData; First: Standard_Boolean;
                 OnS: Standard_Integer): gp_Pnt2d {.noSideEffect,
    importcpp: "Get2dPoints", header: "ChFiDS_SurfData.hxx".}
proc Get2dPoints*(this: ChFiDS_SurfData; P2df1: var gp_Pnt2d; P2dl1: var gp_Pnt2d;
                 P2df2: var gp_Pnt2d; P2dl2: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Get2dPoints", header: "ChFiDS_SurfData.hxx".}
proc Set2dPoints*(this: var ChFiDS_SurfData; P2df1: gp_Pnt2d; P2dl1: gp_Pnt2d;
                 P2df2: gp_Pnt2d; P2dl2: gp_Pnt2d) {.importcpp: "Set2dPoints",
    header: "ChFiDS_SurfData.hxx".}
proc TwistOnS1*(this: ChFiDS_SurfData): Standard_Boolean {.noSideEffect,
    importcpp: "TwistOnS1", header: "ChFiDS_SurfData.hxx".}
proc TwistOnS2*(this: ChFiDS_SurfData): Standard_Boolean {.noSideEffect,
    importcpp: "TwistOnS2", header: "ChFiDS_SurfData.hxx".}
proc TwistOnS1*(this: var ChFiDS_SurfData; T: Standard_Boolean) {.
    importcpp: "TwistOnS1", header: "ChFiDS_SurfData.hxx".}
proc TwistOnS2*(this: var ChFiDS_SurfData; T: Standard_Boolean) {.
    importcpp: "TwistOnS2", header: "ChFiDS_SurfData.hxx".}
type
  ChFiDS_SurfDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ChFiDS_SurfData::get_type_name(@)",
                              header: "ChFiDS_SurfData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ChFiDS_SurfData::get_type_descriptor(@)",
    header: "ChFiDS_SurfData.hxx".}
proc DynamicType*(this: ChFiDS_SurfData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_SurfData.hxx".}