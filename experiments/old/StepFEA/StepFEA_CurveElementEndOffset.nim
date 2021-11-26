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

discard "forward decl of StepFEA_CurveElementEndCoordinateSystem"
discard "forward decl of StepFEA_CurveElementEndOffset"
discard "forward decl of StepFEA_CurveElementEndOffset"
type
  HandleC1C1* = Handle[StepFEA_CurveElementEndOffset]

## ! Representation of STEP entity CurveElementEndOffset

type
  StepFEA_CurveElementEndOffset* {.importcpp: "StepFEA_CurveElementEndOffset",
                                  header: "StepFEA_CurveElementEndOffset.hxx",
                                  bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepFEA_CurveElementEndOffset*(): StepFEA_CurveElementEndOffset {.
    constructor, importcpp: "StepFEA_CurveElementEndOffset(@)",
    header: "StepFEA_CurveElementEndOffset.hxx".}
proc init*(this: var StepFEA_CurveElementEndOffset;
          aCoordinateSystem: StepFEA_CurveElementEndCoordinateSystem;
          aOffsetVector: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "StepFEA_CurveElementEndOffset.hxx".}
proc coordinateSystem*(this: StepFEA_CurveElementEndOffset): StepFEA_CurveElementEndCoordinateSystem {.
    noSideEffect, importcpp: "CoordinateSystem",
    header: "StepFEA_CurveElementEndOffset.hxx".}
proc setCoordinateSystem*(this: var StepFEA_CurveElementEndOffset; coordinateSystem: StepFEA_CurveElementEndCoordinateSystem) {.
    importcpp: "SetCoordinateSystem", header: "StepFEA_CurveElementEndOffset.hxx".}
proc offsetVector*(this: StepFEA_CurveElementEndOffset): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "OffsetVector",
                           header: "StepFEA_CurveElementEndOffset.hxx".}
proc setOffsetVector*(this: var StepFEA_CurveElementEndOffset;
                     offsetVector: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetOffsetVector", header: "StepFEA_CurveElementEndOffset.hxx".}
type
  StepFEA_CurveElementEndOffsetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepFEA_CurveElementEndOffset::get_type_name(@)",
                            header: "StepFEA_CurveElementEndOffset.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_CurveElementEndOffset::get_type_descriptor(@)",
    header: "StepFEA_CurveElementEndOffset.hxx".}
proc dynamicType*(this: StepFEA_CurveElementEndOffset): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_CurveElementEndOffset.hxx".}