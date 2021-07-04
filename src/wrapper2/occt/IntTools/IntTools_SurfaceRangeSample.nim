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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, IntTools_CurveRangeSample,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of IntTools_CurveRangeSample"
discard "forward decl of IntTools_Range"
type
  IntTools_SurfaceRangeSample* {.importcpp: "IntTools_SurfaceRangeSample",
                                header: "IntTools_SurfaceRangeSample.hxx", bycopy.} = object


proc constructIntTools_SurfaceRangeSample*(): IntTools_SurfaceRangeSample {.
    constructor, importcpp: "IntTools_SurfaceRangeSample(@)",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc constructIntTools_SurfaceRangeSample*(theIndexU: Standard_Integer;
    theDepthU: Standard_Integer; theIndexV: Standard_Integer;
    theDepthV: Standard_Integer): IntTools_SurfaceRangeSample {.constructor,
    importcpp: "IntTools_SurfaceRangeSample(@)",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc constructIntTools_SurfaceRangeSample*(theRangeU: IntTools_CurveRangeSample;
    theRangeV: IntTools_CurveRangeSample): IntTools_SurfaceRangeSample {.
    constructor, importcpp: "IntTools_SurfaceRangeSample(@)",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc constructIntTools_SurfaceRangeSample*(Other: IntTools_SurfaceRangeSample): IntTools_SurfaceRangeSample {.
    constructor, importcpp: "IntTools_SurfaceRangeSample(@)",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc Assign*(this: var IntTools_SurfaceRangeSample;
            Other: IntTools_SurfaceRangeSample): var IntTools_SurfaceRangeSample {.
    importcpp: "Assign", header: "IntTools_SurfaceRangeSample.hxx".}
proc SetRanges*(this: var IntTools_SurfaceRangeSample;
               theRangeU: IntTools_CurveRangeSample;
               theRangeV: IntTools_CurveRangeSample) {.importcpp: "SetRanges",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc GetRanges*(this: IntTools_SurfaceRangeSample;
               theRangeU: var IntTools_CurveRangeSample;
               theRangeV: var IntTools_CurveRangeSample) {.noSideEffect,
    importcpp: "GetRanges", header: "IntTools_SurfaceRangeSample.hxx".}
proc SetIndexes*(this: var IntTools_SurfaceRangeSample; theIndexU: Standard_Integer;
                theIndexV: Standard_Integer) {.importcpp: "SetIndexes",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc GetIndexes*(this: IntTools_SurfaceRangeSample;
                theIndexU: var Standard_Integer; theIndexV: var Standard_Integer) {.
    noSideEffect, importcpp: "GetIndexes",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc GetDepths*(this: IntTools_SurfaceRangeSample; theDepthU: var Standard_Integer;
               theDepthV: var Standard_Integer) {.noSideEffect,
    importcpp: "GetDepths", header: "IntTools_SurfaceRangeSample.hxx".}
proc SetSampleRangeU*(this: var IntTools_SurfaceRangeSample;
                     theRangeSampleU: IntTools_CurveRangeSample) {.
    importcpp: "SetSampleRangeU", header: "IntTools_SurfaceRangeSample.hxx".}
proc GetSampleRangeU*(this: IntTools_SurfaceRangeSample): IntTools_CurveRangeSample {.
    noSideEffect, importcpp: "GetSampleRangeU",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc SetSampleRangeV*(this: var IntTools_SurfaceRangeSample;
                     theRangeSampleV: IntTools_CurveRangeSample) {.
    importcpp: "SetSampleRangeV", header: "IntTools_SurfaceRangeSample.hxx".}
proc GetSampleRangeV*(this: IntTools_SurfaceRangeSample): IntTools_CurveRangeSample {.
    noSideEffect, importcpp: "GetSampleRangeV",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc SetIndexU*(this: var IntTools_SurfaceRangeSample; theIndexU: Standard_Integer) {.
    importcpp: "SetIndexU", header: "IntTools_SurfaceRangeSample.hxx".}
proc GetIndexU*(this: IntTools_SurfaceRangeSample): Standard_Integer {.noSideEffect,
    importcpp: "GetIndexU", header: "IntTools_SurfaceRangeSample.hxx".}
proc SetIndexV*(this: var IntTools_SurfaceRangeSample; theIndexV: Standard_Integer) {.
    importcpp: "SetIndexV", header: "IntTools_SurfaceRangeSample.hxx".}
proc GetIndexV*(this: IntTools_SurfaceRangeSample): Standard_Integer {.noSideEffect,
    importcpp: "GetIndexV", header: "IntTools_SurfaceRangeSample.hxx".}
proc SetDepthU*(this: var IntTools_SurfaceRangeSample; theDepthU: Standard_Integer) {.
    importcpp: "SetDepthU", header: "IntTools_SurfaceRangeSample.hxx".}
proc GetDepthU*(this: IntTools_SurfaceRangeSample): Standard_Integer {.noSideEffect,
    importcpp: "GetDepthU", header: "IntTools_SurfaceRangeSample.hxx".}
proc SetDepthV*(this: var IntTools_SurfaceRangeSample; theDepthV: Standard_Integer) {.
    importcpp: "SetDepthV", header: "IntTools_SurfaceRangeSample.hxx".}
proc GetDepthV*(this: IntTools_SurfaceRangeSample): Standard_Integer {.noSideEffect,
    importcpp: "GetDepthV", header: "IntTools_SurfaceRangeSample.hxx".}
proc GetRangeU*(this: IntTools_SurfaceRangeSample; theFirstU: Standard_Real;
               theLastU: Standard_Real; theNbSampleU: Standard_Integer): IntTools_Range {.
    noSideEffect, importcpp: "GetRangeU", header: "IntTools_SurfaceRangeSample.hxx".}
proc GetRangeV*(this: IntTools_SurfaceRangeSample; theFirstV: Standard_Real;
               theLastV: Standard_Real; theNbSampleV: Standard_Integer): IntTools_Range {.
    noSideEffect, importcpp: "GetRangeV", header: "IntTools_SurfaceRangeSample.hxx".}
proc IsEqual*(this: IntTools_SurfaceRangeSample; Other: IntTools_SurfaceRangeSample): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "IntTools_SurfaceRangeSample.hxx".}
proc GetRangeIndexUDeeper*(this: IntTools_SurfaceRangeSample;
                          theNbSampleU: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetRangeIndexUDeeper",
    header: "IntTools_SurfaceRangeSample.hxx".}
proc GetRangeIndexVDeeper*(this: IntTools_SurfaceRangeSample;
                          theNbSampleV: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetRangeIndexVDeeper",
    header: "IntTools_SurfaceRangeSample.hxx".}