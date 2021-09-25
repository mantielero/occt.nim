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

discard "forward decl of IntTools_Range"
type
  IntToolsCurveRangeSample* {.importcpp: "IntTools_CurveRangeSample",
                             header: "IntTools_CurveRangeSample.hxx", bycopy.} = object of IntToolsBaseRangeSample


proc constructIntToolsCurveRangeSample*(): IntToolsCurveRangeSample {.constructor,
    importcpp: "IntTools_CurveRangeSample(@)",
    header: "IntTools_CurveRangeSample.hxx".}
proc constructIntToolsCurveRangeSample*(theIndex: int): IntToolsCurveRangeSample {.
    constructor, importcpp: "IntTools_CurveRangeSample(@)",
    header: "IntTools_CurveRangeSample.hxx".}
proc setRangeIndex*(this: var IntToolsCurveRangeSample; theIndex: int) {.
    importcpp: "SetRangeIndex", header: "IntTools_CurveRangeSample.hxx".}
proc getRangeIndex*(this: IntToolsCurveRangeSample): int {.noSideEffect,
    importcpp: "GetRangeIndex", header: "IntTools_CurveRangeSample.hxx".}
proc isEqual*(this: IntToolsCurveRangeSample; other: IntToolsCurveRangeSample): bool {.
    noSideEffect, importcpp: "IsEqual", header: "IntTools_CurveRangeSample.hxx".}
proc getRange*(this: IntToolsCurveRangeSample; theFirst: float; theLast: float;
              theNbSample: int): IntToolsRange {.noSideEffect,
    importcpp: "GetRange", header: "IntTools_CurveRangeSample.hxx".}
proc getRangeIndexDeeper*(this: IntToolsCurveRangeSample; theNbSample: int): int {.
    noSideEffect, importcpp: "GetRangeIndexDeeper",
    header: "IntTools_CurveRangeSample.hxx".}
