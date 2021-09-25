##  Created on: 2005-10-14
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
discard "forward decl of Bnd_Box"
type
  IntToolsCurveRangeLocalizeData* {.importcpp: "IntTools_CurveRangeLocalizeData", header: "IntTools_CurveRangeLocalizeData.hxx",
                                   bycopy.} = object


proc constructIntToolsCurveRangeLocalizeData*(theNbSample: int; theMinRange: float): IntToolsCurveRangeLocalizeData {.
    constructor, importcpp: "IntTools_CurveRangeLocalizeData(@)",
    header: "IntTools_CurveRangeLocalizeData.hxx".}
proc getNbSample*(this: IntToolsCurveRangeLocalizeData): int {.noSideEffect,
    importcpp: "GetNbSample", header: "IntTools_CurveRangeLocalizeData.hxx".}
proc getMinRange*(this: IntToolsCurveRangeLocalizeData): float {.noSideEffect,
    importcpp: "GetMinRange", header: "IntTools_CurveRangeLocalizeData.hxx".}
proc addOutRange*(this: var IntToolsCurveRangeLocalizeData;
                 theRange: IntToolsCurveRangeSample) {.importcpp: "AddOutRange",
    header: "IntTools_CurveRangeLocalizeData.hxx".}
proc addBox*(this: var IntToolsCurveRangeLocalizeData;
            theRange: IntToolsCurveRangeSample; theBox: BndBox) {.
    importcpp: "AddBox", header: "IntTools_CurveRangeLocalizeData.hxx".}
proc findBox*(this: IntToolsCurveRangeLocalizeData;
             theRange: IntToolsCurveRangeSample; theBox: var BndBox): bool {.
    noSideEffect, importcpp: "FindBox",
    header: "IntTools_CurveRangeLocalizeData.hxx".}
proc isRangeOut*(this: IntToolsCurveRangeLocalizeData;
                theRange: IntToolsCurveRangeSample): bool {.noSideEffect,
    importcpp: "IsRangeOut", header: "IntTools_CurveRangeLocalizeData.hxx".}
proc listRangeOut*(this: IntToolsCurveRangeLocalizeData;
                  theList: var IntToolsListOfCurveRangeSample) {.noSideEffect,
    importcpp: "ListRangeOut", header: "IntTools_CurveRangeLocalizeData.hxx".}
