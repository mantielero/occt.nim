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
  StepFEA_CurveElementEndCoordinateSystem,
  ../StepElement/StepElement_HArray1OfCurveElementEndReleasePacket,
  ../Standard/Standard_Transient

discard "forward decl of StepFEA_CurveElementEndCoordinateSystem"
discard "forward decl of StepFEA_CurveElementEndRelease"
discard "forward decl of StepFEA_CurveElementEndRelease"
type
  Handle_StepFEA_CurveElementEndRelease* = handle[StepFEA_CurveElementEndRelease]

## ! Representation of STEP entity CurveElementEndRelease

type
  StepFEA_CurveElementEndRelease* {.importcpp: "StepFEA_CurveElementEndRelease", header: "StepFEA_CurveElementEndRelease.hxx",
                                   bycopy.} = object of Standard_Transient ## ! Empty
                                                                      ## constructor


proc constructStepFEA_CurveElementEndRelease*(): StepFEA_CurveElementEndRelease {.
    constructor, importcpp: "StepFEA_CurveElementEndRelease(@)",
    header: "StepFEA_CurveElementEndRelease.hxx".}
proc Init*(this: var StepFEA_CurveElementEndRelease;
          aCoordinateSystem: StepFEA_CurveElementEndCoordinateSystem;
          aReleases: handle[StepElement_HArray1OfCurveElementEndReleasePacket]) {.
    importcpp: "Init", header: "StepFEA_CurveElementEndRelease.hxx".}
proc CoordinateSystem*(this: StepFEA_CurveElementEndRelease): StepFEA_CurveElementEndCoordinateSystem {.
    noSideEffect, importcpp: "CoordinateSystem",
    header: "StepFEA_CurveElementEndRelease.hxx".}
proc SetCoordinateSystem*(this: var StepFEA_CurveElementEndRelease; CoordinateSystem: StepFEA_CurveElementEndCoordinateSystem) {.
    importcpp: "SetCoordinateSystem", header: "StepFEA_CurveElementEndRelease.hxx".}
proc Releases*(this: StepFEA_CurveElementEndRelease): handle[
    StepElement_HArray1OfCurveElementEndReleasePacket] {.noSideEffect,
    importcpp: "Releases", header: "StepFEA_CurveElementEndRelease.hxx".}
proc SetReleases*(this: var StepFEA_CurveElementEndRelease; Releases: handle[
    StepElement_HArray1OfCurveElementEndReleasePacket]) {.
    importcpp: "SetReleases", header: "StepFEA_CurveElementEndRelease.hxx".}
type
  StepFEA_CurveElementEndReleasebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepFEA_CurveElementEndRelease::get_type_name(@)",
                              header: "StepFEA_CurveElementEndRelease.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_CurveElementEndRelease::get_type_descriptor(@)",
    header: "StepFEA_CurveElementEndRelease.hxx".}
proc DynamicType*(this: StepFEA_CurveElementEndRelease): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_CurveElementEndRelease.hxx".}