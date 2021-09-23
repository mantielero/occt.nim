##  Created on: 1997-04-17
##  Created by: Christophe MARION
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../HLRAlgo/HLRAlgo_WiresBlock, ../Standard/Standard,
  ../Standard/Standard_DefineAlloc, ../Standard/Standard_Handle,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../HLRAlgo/HLRAlgo_EdgeStatus, HLRBRep_Curve, ../Standard/Standard_ShortReal,
  ../Standard/Standard_Real

discard "forward decl of TopoDS_Edge"
when defined(Status):
  discard
type
  HLRBRep_EdgeData* {.importcpp: "HLRBRep_EdgeData",
                     header: "HLRBRep_EdgeData.hxx", bycopy.} = object


proc constructHLRBRep_EdgeData*(): HLRBRep_EdgeData {.constructor,
    importcpp: "HLRBRep_EdgeData(@)", header: "HLRBRep_EdgeData.hxx".}
proc Set*(this: var HLRBRep_EdgeData; Reg1: Standard_Boolean; RegN: Standard_Boolean;
         EG: TopoDS_Edge; V1: Standard_Integer; V2: Standard_Integer;
         Out1: Standard_Boolean; Out2: Standard_Boolean; Cut1: Standard_Boolean;
         Cut2: Standard_Boolean; Start: Standard_Real; TolStart: Standard_ShortReal;
         End: Standard_Real; TolEnd: Standard_ShortReal) {.importcpp: "Set",
    header: "HLRBRep_EdgeData.hxx".}
proc Selected*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "Selected", header: "HLRBRep_EdgeData.hxx".}
proc Selected*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.
    importcpp: "Selected", header: "HLRBRep_EdgeData.hxx".}
proc Rg1Line*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "Rg1Line", header: "HLRBRep_EdgeData.hxx".}
proc Rg1Line*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.importcpp: "Rg1Line",
    header: "HLRBRep_EdgeData.hxx".}
proc RgNLine*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "RgNLine", header: "HLRBRep_EdgeData.hxx".}
proc RgNLine*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.importcpp: "RgNLine",
    header: "HLRBRep_EdgeData.hxx".}
proc Vertical*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "Vertical", header: "HLRBRep_EdgeData.hxx".}
proc Vertical*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.
    importcpp: "Vertical", header: "HLRBRep_EdgeData.hxx".}
proc Simple*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "Simple", header: "HLRBRep_EdgeData.hxx".}
proc Simple*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.importcpp: "Simple",
    header: "HLRBRep_EdgeData.hxx".}
proc OutLVSta*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "OutLVSta", header: "HLRBRep_EdgeData.hxx".}
proc OutLVSta*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.
    importcpp: "OutLVSta", header: "HLRBRep_EdgeData.hxx".}
proc OutLVEnd*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "OutLVEnd", header: "HLRBRep_EdgeData.hxx".}
proc OutLVEnd*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.
    importcpp: "OutLVEnd", header: "HLRBRep_EdgeData.hxx".}
proc CutAtSta*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "CutAtSta", header: "HLRBRep_EdgeData.hxx".}
proc CutAtSta*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.
    importcpp: "CutAtSta", header: "HLRBRep_EdgeData.hxx".}
proc CutAtEnd*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "CutAtEnd", header: "HLRBRep_EdgeData.hxx".}
proc CutAtEnd*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.
    importcpp: "CutAtEnd", header: "HLRBRep_EdgeData.hxx".}
proc VerAtSta*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "VerAtSta", header: "HLRBRep_EdgeData.hxx".}
proc VerAtSta*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.
    importcpp: "VerAtSta", header: "HLRBRep_EdgeData.hxx".}
proc VerAtEnd*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "VerAtEnd", header: "HLRBRep_EdgeData.hxx".}
proc VerAtEnd*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.
    importcpp: "VerAtEnd", header: "HLRBRep_EdgeData.hxx".}
proc AutoIntersectionDone*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "AutoIntersectionDone", header: "HLRBRep_EdgeData.hxx".}
proc AutoIntersectionDone*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.
    importcpp: "AutoIntersectionDone", header: "HLRBRep_EdgeData.hxx".}
proc Used*(this: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "Used", header: "HLRBRep_EdgeData.hxx".}
proc Used*(this: var HLRBRep_EdgeData; B: Standard_Boolean) {.importcpp: "Used",
    header: "HLRBRep_EdgeData.hxx".}
proc HideCount*(this: HLRBRep_EdgeData): Standard_Integer {.noSideEffect,
    importcpp: "HideCount", header: "HLRBRep_EdgeData.hxx".}
proc HideCount*(this: var HLRBRep_EdgeData; I: Standard_Integer) {.
    importcpp: "HideCount", header: "HLRBRep_EdgeData.hxx".}
proc VSta*(this: HLRBRep_EdgeData): Standard_Integer {.noSideEffect,
    importcpp: "VSta", header: "HLRBRep_EdgeData.hxx".}
proc VSta*(this: var HLRBRep_EdgeData; I: Standard_Integer) {.importcpp: "VSta",
    header: "HLRBRep_EdgeData.hxx".}
proc VEnd*(this: HLRBRep_EdgeData): Standard_Integer {.noSideEffect,
    importcpp: "VEnd", header: "HLRBRep_EdgeData.hxx".}
proc VEnd*(this: var HLRBRep_EdgeData; I: Standard_Integer) {.importcpp: "VEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc UpdateMinMax*(this: var HLRBRep_EdgeData; theTotMinMax: MinMaxIndices) {.
    importcpp: "UpdateMinMax", header: "HLRBRep_EdgeData.hxx".}
proc MinMax*(this: var HLRBRep_EdgeData): var MinMaxIndices {.importcpp: "MinMax",
    header: "HLRBRep_EdgeData.hxx".}
proc Status*(this: var HLRBRep_EdgeData): var HLRAlgo_EdgeStatus {.
    importcpp: "Status", header: "HLRBRep_EdgeData.hxx".}
proc ChangeGeometry*(this: var HLRBRep_EdgeData): var HLRBRep_Curve {.
    importcpp: "ChangeGeometry", header: "HLRBRep_EdgeData.hxx".}
proc Geometry*(this: HLRBRep_EdgeData): HLRBRep_Curve {.noSideEffect,
    importcpp: "Geometry", header: "HLRBRep_EdgeData.hxx".}
proc Curve*(this: var HLRBRep_EdgeData): ptr HLRBRep_Curve {.importcpp: "Curve",
    header: "HLRBRep_EdgeData.hxx".}
proc Tolerance*(this: HLRBRep_EdgeData): Standard_ShortReal {.noSideEffect,
    importcpp: "Tolerance", header: "HLRBRep_EdgeData.hxx".}