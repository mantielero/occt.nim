##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepElement_HArray1OfMeasureOrUnspecifiedValue,
  ../TColStd/TColStd_HArray1OfReal, StepElement_MeasureOrUnspecifiedValue,
  StepElement_CurveElementSectionDefinition

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepElement_MeasureOrUnspecifiedValue"
discard "forward decl of StepElement_CurveElementSectionDerivedDefinitions"
discard "forward decl of StepElement_CurveElementSectionDerivedDefinitions"
type
  Handle_StepElement_CurveElementSectionDerivedDefinitions* = handle[
      StepElement_CurveElementSectionDerivedDefinitions]

## ! Representation of STEP entity CurveElementSectionDerivedDefinitions

type
  StepElement_CurveElementSectionDerivedDefinitions* {.
      importcpp: "StepElement_CurveElementSectionDerivedDefinitions",
      header: "StepElement_CurveElementSectionDerivedDefinitions.hxx", bycopy.} = object of StepElement_CurveElementSectionDefinition ##
                                                                                                                               ## !
                                                                                                                               ## Empty
                                                                                                                               ## constructor


proc constructStepElement_CurveElementSectionDerivedDefinitions*(): StepElement_CurveElementSectionDerivedDefinitions {.
    constructor,
    importcpp: "StepElement_CurveElementSectionDerivedDefinitions(@)",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc Init*(this: var StepElement_CurveElementSectionDerivedDefinitions;
    aCurveElementSectionDefinition_Description: handle[TCollection_HAsciiString];
          aCurveElementSectionDefinition_SectionAngle: Standard_Real;
          aCrossSectionalArea: Standard_Real;
          aShearArea: handle[StepElement_HArray1OfMeasureOrUnspecifiedValue];
          aSecondMomentOfArea: handle[TColStd_HArray1OfReal];
          aTorsionalConstant: Standard_Real;
          aWarpingConstant: StepElement_MeasureOrUnspecifiedValue;
    aLocationOfCentroid: handle[StepElement_HArray1OfMeasureOrUnspecifiedValue];
    aLocationOfShearCentre: handle[StepElement_HArray1OfMeasureOrUnspecifiedValue];
    aLocationOfNonStructuralMass: handle[StepElement_HArray1OfMeasureOrUnspecifiedValue];
          aNonStructuralMass: StepElement_MeasureOrUnspecifiedValue;
          aPolarMoment: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "Init",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc CrossSectionalArea*(this: StepElement_CurveElementSectionDerivedDefinitions): Standard_Real {.
    noSideEffect, importcpp: "CrossSectionalArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetCrossSectionalArea*(this: var StepElement_CurveElementSectionDerivedDefinitions;
                           CrossSectionalArea: Standard_Real) {.
    importcpp: "SetCrossSectionalArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc ShearArea*(this: StepElement_CurveElementSectionDerivedDefinitions): handle[
    StepElement_HArray1OfMeasureOrUnspecifiedValue] {.noSideEffect,
    importcpp: "ShearArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetShearArea*(this: var StepElement_CurveElementSectionDerivedDefinitions;
    ShearArea: handle[StepElement_HArray1OfMeasureOrUnspecifiedValue]) {.
    importcpp: "SetShearArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SecondMomentOfArea*(this: StepElement_CurveElementSectionDerivedDefinitions): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "SecondMomentOfArea", header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetSecondMomentOfArea*(this: var StepElement_CurveElementSectionDerivedDefinitions;
                           SecondMomentOfArea: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetSecondMomentOfArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc TorsionalConstant*(this: StepElement_CurveElementSectionDerivedDefinitions): Standard_Real {.
    noSideEffect, importcpp: "TorsionalConstant",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetTorsionalConstant*(this: var StepElement_CurveElementSectionDerivedDefinitions;
                          TorsionalConstant: Standard_Real) {.
    importcpp: "SetTorsionalConstant",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc WarpingConstant*(this: StepElement_CurveElementSectionDerivedDefinitions): StepElement_MeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "WarpingConstant",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetWarpingConstant*(this: var StepElement_CurveElementSectionDerivedDefinitions;
                        WarpingConstant: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "SetWarpingConstant",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc LocationOfCentroid*(this: StepElement_CurveElementSectionDerivedDefinitions): handle[
    StepElement_HArray1OfMeasureOrUnspecifiedValue] {.noSideEffect,
    importcpp: "LocationOfCentroid",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetLocationOfCentroid*(this: var StepElement_CurveElementSectionDerivedDefinitions;
    LocationOfCentroid: handle[StepElement_HArray1OfMeasureOrUnspecifiedValue]) {.
    importcpp: "SetLocationOfCentroid",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc LocationOfShearCentre*(this: StepElement_CurveElementSectionDerivedDefinitions): handle[
    StepElement_HArray1OfMeasureOrUnspecifiedValue] {.noSideEffect,
    importcpp: "LocationOfShearCentre",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetLocationOfShearCentre*(this: var StepElement_CurveElementSectionDerivedDefinitions;
    LocationOfShearCentre: handle[StepElement_HArray1OfMeasureOrUnspecifiedValue]) {.
    importcpp: "SetLocationOfShearCentre",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc LocationOfNonStructuralMass*(this: StepElement_CurveElementSectionDerivedDefinitions): handle[
    StepElement_HArray1OfMeasureOrUnspecifiedValue] {.noSideEffect,
    importcpp: "LocationOfNonStructuralMass",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetLocationOfNonStructuralMass*(this: var StepElement_CurveElementSectionDerivedDefinitions;
    LocationOfNonStructuralMass: handle[StepElement_HArray1OfMeasureOrUnspecifiedValue]) {.
    importcpp: "SetLocationOfNonStructuralMass",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc NonStructuralMass*(this: StepElement_CurveElementSectionDerivedDefinitions): StepElement_MeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "NonStructuralMass",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetNonStructuralMass*(this: var StepElement_CurveElementSectionDerivedDefinitions;
    NonStructuralMass: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "SetNonStructuralMass",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc PolarMoment*(this: StepElement_CurveElementSectionDerivedDefinitions): StepElement_MeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "PolarMoment",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc SetPolarMoment*(this: var StepElement_CurveElementSectionDerivedDefinitions;
                    PolarMoment: StepElement_MeasureOrUnspecifiedValue) {.
    importcpp: "SetPolarMoment",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
type
  StepElement_CurveElementSectionDerivedDefinitionsbase_type* = StepElement_CurveElementSectionDefinition

proc get_type_name*(): cstring {.importcpp: "StepElement_CurveElementSectionDerivedDefinitions::get_type_name(@)", header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepElement_CurveElementSectionDerivedDefinitions::get_type_descriptor(@)",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc DynamicType*(this: StepElement_CurveElementSectionDerivedDefinitions): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}