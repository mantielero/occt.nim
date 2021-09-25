##  Created on: 2005-10-05
##  Created by: Mikhail KLOKOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

discard "forward decl of IntTools_CurveRangeSample"
discard "forward decl of IntTools_Range"
type
  IntToolsSurfaceRangeSample* {.importcpp: "IntTools_SurfaceRangeSample",
                               header: "IntTools_SurfaceRangeSample.hxx", bycopy.} = object


proc constructIntToolsSurfaceRangeSample*(): IntToolsSurfaceRangeSample {.
    constructor, importcpp: "IntTools_SurfaceRangeSample(@)",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc constructIntToolsSurfaceRangeSample*(theIndexU: int; theDepthU: int;
    theIndexV: int; theDepthV: int): IntToolsSurfaceRangeSample {.constructor,
    importcpp: "IntTools_SurfaceRangeSample(@)",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc constructIntToolsSurfaceRangeSample*(theRangeU: IntToolsCurveRangeSample;
    theRangeV: IntToolsCurveRangeSample): IntToolsSurfaceRangeSample {.constructor,
    importcpp: "IntTools_SurfaceRangeSample(@)",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc constructIntToolsSurfaceRangeSample*(other: IntToolsSurfaceRangeSample): IntToolsSurfaceRangeSample {.
    constructor, importcpp: "IntTools_SurfaceRangeSample(@)",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc assign*(this: var IntToolsSurfaceRangeSample; other: IntToolsSurfaceRangeSample): var IntToolsSurfaceRangeSample {.
    importcpp: "Assign", header: "IntTools_SurfaceRangeSample.hxx".}
proc setRanges*(this: var IntToolsSurfaceRangeSample;
               theRangeU: IntToolsCurveRangeSample;
               theRangeV: IntToolsCurveRangeSample) {.importcpp: "SetRanges",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc getRanges*(this: IntToolsSurfaceRangeSample;
               theRangeU: var IntToolsCurveRangeSample;
               theRangeV: var IntToolsCurveRangeSample) {.noSideEffect,
    importcpp: "GetRanges", header: "IntTools_SurfaceRangeSample.hxx".}
proc setIndexes*(this: var IntToolsSurfaceRangeSample; theIndexU: int; theIndexV: int) {.
    importcpp: "SetIndexes", header: "IntTools_SurfaceRangeSample.hxx".}
proc getIndexes*(this: IntToolsSurfaceRangeSample; theIndexU: var int;
                theIndexV: var int) {.noSideEffect, importcpp: "GetIndexes",
                                   header: "IntTools_SurfaceRangeSample.hxx".}
proc getDepths*(this: IntToolsSurfaceRangeSample; theDepthU: var int;
               theDepthV: var int) {.noSideEffect, importcpp: "GetDepths",
                                  header: "IntTools_SurfaceRangeSample.hxx".}
proc setSampleRangeU*(this: var IntToolsSurfaceRangeSample;
                     theRangeSampleU: IntToolsCurveRangeSample) {.
    importcpp: "SetSampleRangeU", header: "IntTools_SurfaceRangeSample.hxx".}
proc getSampleRangeU*(this: IntToolsSurfaceRangeSample): IntToolsCurveRangeSample {.
    noSideEffect, importcpp: "GetSampleRangeU",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc setSampleRangeV*(this: var IntToolsSurfaceRangeSample;
                     theRangeSampleV: IntToolsCurveRangeSample) {.
    importcpp: "SetSampleRangeV", header: "IntTools_SurfaceRangeSample.hxx".}
proc getSampleRangeV*(this: IntToolsSurfaceRangeSample): IntToolsCurveRangeSample {.
    noSideEffect, importcpp: "GetSampleRangeV",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc setIndexU*(this: var IntToolsSurfaceRangeSample; theIndexU: int) {.
    importcpp: "SetIndexU", header: "IntTools_SurfaceRangeSample.hxx".}
proc getIndexU*(this: IntToolsSurfaceRangeSample): int {.noSideEffect,
    importcpp: "GetIndexU", header: "IntTools_SurfaceRangeSample.hxx".}
proc setIndexV*(this: var IntToolsSurfaceRangeSample; theIndexV: int) {.
    importcpp: "SetIndexV", header: "IntTools_SurfaceRangeSample.hxx".}
proc getIndexV*(this: IntToolsSurfaceRangeSample): int {.noSideEffect,
    importcpp: "GetIndexV", header: "IntTools_SurfaceRangeSample.hxx".}
proc setDepthU*(this: var IntToolsSurfaceRangeSample; theDepthU: int) {.
    importcpp: "SetDepthU", header: "IntTools_SurfaceRangeSample.hxx".}
proc getDepthU*(this: IntToolsSurfaceRangeSample): int {.noSideEffect,
    importcpp: "GetDepthU", header: "IntTools_SurfaceRangeSample.hxx".}
proc setDepthV*(this: var IntToolsSurfaceRangeSample; theDepthV: int) {.
    importcpp: "SetDepthV", header: "IntTools_SurfaceRangeSample.hxx".}
proc getDepthV*(this: IntToolsSurfaceRangeSample): int {.noSideEffect,
    importcpp: "GetDepthV", header: "IntTools_SurfaceRangeSample.hxx".}
proc getRangeU*(this: IntToolsSurfaceRangeSample; theFirstU: float; theLastU: float;
               theNbSampleU: int): IntToolsRange {.noSideEffect,
    importcpp: "GetRangeU", header: "IntTools_SurfaceRangeSample.hxx".}
proc getRangeV*(this: IntToolsSurfaceRangeSample; theFirstV: float; theLastV: float;
               theNbSampleV: int): IntToolsRange {.noSideEffect,
    importcpp: "GetRangeV", header: "IntTools_SurfaceRangeSample.hxx".}
proc isEqual*(this: IntToolsSurfaceRangeSample; other: IntToolsSurfaceRangeSample): bool {.
    noSideEffect, importcpp: "IsEqual", header: "IntTools_SurfaceRangeSample.hxx".}
proc getRangeIndexUDeeper*(this: IntToolsSurfaceRangeSample; theNbSampleU: int): int {.
    noSideEffect, importcpp: "GetRangeIndexUDeeper",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc getRangeIndexVDeeper*(this: IntToolsSurfaceRangeSample; theNbSampleV: int): int {.
    noSideEffect, importcpp: "GetRangeIndexVDeeper",
    header: "IntTools_SurfaceRangeSample.hxx".}
