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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, IntTools_MapOfCurveSample,
  IntTools_DataMapOfCurveSampleBox, ../Standard/Standard_Boolean,
  IntTools_ListOfCurveRangeSample

discard "forward decl of IntTools_CurveRangeSample"
discard "forward decl of Bnd_Box"
type
  IntTools_CurveRangeLocalizeData* {.importcpp: "IntTools_CurveRangeLocalizeData", header: "IntTools_CurveRangeLocalizeData.hxx",
                                    bycopy.} = object


proc constructIntTools_CurveRangeLocalizeData*(theNbSample: Standard_Integer;
    theMinRange: Standard_Real): IntTools_CurveRangeLocalizeData {.constructor,
    importcpp: "IntTools_CurveRangeLocalizeData(@)",
    header: "IntTools_CurveRangeLocalizeData.hxx".}
proc GetNbSample*(this: IntTools_CurveRangeLocalizeData): Standard_Integer {.
    noSideEffect, importcpp: "GetNbSample",
    header: "IntTools_CurveRangeLocalizeData.hxx".}
proc GetMinRange*(this: IntTools_CurveRangeLocalizeData): Standard_Real {.
    noSideEffect, importcpp: "GetMinRange",
    header: "IntTools_CurveRangeLocalizeData.hxx".}
proc AddOutRange*(this: var IntTools_CurveRangeLocalizeData;
                 theRange: IntTools_CurveRangeSample) {.importcpp: "AddOutRange",
    header: "IntTools_CurveRangeLocalizeData.hxx".}
proc AddBox*(this: var IntTools_CurveRangeLocalizeData;
            theRange: IntTools_CurveRangeSample; theBox: Bnd_Box) {.
    importcpp: "AddBox", header: "IntTools_CurveRangeLocalizeData.hxx".}
proc FindBox*(this: IntTools_CurveRangeLocalizeData;
             theRange: IntTools_CurveRangeSample; theBox: var Bnd_Box): Standard_Boolean {.
    noSideEffect, importcpp: "FindBox",
    header: "IntTools_CurveRangeLocalizeData.hxx".}
proc IsRangeOut*(this: IntTools_CurveRangeLocalizeData;
                theRange: IntTools_CurveRangeSample): Standard_Boolean {.
    noSideEffect, importcpp: "IsRangeOut",
    header: "IntTools_CurveRangeLocalizeData.hxx".}
proc ListRangeOut*(this: IntTools_CurveRangeLocalizeData;
                  theList: var IntTools_ListOfCurveRangeSample) {.noSideEffect,
    importcpp: "ListRangeOut", header: "IntTools_CurveRangeLocalizeData.hxx".}