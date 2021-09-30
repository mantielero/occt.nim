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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepElement_MeasureOrUnspecifiedValue"
discard "forward decl of StepElement_CurveElementSectionDerivedDefinitions"
discard "forward decl of StepElement_CurveElementSectionDerivedDefinitions"
type
  HandleC1C1* = Handle[StepElementCurveElementSectionDerivedDefinitions]

## ! Representation of STEP entity CurveElementSectionDerivedDefinitions

type
  StepElementCurveElementSectionDerivedDefinitions* {.
      importcpp: "StepElement_CurveElementSectionDerivedDefinitions",
      header: "StepElement_CurveElementSectionDerivedDefinitions.hxx", bycopy.} = object of StepElementCurveElementSectionDefinition ##
                                                                                                                              ## !
                                                                                                                              ## Empty
                                                                                                                              ## constructor


proc constructStepElementCurveElementSectionDerivedDefinitions*(): StepElementCurveElementSectionDerivedDefinitions {.
    constructor,
    importcpp: "StepElement_CurveElementSectionDerivedDefinitions(@)",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc init*(this: var StepElementCurveElementSectionDerivedDefinitions;
    aCurveElementSectionDefinitionDescription: Handle[TCollectionHAsciiString];
          aCurveElementSectionDefinitionSectionAngle: cfloat;
          aCrossSectionalArea: cfloat;
          aShearArea: Handle[StepElementHArray1OfMeasureOrUnspecifiedValue];
          aSecondMomentOfArea: Handle[TColStdHArray1OfReal];
          aTorsionalConstant: cfloat;
          aWarpingConstant: StepElementMeasureOrUnspecifiedValue;
    aLocationOfCentroid: Handle[StepElementHArray1OfMeasureOrUnspecifiedValue];
    aLocationOfShearCentre: Handle[StepElementHArray1OfMeasureOrUnspecifiedValue];
    aLocationOfNonStructuralMass: Handle[StepElementHArray1OfMeasureOrUnspecifiedValue];
          aNonStructuralMass: StepElementMeasureOrUnspecifiedValue;
          aPolarMoment: StepElementMeasureOrUnspecifiedValue) {.importcpp: "Init",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc crossSectionalArea*(this: StepElementCurveElementSectionDerivedDefinitions): cfloat {.
    noSideEffect, importcpp: "CrossSectionalArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setCrossSectionalArea*(this: var StepElementCurveElementSectionDerivedDefinitions;
                           crossSectionalArea: cfloat) {.
    importcpp: "SetCrossSectionalArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc shearArea*(this: StepElementCurveElementSectionDerivedDefinitions): Handle[
    StepElementHArray1OfMeasureOrUnspecifiedValue] {.noSideEffect,
    importcpp: "ShearArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setShearArea*(this: var StepElementCurveElementSectionDerivedDefinitions;
    shearArea: Handle[StepElementHArray1OfMeasureOrUnspecifiedValue]) {.
    importcpp: "SetShearArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc secondMomentOfArea*(this: StepElementCurveElementSectionDerivedDefinitions): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "SecondMomentOfArea", header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setSecondMomentOfArea*(this: var StepElementCurveElementSectionDerivedDefinitions;
                           secondMomentOfArea: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetSecondMomentOfArea",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc torsionalConstant*(this: StepElementCurveElementSectionDerivedDefinitions): cfloat {.
    noSideEffect, importcpp: "TorsionalConstant",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setTorsionalConstant*(this: var StepElementCurveElementSectionDerivedDefinitions;
                          torsionalConstant: cfloat) {.
    importcpp: "SetTorsionalConstant",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc warpingConstant*(this: StepElementCurveElementSectionDerivedDefinitions): StepElementMeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "WarpingConstant",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setWarpingConstant*(this: var StepElementCurveElementSectionDerivedDefinitions;
                        warpingConstant: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "SetWarpingConstant",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc locationOfCentroid*(this: StepElementCurveElementSectionDerivedDefinitions): Handle[
    StepElementHArray1OfMeasureOrUnspecifiedValue] {.noSideEffect,
    importcpp: "LocationOfCentroid",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setLocationOfCentroid*(this: var StepElementCurveElementSectionDerivedDefinitions;
    locationOfCentroid: Handle[StepElementHArray1OfMeasureOrUnspecifiedValue]) {.
    importcpp: "SetLocationOfCentroid",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc locationOfShearCentre*(this: StepElementCurveElementSectionDerivedDefinitions): Handle[
    StepElementHArray1OfMeasureOrUnspecifiedValue] {.noSideEffect,
    importcpp: "LocationOfShearCentre",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setLocationOfShearCentre*(this: var StepElementCurveElementSectionDerivedDefinitions;
    locationOfShearCentre: Handle[StepElementHArray1OfMeasureOrUnspecifiedValue]) {.
    importcpp: "SetLocationOfShearCentre",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc locationOfNonStructuralMass*(this: StepElementCurveElementSectionDerivedDefinitions): Handle[
    StepElementHArray1OfMeasureOrUnspecifiedValue] {.noSideEffect,
    importcpp: "LocationOfNonStructuralMass",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setLocationOfNonStructuralMass*(this: var StepElementCurveElementSectionDerivedDefinitions;
    locationOfNonStructuralMass: Handle[StepElementHArray1OfMeasureOrUnspecifiedValue]) {.
    importcpp: "SetLocationOfNonStructuralMass",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc nonStructuralMass*(this: StepElementCurveElementSectionDerivedDefinitions): StepElementMeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "NonStructuralMass",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setNonStructuralMass*(this: var StepElementCurveElementSectionDerivedDefinitions;
    nonStructuralMass: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "SetNonStructuralMass",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc polarMoment*(this: StepElementCurveElementSectionDerivedDefinitions): StepElementMeasureOrUnspecifiedValue {.
    noSideEffect, importcpp: "PolarMoment",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc setPolarMoment*(this: var StepElementCurveElementSectionDerivedDefinitions;
                    polarMoment: StepElementMeasureOrUnspecifiedValue) {.
    importcpp: "SetPolarMoment",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
type
  StepElementCurveElementSectionDerivedDefinitionsbaseType* = StepElementCurveElementSectionDefinition

proc getTypeName*(): cstring {.importcpp: "StepElement_CurveElementSectionDerivedDefinitions::get_type_name(@)", header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_CurveElementSectionDerivedDefinitions::get_type_descriptor(@)",
    header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}
proc dynamicType*(this: StepElementCurveElementSectionDerivedDefinitions): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepElement_CurveElementSectionDerivedDefinitions.hxx".}

























