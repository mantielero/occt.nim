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
discard "forward decl of StepFEA_Curve3dElementProperty"
discard "forward decl of StepFEA_Curve3dElementProperty"
type
  HandleC1C1* = Handle[StepFEA_Curve3dElementProperty]

## ! Representation of STEP entity Curve3dElementProperty

type
  StepFEA_Curve3dElementProperty* {.importcpp: "StepFEA_Curve3dElementProperty", header: "StepFEA_Curve3dElementProperty.hxx",
                                   bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepFEA_Curve3dElementProperty*(): StepFEA_Curve3dElementProperty {.
    constructor, importcpp: "StepFEA_Curve3dElementProperty(@)",
    header: "StepFEA_Curve3dElementProperty.hxx".}
proc init*(this: var StepFEA_Curve3dElementProperty;
          aPropertyId: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aIntervalDefinitions: Handle[StepFEA_HArray1OfCurveElementInterval];
          aEndOffsets: Handle[StepFEA_HArray1OfCurveElementEndOffset];
          aEndReleases: Handle[StepFEA_HArray1OfCurveElementEndRelease]) {.
    importcpp: "Init", header: "StepFEA_Curve3dElementProperty.hxx".}
proc propertyId*(this: StepFEA_Curve3dElementProperty): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "PropertyId",
                              header: "StepFEA_Curve3dElementProperty.hxx".}
proc setPropertyId*(this: var StepFEA_Curve3dElementProperty;
                   propertyId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPropertyId", header: "StepFEA_Curve3dElementProperty.hxx".}
proc description*(this: StepFEA_Curve3dElementProperty): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepFEA_Curve3dElementProperty.hxx".}
proc setDescription*(this: var StepFEA_Curve3dElementProperty;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepFEA_Curve3dElementProperty.hxx".}
proc intervalDefinitions*(this: StepFEA_Curve3dElementProperty): Handle[
    StepFEA_HArray1OfCurveElementInterval] {.noSideEffect,
    importcpp: "IntervalDefinitions", header: "StepFEA_Curve3dElementProperty.hxx".}
proc setIntervalDefinitions*(this: var StepFEA_Curve3dElementProperty;
    intervalDefinitions: Handle[StepFEA_HArray1OfCurveElementInterval]) {.
    importcpp: "SetIntervalDefinitions",
    header: "StepFEA_Curve3dElementProperty.hxx".}
proc endOffsets*(this: StepFEA_Curve3dElementProperty): Handle[
    StepFEA_HArray1OfCurveElementEndOffset] {.noSideEffect,
    importcpp: "EndOffsets", header: "StepFEA_Curve3dElementProperty.hxx".}
proc setEndOffsets*(this: var StepFEA_Curve3dElementProperty;
                   endOffsets: Handle[StepFEA_HArray1OfCurveElementEndOffset]) {.
    importcpp: "SetEndOffsets", header: "StepFEA_Curve3dElementProperty.hxx".}
proc endReleases*(this: StepFEA_Curve3dElementProperty): Handle[
    StepFEA_HArray1OfCurveElementEndRelease] {.noSideEffect,
    importcpp: "EndReleases", header: "StepFEA_Curve3dElementProperty.hxx".}
proc setEndReleases*(this: var StepFEA_Curve3dElementProperty; endReleases: Handle[
    StepFEA_HArray1OfCurveElementEndRelease]) {.importcpp: "SetEndReleases",
    header: "StepFEA_Curve3dElementProperty.hxx".}
type
  StepFEA_Curve3dElementPropertybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepFEA_Curve3dElementProperty::get_type_name(@)",
                            header: "StepFEA_Curve3dElementProperty.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_Curve3dElementProperty::get_type_descriptor(@)",
    header: "StepFEA_Curve3dElementProperty.hxx".}
proc dynamicType*(this: StepFEA_Curve3dElementProperty): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_Curve3dElementProperty.hxx".}

























