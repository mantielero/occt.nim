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
  StepVisual_HArray1OfDirectionCountSelect, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of StepVisual_CurveStyle"
discard "forward decl of StepVisual_DirectionCountSelect"
discard "forward decl of StepVisual_SurfaceStyleParameterLine"
discard "forward decl of StepVisual_SurfaceStyleParameterLine"
type
  Handle_StepVisual_SurfaceStyleParameterLine* = handle[
      StepVisual_SurfaceStyleParameterLine]
  StepVisual_SurfaceStyleParameterLine* {.
      importcpp: "StepVisual_SurfaceStyleParameterLine",
      header: "StepVisual_SurfaceStyleParameterLine.hxx", bycopy.} = object of Standard_Transient ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## a
                                                                                           ## SurfaceStyleParameterLine


proc constructStepVisual_SurfaceStyleParameterLine*(): StepVisual_SurfaceStyleParameterLine {.
    constructor, importcpp: "StepVisual_SurfaceStyleParameterLine(@)",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleParameterLine;
          aStyleOfParameterLines: handle[StepVisual_CurveStyle];
          aDirectionCounts: handle[StepVisual_HArray1OfDirectionCountSelect]) {.
    importcpp: "Init", header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc SetStyleOfParameterLines*(this: var StepVisual_SurfaceStyleParameterLine;
    aStyleOfParameterLines: handle[StepVisual_CurveStyle]) {.
    importcpp: "SetStyleOfParameterLines",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc StyleOfParameterLines*(this: StepVisual_SurfaceStyleParameterLine): handle[
    StepVisual_CurveStyle] {.noSideEffect, importcpp: "StyleOfParameterLines",
                            header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc SetDirectionCounts*(this: var StepVisual_SurfaceStyleParameterLine;
    aDirectionCounts: handle[StepVisual_HArray1OfDirectionCountSelect]) {.
    importcpp: "SetDirectionCounts",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc DirectionCounts*(this: StepVisual_SurfaceStyleParameterLine): handle[
    StepVisual_HArray1OfDirectionCountSelect] {.noSideEffect,
    importcpp: "DirectionCounts",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc DirectionCountsValue*(this: StepVisual_SurfaceStyleParameterLine;
                          num: Standard_Integer): StepVisual_DirectionCountSelect {.
    noSideEffect, importcpp: "DirectionCountsValue",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc NbDirectionCounts*(this: StepVisual_SurfaceStyleParameterLine): Standard_Integer {.
    noSideEffect, importcpp: "NbDirectionCounts",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
type
  StepVisual_SurfaceStyleParameterLinebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleParameterLine::get_type_name(@)", header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_SurfaceStyleParameterLine::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleParameterLine): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleParameterLine.hxx".}