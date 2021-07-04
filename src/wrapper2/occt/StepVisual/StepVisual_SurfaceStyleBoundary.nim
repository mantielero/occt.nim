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
discard "forward decl of StepVisual_SurfaceStyleBoundary"
discard "forward decl of StepVisual_SurfaceStyleBoundary"
type
  Handle_StepVisual_SurfaceStyleBoundary* = handle[StepVisual_SurfaceStyleBoundary]
  StepVisual_SurfaceStyleBoundary* {.importcpp: "StepVisual_SurfaceStyleBoundary", header: "StepVisual_SurfaceStyleBoundary.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Returns a
                                                                       ## SurfaceStyleBoundary


proc constructStepVisual_SurfaceStyleBoundary*(): StepVisual_SurfaceStyleBoundary {.
    constructor, importcpp: "StepVisual_SurfaceStyleBoundary(@)",
    header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleBoundary;
          aStyleOfBoundary: handle[StepVisual_CurveStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc SetStyleOfBoundary*(this: var StepVisual_SurfaceStyleBoundary;
                        aStyleOfBoundary: handle[StepVisual_CurveStyle]) {.
    importcpp: "SetStyleOfBoundary", header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc StyleOfBoundary*(this: StepVisual_SurfaceStyleBoundary): handle[
    StepVisual_CurveStyle] {.noSideEffect, importcpp: "StyleOfBoundary",
                            header: "StepVisual_SurfaceStyleBoundary.hxx".}
type
  StepVisual_SurfaceStyleBoundarybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleBoundary::get_type_name(@)",
                              header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_SurfaceStyleBoundary::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleBoundary): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleBoundary.hxx".}