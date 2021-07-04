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

discard "forward decl of StepVisual_FillAreaStyle"
discard "forward decl of StepVisual_SurfaceStyleFillArea"
discard "forward decl of StepVisual_SurfaceStyleFillArea"
type
  Handle_StepVisual_SurfaceStyleFillArea* = handle[StepVisual_SurfaceStyleFillArea]
  StepVisual_SurfaceStyleFillArea* {.importcpp: "StepVisual_SurfaceStyleFillArea", header: "StepVisual_SurfaceStyleFillArea.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Returns a
                                                                       ## SurfaceStyleFillArea


proc constructStepVisual_SurfaceStyleFillArea*(): StepVisual_SurfaceStyleFillArea {.
    constructor, importcpp: "StepVisual_SurfaceStyleFillArea(@)",
    header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleFillArea;
          aFillArea: handle[StepVisual_FillAreaStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc SetFillArea*(this: var StepVisual_SurfaceStyleFillArea;
                 aFillArea: handle[StepVisual_FillAreaStyle]) {.
    importcpp: "SetFillArea", header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc FillArea*(this: StepVisual_SurfaceStyleFillArea): handle[
    StepVisual_FillAreaStyle] {.noSideEffect, importcpp: "FillArea",
                               header: "StepVisual_SurfaceStyleFillArea.hxx".}
type
  StepVisual_SurfaceStyleFillAreabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleFillArea::get_type_name(@)",
                              header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_SurfaceStyleFillArea::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleFillArea): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleFillArea.hxx".}