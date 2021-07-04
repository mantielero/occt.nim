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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfReal,
  StepGeom_KnotType, StepGeom_BSplineSurface, ../Standard/Standard_Integer,
  StepGeom_HArray2OfCartesianPoint, StepGeom_BSplineSurfaceForm,
  ../StepData/StepData_Logical, ../Standard/Standard_Real

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BSplineSurfaceWithKnots"
discard "forward decl of StepGeom_BSplineSurfaceWithKnots"
type
  Handle_StepGeom_BSplineSurfaceWithKnots* = handle[
      StepGeom_BSplineSurfaceWithKnots]
  StepGeom_BSplineSurfaceWithKnots* {.importcpp: "StepGeom_BSplineSurfaceWithKnots", header: "StepGeom_BSplineSurfaceWithKnots.hxx",
                                     bycopy.} = object of StepGeom_BSplineSurface ## !
                                                                             ## Returns a
                                                                             ## BSplineSurfaceWithKnots


proc constructStepGeom_BSplineSurfaceWithKnots*(): StepGeom_BSplineSurfaceWithKnots {.
    constructor, importcpp: "StepGeom_BSplineSurfaceWithKnots(@)",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc Init*(this: var StepGeom_BSplineSurfaceWithKnots;
          aName: handle[TCollection_HAsciiString]; aUDegree: Standard_Integer;
          aVDegree: Standard_Integer;
          aControlPointsList: handle[StepGeom_HArray2OfCartesianPoint];
          aSurfaceForm: StepGeom_BSplineSurfaceForm; aUClosed: StepData_Logical;
          aVClosed: StepData_Logical; aSelfIntersect: StepData_Logical;
          aUMultiplicities: handle[TColStd_HArray1OfInteger];
          aVMultiplicities: handle[TColStd_HArray1OfInteger];
          aUKnots: handle[TColStd_HArray1OfReal];
          aVKnots: handle[TColStd_HArray1OfReal]; aKnotSpec: StepGeom_KnotType) {.
    importcpp: "Init", header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc SetUMultiplicities*(this: var StepGeom_BSplineSurfaceWithKnots;
                        aUMultiplicities: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetUMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc UMultiplicities*(this: StepGeom_BSplineSurfaceWithKnots): handle[
    TColStd_HArray1OfInteger] {.noSideEffect, importcpp: "UMultiplicities",
                               header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc UMultiplicitiesValue*(this: StepGeom_BSplineSurfaceWithKnots;
                          num: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "UMultiplicitiesValue",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc NbUMultiplicities*(this: StepGeom_BSplineSurfaceWithKnots): Standard_Integer {.
    noSideEffect, importcpp: "NbUMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc SetVMultiplicities*(this: var StepGeom_BSplineSurfaceWithKnots;
                        aVMultiplicities: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetVMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc VMultiplicities*(this: StepGeom_BSplineSurfaceWithKnots): handle[
    TColStd_HArray1OfInteger] {.noSideEffect, importcpp: "VMultiplicities",
                               header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc VMultiplicitiesValue*(this: StepGeom_BSplineSurfaceWithKnots;
                          num: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "VMultiplicitiesValue",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc NbVMultiplicities*(this: StepGeom_BSplineSurfaceWithKnots): Standard_Integer {.
    noSideEffect, importcpp: "NbVMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc SetUKnots*(this: var StepGeom_BSplineSurfaceWithKnots;
               aUKnots: handle[TColStd_HArray1OfReal]) {.importcpp: "SetUKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc UKnots*(this: StepGeom_BSplineSurfaceWithKnots): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "UKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc UKnotsValue*(this: StepGeom_BSplineSurfaceWithKnots; num: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "UKnotsValue",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc NbUKnots*(this: StepGeom_BSplineSurfaceWithKnots): Standard_Integer {.
    noSideEffect, importcpp: "NbUKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc SetVKnots*(this: var StepGeom_BSplineSurfaceWithKnots;
               aVKnots: handle[TColStd_HArray1OfReal]) {.importcpp: "SetVKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc VKnots*(this: StepGeom_BSplineSurfaceWithKnots): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "VKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc VKnotsValue*(this: StepGeom_BSplineSurfaceWithKnots; num: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "VKnotsValue",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc NbVKnots*(this: StepGeom_BSplineSurfaceWithKnots): Standard_Integer {.
    noSideEffect, importcpp: "NbVKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc SetKnotSpec*(this: var StepGeom_BSplineSurfaceWithKnots;
                 aKnotSpec: StepGeom_KnotType) {.importcpp: "SetKnotSpec",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc KnotSpec*(this: StepGeom_BSplineSurfaceWithKnots): StepGeom_KnotType {.
    noSideEffect, importcpp: "KnotSpec",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
type
  StepGeom_BSplineSurfaceWithKnotsbase_type* = StepGeom_BSplineSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_BSplineSurfaceWithKnots::get_type_name(@)",
                              header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_BSplineSurfaceWithKnots::get_type_descriptor(@)",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc DynamicType*(this: StepGeom_BSplineSurfaceWithKnots): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}