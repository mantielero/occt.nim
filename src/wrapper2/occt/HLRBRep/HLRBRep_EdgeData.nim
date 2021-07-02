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
proc set*(this: var HLRBRepEdgeData; reg1: StandardBoolean; regN: StandardBoolean;
         eg: TopoDS_Edge; v1: StandardInteger; v2: StandardInteger;
         out1: StandardBoolean; out2: StandardBoolean; cut1: StandardBoolean;
         cut2: StandardBoolean; start: StandardReal; tolStart: StandardShortReal;
         `end`: StandardReal; tolEnd: StandardShortReal) {.importcpp: "Set",
    header: "HLRBRep_EdgeData.hxx".}
proc selected*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "Selected", header: "HLRBRep_EdgeData.hxx".}
proc selected*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "Selected",
    header: "HLRBRep_EdgeData.hxx".}
proc rg1Line*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "Rg1Line", header: "HLRBRep_EdgeData.hxx".}
proc rg1Line*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "Rg1Line",
    header: "HLRBRep_EdgeData.hxx".}
proc rgNLine*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "RgNLine", header: "HLRBRep_EdgeData.hxx".}
proc rgNLine*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "RgNLine",
    header: "HLRBRep_EdgeData.hxx".}
proc vertical*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "Vertical", header: "HLRBRep_EdgeData.hxx".}
proc vertical*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "Vertical",
    header: "HLRBRep_EdgeData.hxx".}
proc simple*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "Simple", header: "HLRBRep_EdgeData.hxx".}
proc simple*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "Simple",
    header: "HLRBRep_EdgeData.hxx".}
proc outLVSta*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "OutLVSta", header: "HLRBRep_EdgeData.hxx".}
proc outLVSta*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "OutLVSta",
    header: "HLRBRep_EdgeData.hxx".}
proc outLVEnd*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "OutLVEnd", header: "HLRBRep_EdgeData.hxx".}
proc outLVEnd*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "OutLVEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc cutAtSta*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "CutAtSta", header: "HLRBRep_EdgeData.hxx".}
proc cutAtSta*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "CutAtSta",
    header: "HLRBRep_EdgeData.hxx".}
proc cutAtEnd*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "CutAtEnd", header: "HLRBRep_EdgeData.hxx".}
proc cutAtEnd*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "CutAtEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc verAtSta*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "VerAtSta", header: "HLRBRep_EdgeData.hxx".}
proc verAtSta*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "VerAtSta",
    header: "HLRBRep_EdgeData.hxx".}
proc verAtEnd*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "VerAtEnd", header: "HLRBRep_EdgeData.hxx".}
proc verAtEnd*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "VerAtEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc autoIntersectionDone*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect,
    importcpp: "AutoIntersectionDone", header: "HLRBRep_EdgeData.hxx".}
proc autoIntersectionDone*(this: var HLRBRepEdgeData; b: StandardBoolean) {.
    importcpp: "AutoIntersectionDone", header: "HLRBRep_EdgeData.hxx".}
proc used*(this: HLRBRepEdgeData): StandardBoolean {.noSideEffect, importcpp: "Used",
    header: "HLRBRep_EdgeData.hxx".}
proc used*(this: var HLRBRepEdgeData; b: StandardBoolean) {.importcpp: "Used",
    header: "HLRBRep_EdgeData.hxx".}
proc hideCount*(this: HLRBRepEdgeData): StandardInteger {.noSideEffect,
    importcpp: "HideCount", header: "HLRBRep_EdgeData.hxx".}
proc hideCount*(this: var HLRBRepEdgeData; i: StandardInteger) {.
    importcpp: "HideCount", header: "HLRBRep_EdgeData.hxx".}
proc vSta*(this: HLRBRepEdgeData): StandardInteger {.noSideEffect, importcpp: "VSta",
    header: "HLRBRep_EdgeData.hxx".}
proc vSta*(this: var HLRBRepEdgeData; i: StandardInteger) {.importcpp: "VSta",
    header: "HLRBRep_EdgeData.hxx".}
proc vEnd*(this: HLRBRepEdgeData): StandardInteger {.noSideEffect, importcpp: "VEnd",
    header: "HLRBRep_EdgeData.hxx".}
proc vEnd*(this: var HLRBRepEdgeData; i: StandardInteger) {.importcpp: "VEnd",
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

