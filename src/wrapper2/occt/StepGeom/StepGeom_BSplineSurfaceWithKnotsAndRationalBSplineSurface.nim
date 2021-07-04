##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_BSplineSurface,
  ../Standard/Standard_Integer, StepGeom_HArray2OfCartesianPoint,
  StepGeom_BSplineSurfaceForm, ../StepData/StepData_Logical,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfReal,
  StepGeom_KnotType, ../TColStd/TColStd_HArray2OfReal, ../Standard/Standard_Real

discard "forward decl of StepGeom_BSplineSurfaceWithKnots"
discard "forward decl of StepGeom_RationalBSplineSurface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface"
discard "forward decl of StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface"
type
  Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface* = handle[
      StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface]
  StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface* {.
      importcpp: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface",
      header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx",
      bycopy.} = object of StepGeom_BSplineSurface ## ! Returns a
                                              ## BSplineSurfaceWithKnotsAndRationalBSplineSurface


proc constructStepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface*(): StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface {.
    constructor,
    importcpp: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface(@)",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc Init*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
          aName: handle[TCollection_HAsciiString]; aUDegree: Standard_Integer;
          aVDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray2OfCartesianPoint];
          aSurfaceForm: StepGeom_BSplineSurfaceForm; aUClosed: StepData_Logical;
          aVClosed: StepData_Logical; aSelfIntersect: StepData_Logical;
          aBSplineSurfaceWithKnots: handle[StepGeom_BSplineSurfaceWithKnots];
          aRationalBSplineSurface: handle[StepGeom_RationalBSplineSurface]) {.
    importcpp: "Init",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc Init*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
          aName: handle[TCollection_HAsciiString]; aUDegree: Standard_Integer;
          aVDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray2OfCartesianPoint];
          aSurfaceForm: StepGeom_BSplineSurfaceForm; aUClosed: StepData_Logical;
          aVClosed: StepData_Logical; aSelfIntersect: StepData_Logical;
          aUMultiplicities: handle[TColStd_HArray1OfInteger];
          aVMultiplicities: handle[TColStd_HArray1OfInteger];
          aUKnots: handle[TColStd_HArray1OfReal];
          aVKnots: handle[TColStd_HArray1OfReal]; aKnotSpec: StepGeom_KnotType;
          aWeightsData: handle[TColStd_HArray2OfReal]) {.importcpp: "Init",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc SetBSplineSurfaceWithKnots*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
    aBSplineSurfaceWithKnots: handle[StepGeom_BSplineSurfaceWithKnots]) {.
    importcpp: "SetBSplineSurfaceWithKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc BSplineSurfaceWithKnots*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): handle[
    StepGeom_BSplineSurfaceWithKnots] {.noSideEffect,
                                       importcpp: "BSplineSurfaceWithKnots", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc SetRationalBSplineSurface*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
    aRationalBSplineSurface: handle[StepGeom_RationalBSplineSurface]) {.
    importcpp: "SetRationalBSplineSurface",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc RationalBSplineSurface*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): handle[
    StepGeom_RationalBSplineSurface] {.noSideEffect,
                                      importcpp: "RationalBSplineSurface", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc SetUMultiplicities*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
                        aUMultiplicities: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetUMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc UMultiplicities*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): handle[
    TColStd_HArray1OfInteger] {.noSideEffect, importcpp: "UMultiplicities", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc UMultiplicitiesValue*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
                          num: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "UMultiplicitiesValue",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc NbUMultiplicities*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbUMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc SetVMultiplicities*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
                        aVMultiplicities: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetVMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc VMultiplicities*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): handle[
    TColStd_HArray1OfInteger] {.noSideEffect, importcpp: "VMultiplicities", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc VMultiplicitiesValue*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
                          num: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "VMultiplicitiesValue",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc NbVMultiplicities*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbVMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc SetUKnots*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
               aUKnots: handle[TColStd_HArray1OfReal]) {.importcpp: "SetUKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc UKnots*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "UKnots", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc UKnotsValue*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
                 num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "UKnotsValue",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc NbUKnots*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbUKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc SetVKnots*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
               aVKnots: handle[TColStd_HArray1OfReal]) {.importcpp: "SetVKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc VKnots*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "VKnots", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc VKnotsValue*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
                 num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "VKnotsValue",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc NbVKnots*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbVKnots",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc SetKnotSpec*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
                 aKnotSpec: StepGeom_KnotType) {.importcpp: "SetKnotSpec",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc KnotSpec*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): StepGeom_KnotType {.
    noSideEffect, importcpp: "KnotSpec",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc SetWeightsData*(this: var StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
                    aWeightsData: handle[TColStd_HArray2OfReal]) {.
    importcpp: "SetWeightsData",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc WeightsData*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): handle[
    TColStd_HArray2OfReal] {.noSideEffect, importcpp: "WeightsData", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc WeightsDataValue*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface;
                      num1: Standard_Integer; num2: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "WeightsDataValue",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc NbWeightsDataI*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbWeightsDataI",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc NbWeightsDataJ*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbWeightsDataJ",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
type
  StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurfacebase_type* = StepGeom_BSplineSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface::get_type_name(@)", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface::get_type_descriptor(@)",
    header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}
proc DynamicType*(this: StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx".}