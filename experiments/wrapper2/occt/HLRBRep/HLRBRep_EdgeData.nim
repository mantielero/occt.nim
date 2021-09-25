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

discard "forward decl of TopoDS_Edge"
# when defined(Status):
#   discard
type
  HLRBRepEdgeData* {.importcpp: "HLRBRep_EdgeData", header: "HLRBRep_EdgeData.hxx",
                    bycopy.} = object


proc constructHLRBRepEdgeData*(): HLRBRepEdgeData {.constructor,
    importcpp: "HLRBRep_EdgeData(@)", header: "HLRBRep_EdgeData.hxx".}
proc set*(this: var HLRBRepEdgeData; reg1: bool; regN: bool; eg: TopoDS_Edge; v1: int;
         v2: int; out1: bool; out2: bool; cut1: bool; cut2: bool; start: float;
         tolStart: StandardShortReal; `end`: float; tolEnd: StandardShortReal) {.
    importcpp: "Set", header: "HLRBRep_EdgeData.hxx".}
proc selected*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "Selected",
    header: "HLRBRep_EdgeData.hxx".}
proc selected*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "Selected",
    header: "HLRBRep_EdgeData.hxx".}
proc rg1Line*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "Rg1Line",
    header: "HLRBRep_EdgeData.hxx".}
proc rg1Line*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "Rg1Line",
    header: "HLRBRep_EdgeData.hxx".}
proc rgNLine*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "RgNLine",
    header: "HLRBRep_EdgeData.hxx".}
proc rgNLine*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "RgNLine",
    header: "HLRBRep_EdgeData.hxx".}
proc vertical*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "Vertical",
    header: "HLRBRep_EdgeData.hxx".}
proc vertical*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "Vertical",
    header: "HLRBRep_EdgeData.hxx".}
proc simple*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "Simple",
                                        header: "HLRBRep_EdgeData.hxx".}
proc simple*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "Simple",
    header: "HLRBRep_EdgeData.hxx".}
proc outLVSta*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "OutLVSta",
    header: "HLRBRep_EdgeData.hxx".}
proc outLVSta*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "OutLVSta",
    header: "HLRBRep_EdgeData.hxx".}
proc outLVEnd*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "OutLVEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc outLVEnd*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "OutLVEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc cutAtSta*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "CutAtSta",
    header: "HLRBRep_EdgeData.hxx".}
proc cutAtSta*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "CutAtSta",
    header: "HLRBRep_EdgeData.hxx".}
proc cutAtEnd*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "CutAtEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc cutAtEnd*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "CutAtEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc verAtSta*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "VerAtSta",
    header: "HLRBRep_EdgeData.hxx".}
proc verAtSta*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "VerAtSta",
    header: "HLRBRep_EdgeData.hxx".}
proc verAtEnd*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "VerAtEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc verAtEnd*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "VerAtEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc autoIntersectionDone*(this: HLRBRepEdgeData): bool {.noSideEffect,
    importcpp: "AutoIntersectionDone", header: "HLRBRep_EdgeData.hxx".}
proc autoIntersectionDone*(this: var HLRBRepEdgeData; b: bool) {.
    importcpp: "AutoIntersectionDone", header: "HLRBRep_EdgeData.hxx".}
proc used*(this: HLRBRepEdgeData): bool {.noSideEffect, importcpp: "Used",
                                      header: "HLRBRep_EdgeData.hxx".}
proc used*(this: var HLRBRepEdgeData; b: bool) {.importcpp: "Used",
    header: "HLRBRep_EdgeData.hxx".}
proc hideCount*(this: HLRBRepEdgeData): int {.noSideEffect, importcpp: "HideCount",
    header: "HLRBRep_EdgeData.hxx".}
proc hideCount*(this: var HLRBRepEdgeData; i: int) {.importcpp: "HideCount",
    header: "HLRBRep_EdgeData.hxx".}
proc vSta*(this: HLRBRepEdgeData): int {.noSideEffect, importcpp: "VSta",
                                     header: "HLRBRep_EdgeData.hxx".}
proc vSta*(this: var HLRBRepEdgeData; i: int) {.importcpp: "VSta",
    header: "HLRBRep_EdgeData.hxx".}
proc vEnd*(this: HLRBRepEdgeData): int {.noSideEffect, importcpp: "VEnd",
                                     header: "HLRBRep_EdgeData.hxx".}
proc vEnd*(this: var HLRBRepEdgeData; i: int) {.importcpp: "VEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc updateMinMax*(this: var HLRBRepEdgeData; theTotMinMax: MinMaxIndices) {.
    importcpp: "UpdateMinMax", header: "HLRBRep_EdgeData.hxx".}
proc minMax*(this: var HLRBRepEdgeData): var MinMaxIndices {.importcpp: "MinMax",
    header: "HLRBRep_EdgeData.hxx".}
proc status*(this: var HLRBRepEdgeData): var HLRAlgoEdgeStatus {.importcpp: "Status",
    header: "HLRBRep_EdgeData.hxx".}
proc changeGeometry*(this: var HLRBRepEdgeData): var HLRBRepCurve {.
    importcpp: "ChangeGeometry", header: "HLRBRep_EdgeData.hxx".}
proc geometry*(this: HLRBRepEdgeData): HLRBRepCurve {.noSideEffect,
    importcpp: "Geometry", header: "HLRBRep_EdgeData.hxx".}
proc curve*(this: var HLRBRepEdgeData): ptr HLRBRepCurve {.importcpp: "Curve",
    header: "HLRBRep_EdgeData.hxx".}
proc tolerance*(this: HLRBRepEdgeData): StandardShortReal {.noSideEffect,
    importcpp: "Tolerance", header: "HLRBRep_EdgeData.hxx".}
