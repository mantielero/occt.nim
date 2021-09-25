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
discard "forward decl of StepVisual_SurfaceStyleControlGrid"
discard "forward decl of StepVisual_SurfaceStyleControlGrid"
type
  HandleStepVisualSurfaceStyleControlGrid* = Handle[
      StepVisualSurfaceStyleControlGrid]
  StepVisualSurfaceStyleControlGrid* {.importcpp: "StepVisual_SurfaceStyleControlGrid", header: "StepVisual_SurfaceStyleControlGrid.hxx",
                                      bycopy.} = object of StandardTransient ## ! Returns a
                                                                        ## SurfaceStyleControlGrid


proc constructStepVisualSurfaceStyleControlGrid*(): StepVisualSurfaceStyleControlGrid {.
    constructor, importcpp: "StepVisual_SurfaceStyleControlGrid(@)",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc init*(this: var StepVisualSurfaceStyleControlGrid;
          aStyleOfControlGrid: Handle[StepVisualCurveStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc setStyleOfControlGrid*(this: var StepVisualSurfaceStyleControlGrid;
                           aStyleOfControlGrid: Handle[StepVisualCurveStyle]) {.
    importcpp: "SetStyleOfControlGrid",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc styleOfControlGrid*(this: StepVisualSurfaceStyleControlGrid): Handle[
    StepVisualCurveStyle] {.noSideEffect, importcpp: "StyleOfControlGrid",
                           header: "StepVisual_SurfaceStyleControlGrid.hxx".}
type
  StepVisualSurfaceStyleControlGridbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleControlGrid::get_type_name(@)",
                            header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_SurfaceStyleControlGrid::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleControlGrid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}
