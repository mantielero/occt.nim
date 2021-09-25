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

discard "forward decl of StepVisual_CurveStyle"
discard "forward decl of StepVisual_DirectionCountSelect"
discard "forward decl of StepVisual_SurfaceStyleParameterLine"
discard "forward decl of StepVisual_SurfaceStyleParameterLine"
type
  HandleStepVisualSurfaceStyleParameterLine* = Handle[
      StepVisualSurfaceStyleParameterLine]
  StepVisualSurfaceStyleParameterLine* {.importcpp: "StepVisual_SurfaceStyleParameterLine", header: "StepVisual_SurfaceStyleParameterLine.hxx",
                                        bycopy.} = object of StandardTransient ## !
                                                                          ## Returns a
                                                                          ## SurfaceStyleParameterLine


proc constructStepVisualSurfaceStyleParameterLine*(): StepVisualSurfaceStyleParameterLine {.
    constructor, importcpp: "StepVisual_SurfaceStyleParameterLine(@)",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc init*(this: var StepVisualSurfaceStyleParameterLine;
          aStyleOfParameterLines: Handle[StepVisualCurveStyle];
          aDirectionCounts: Handle[StepVisualHArray1OfDirectionCountSelect]) {.
    importcpp: "Init", header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc setStyleOfParameterLines*(this: var StepVisualSurfaceStyleParameterLine;
    aStyleOfParameterLines: Handle[StepVisualCurveStyle]) {.
    importcpp: "SetStyleOfParameterLines",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc styleOfParameterLines*(this: StepVisualSurfaceStyleParameterLine): Handle[
    StepVisualCurveStyle] {.noSideEffect, importcpp: "StyleOfParameterLines",
                           header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc setDirectionCounts*(this: var StepVisualSurfaceStyleParameterLine;
    aDirectionCounts: Handle[StepVisualHArray1OfDirectionCountSelect]) {.
    importcpp: "SetDirectionCounts",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc directionCounts*(this: StepVisualSurfaceStyleParameterLine): Handle[
    StepVisualHArray1OfDirectionCountSelect] {.noSideEffect,
    importcpp: "DirectionCounts",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc directionCountsValue*(this: StepVisualSurfaceStyleParameterLine; num: int): StepVisualDirectionCountSelect {.
    noSideEffect, importcpp: "DirectionCountsValue",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc nbDirectionCounts*(this: StepVisualSurfaceStyleParameterLine): int {.
    noSideEffect, importcpp: "NbDirectionCounts",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
type
  StepVisualSurfaceStyleParameterLinebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleParameterLine::get_type_name(@)",
                            header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_SurfaceStyleParameterLine::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleParameterLine): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
