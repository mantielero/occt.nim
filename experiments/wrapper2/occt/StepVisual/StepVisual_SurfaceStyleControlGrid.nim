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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepVisual_CurveStyle"
discard "forward decl of StepVisual_SurfaceStyleControlGrid"
discard "forward decl of StepVisual_SurfaceStyleControlGrid"
type
  Handle_StepVisual_SurfaceStyleControlGrid* = handle[
      StepVisual_SurfaceStyleControlGrid]
  StepVisual_SurfaceStyleControlGrid* {.importcpp: "StepVisual_SurfaceStyleControlGrid", header: "StepVisual_SurfaceStyleControlGrid.hxx",
                                       bycopy.} = object of Standard_Transient ## !
                                                                          ## Returns a
                                                                          ## SurfaceStyleControlGrid


proc constructStepVisual_SurfaceStyleControlGrid*(): StepVisual_SurfaceStyleControlGrid {.
    constructor, importcpp: "StepVisual_SurfaceStyleControlGrid(@)",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleControlGrid;
          aStyleOfControlGrid: handle[StepVisual_CurveStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc SetStyleOfControlGrid*(this: var StepVisual_SurfaceStyleControlGrid;
                           aStyleOfControlGrid: handle[StepVisual_CurveStyle]) {.
    importcpp: "SetStyleOfControlGrid",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc StyleOfControlGrid*(this: StepVisual_SurfaceStyleControlGrid): handle[
    StepVisual_CurveStyle] {.noSideEffect, importcpp: "StyleOfControlGrid",
                            header: "StepVisual_SurfaceStyleControlGrid.hxx".}
type
  StepVisual_SurfaceStyleControlGridbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleControlGrid::get_type_name(@)",
                              header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_SurfaceStyleControlGrid::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleControlGrid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleControlGrid.hxx".}