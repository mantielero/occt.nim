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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepFEA_HArray1OfCurveElementInterval, StepFEA_HArray1OfCurveElementEndOffset,
  StepFEA_HArray1OfCurveElementEndRelease, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_Curve3dElementProperty"
discard "forward decl of StepFEA_Curve3dElementProperty"
type
  Handle_StepFEA_Curve3dElementProperty* = handle[StepFEA_Curve3dElementProperty]

## ! Representation of STEP entity Curve3dElementProperty

type
  StepFEA_Curve3dElementProperty* {.importcpp: "StepFEA_Curve3dElementProperty", header: "StepFEA_Curve3dElementProperty.hxx",
                                   bycopy.} = object of Standard_Transient ## ! Empty
                                                                      ## constructor


proc constructStepFEA_Curve3dElementProperty*(): StepFEA_Curve3dElementProperty {.
    constructor, importcpp: "StepFEA_Curve3dElementProperty(@)",
    header: "StepFEA_Curve3dElementProperty.hxx".}
proc Init*(this: var StepFEA_Curve3dElementProperty;
          aPropertyId: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aIntervalDefinitions: handle[StepFEA_HArray1OfCurveElementInterval];
          aEndOffsets: handle[StepFEA_HArray1OfCurveElementEndOffset];
          aEndReleases: handle[StepFEA_HArray1OfCurveElementEndRelease]) {.
    importcpp: "Init", header: "StepFEA_Curve3dElementProperty.hxx".}
proc PropertyId*(this: StepFEA_Curve3dElementProperty): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "PropertyId",
                               header: "StepFEA_Curve3dElementProperty.hxx".}
proc SetPropertyId*(this: var StepFEA_Curve3dElementProperty;
                   PropertyId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPropertyId", header: "StepFEA_Curve3dElementProperty.hxx".}
proc Description*(this: StepFEA_Curve3dElementProperty): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepFEA_Curve3dElementProperty.hxx".}
proc SetDescription*(this: var StepFEA_Curve3dElementProperty;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepFEA_Curve3dElementProperty.hxx".}
proc IntervalDefinitions*(this: StepFEA_Curve3dElementProperty): handle[
    StepFEA_HArray1OfCurveElementInterval] {.noSideEffect,
    importcpp: "IntervalDefinitions", header: "StepFEA_Curve3dElementProperty.hxx".}
proc SetIntervalDefinitions*(this: var StepFEA_Curve3dElementProperty;
    IntervalDefinitions: handle[StepFEA_HArray1OfCurveElementInterval]) {.
    importcpp: "SetIntervalDefinitions",
    header: "StepFEA_Curve3dElementProperty.hxx".}
proc EndOffsets*(this: StepFEA_Curve3dElementProperty): handle[
    StepFEA_HArray1OfCurveElementEndOffset] {.noSideEffect,
    importcpp: "EndOffsets", header: "StepFEA_Curve3dElementProperty.hxx".}
proc SetEndOffsets*(this: var StepFEA_Curve3dElementProperty;
                   EndOffsets: handle[StepFEA_HArray1OfCurveElementEndOffset]) {.
    importcpp: "SetEndOffsets", header: "StepFEA_Curve3dElementProperty.hxx".}
proc EndReleases*(this: StepFEA_Curve3dElementProperty): handle[
    StepFEA_HArray1OfCurveElementEndRelease] {.noSideEffect,
    importcpp: "EndReleases", header: "StepFEA_Curve3dElementProperty.hxx".}
proc SetEndReleases*(this: var StepFEA_Curve3dElementProperty; EndReleases: handle[
    StepFEA_HArray1OfCurveElementEndRelease]) {.importcpp: "SetEndReleases",
    header: "StepFEA_Curve3dElementProperty.hxx".}
type
  StepFEA_Curve3dElementPropertybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepFEA_Curve3dElementProperty::get_type_name(@)",
                              header: "StepFEA_Curve3dElementProperty.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_Curve3dElementProperty::get_type_descriptor(@)",
    header: "StepFEA_Curve3dElementProperty.hxx".}
proc DynamicType*(this: StepFEA_Curve3dElementProperty): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_Curve3dElementProperty.hxx".}