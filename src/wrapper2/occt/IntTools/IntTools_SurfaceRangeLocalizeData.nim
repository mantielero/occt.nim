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
  ../Standard/Standard_Real, IntTools_MapOfSurfaceSample,
  IntTools_DataMapOfSurfaceSampleBox, ../TColStd/TColStd_HArray1OfReal,
  ../TColgp/TColgp_HArray2OfPnt, ../Standard/Standard_Boolean,
  IntTools_ListOfSurfaceRangeSample

discard "forward decl of IntTools_SurfaceRangeSample"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  IntTools_SurfaceRangeLocalizeData* {.importcpp: "IntTools_SurfaceRangeLocalizeData", header: "IntTools_SurfaceRangeLocalizeData.hxx",
                                      bycopy.} = object


proc constructIntTools_SurfaceRangeLocalizeData*(): IntTools_SurfaceRangeLocalizeData {.
    constructor, importcpp: "IntTools_SurfaceRangeLocalizeData(@)",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc constructIntTools_SurfaceRangeLocalizeData*(theNbSampleU: Standard_Integer;
    theNbSampleV: Standard_Integer; theMinRangeU: Standard_Real;
    theMinRangeV: Standard_Real): IntTools_SurfaceRangeLocalizeData {.constructor,
    importcpp: "IntTools_SurfaceRangeLocalizeData(@)",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc constructIntTools_SurfaceRangeLocalizeData*(
    Other: IntTools_SurfaceRangeLocalizeData): IntTools_SurfaceRangeLocalizeData {.
    constructor, importcpp: "IntTools_SurfaceRangeLocalizeData(@)",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc Assign*(this: var IntTools_SurfaceRangeLocalizeData;
            Other: IntTools_SurfaceRangeLocalizeData): var IntTools_SurfaceRangeLocalizeData {.
    importcpp: "Assign", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetNbSampleU*(this: IntTools_SurfaceRangeLocalizeData): Standard_Integer {.
    noSideEffect, importcpp: "GetNbSampleU",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetNbSampleV*(this: IntTools_SurfaceRangeLocalizeData): Standard_Integer {.
    noSideEffect, importcpp: "GetNbSampleV",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetMinRangeU*(this: IntTools_SurfaceRangeLocalizeData): Standard_Real {.
    noSideEffect, importcpp: "GetMinRangeU",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetMinRangeV*(this: IntTools_SurfaceRangeLocalizeData): Standard_Real {.
    noSideEffect, importcpp: "GetMinRangeV",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc AddOutRange*(this: var IntTools_SurfaceRangeLocalizeData;
                 theRange: IntTools_SurfaceRangeSample) {.
    importcpp: "AddOutRange", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc AddBox*(this: var IntTools_SurfaceRangeLocalizeData;
            theRange: IntTools_SurfaceRangeSample; theBox: Bnd_Box) {.
    importcpp: "AddBox", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc FindBox*(this: IntTools_SurfaceRangeLocalizeData;
             theRange: IntTools_SurfaceRangeSample; theBox: var Bnd_Box): Standard_Boolean {.
    noSideEffect, importcpp: "FindBox",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc IsRangeOut*(this: IntTools_SurfaceRangeLocalizeData;
                theRange: IntTools_SurfaceRangeSample): Standard_Boolean {.
    noSideEffect, importcpp: "IsRangeOut",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc ListRangeOut*(this: IntTools_SurfaceRangeLocalizeData;
                  theList: var IntTools_ListOfSurfaceRangeSample) {.noSideEffect,
    importcpp: "ListRangeOut", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc RemoveRangeOutAll*(this: var IntTools_SurfaceRangeLocalizeData) {.
    importcpp: "RemoveRangeOutAll",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc SetGridDeflection*(this: var IntTools_SurfaceRangeLocalizeData;
                       theDeflection: Standard_Real) {.
    importcpp: "SetGridDeflection",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetGridDeflection*(this: IntTools_SurfaceRangeLocalizeData): Standard_Real {.
    noSideEffect, importcpp: "GetGridDeflection",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc SetRangeUGrid*(this: var IntTools_SurfaceRangeLocalizeData;
                   theNbUGrid: Standard_Integer) {.importcpp: "SetRangeUGrid",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetRangeUGrid*(this: IntTools_SurfaceRangeLocalizeData): Standard_Integer {.
    noSideEffect, importcpp: "GetRangeUGrid",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc SetUParam*(this: var IntTools_SurfaceRangeLocalizeData;
               theIndex: Standard_Integer; theUParam: Standard_Real) {.
    importcpp: "SetUParam", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetUParam*(this: IntTools_SurfaceRangeLocalizeData; theIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetUParam",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc SetRangeVGrid*(this: var IntTools_SurfaceRangeLocalizeData;
                   theNbVGrid: Standard_Integer) {.importcpp: "SetRangeVGrid",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetRangeVGrid*(this: IntTools_SurfaceRangeLocalizeData): Standard_Integer {.
    noSideEffect, importcpp: "GetRangeVGrid",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc SetVParam*(this: var IntTools_SurfaceRangeLocalizeData;
               theIndex: Standard_Integer; theVParam: Standard_Real) {.
    importcpp: "SetVParam", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetVParam*(this: IntTools_SurfaceRangeLocalizeData; theIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetVParam",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc SetGridPoint*(this: var IntTools_SurfaceRangeLocalizeData;
                  theUIndex: Standard_Integer; theVIndex: Standard_Integer;
                  thePoint: gp_Pnt) {.importcpp: "SetGridPoint", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetGridPoint*(this: IntTools_SurfaceRangeLocalizeData;
                  theUIndex: Standard_Integer; theVIndex: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "GetGridPoint",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc SetFrame*(this: var IntTools_SurfaceRangeLocalizeData; theUMin: Standard_Real;
              theUMax: Standard_Real; theVMin: Standard_Real; theVMax: Standard_Real) {.
    importcpp: "SetFrame", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetNBUPointsInFrame*(this: IntTools_SurfaceRangeLocalizeData): Standard_Integer {.
    noSideEffect, importcpp: "GetNBUPointsInFrame",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetNBVPointsInFrame*(this: IntTools_SurfaceRangeLocalizeData): Standard_Integer {.
    noSideEffect, importcpp: "GetNBVPointsInFrame",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetPointInFrame*(this: IntTools_SurfaceRangeLocalizeData;
                     theUIndex: Standard_Integer; theVIndex: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "GetPointInFrame",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetUParamInFrame*(this: IntTools_SurfaceRangeLocalizeData;
                      theIndex: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "GetUParamInFrame", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc GetVParamInFrame*(this: IntTools_SurfaceRangeLocalizeData;
                      theIndex: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "GetVParamInFrame", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc ClearGrid*(this: var IntTools_SurfaceRangeLocalizeData) {.
    importcpp: "ClearGrid", header: "IntTools_SurfaceRangeLocalizeData.hxx".}