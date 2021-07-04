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
discard "forward decl of StepVisual_SurfaceStyleSilhouette"
discard "forward decl of StepVisual_SurfaceStyleSilhouette"
type
  Handle_StepVisual_SurfaceStyleSilhouette* = handle[
      StepVisual_SurfaceStyleSilhouette]
  StepVisual_SurfaceStyleSilhouette* {.importcpp: "StepVisual_SurfaceStyleSilhouette", header: "StepVisual_SurfaceStyleSilhouette.hxx",
                                      bycopy.} = object of Standard_Transient ## ! Returns a
                                                                         ## SurfaceStyleSilhouette


proc constructStepVisual_SurfaceStyleSilhouette*(): StepVisual_SurfaceStyleSilhouette {.
    constructor, importcpp: "StepVisual_SurfaceStyleSilhouette(@)",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleSilhouette;
          aStyleOfSilhouette: handle[StepVisual_CurveStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc SetStyleOfSilhouette*(this: var StepVisual_SurfaceStyleSilhouette;
                          aStyleOfSilhouette: handle[StepVisual_CurveStyle]) {.
    importcpp: "SetStyleOfSilhouette",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc StyleOfSilhouette*(this: StepVisual_SurfaceStyleSilhouette): handle[
    StepVisual_CurveStyle] {.noSideEffect, importcpp: "StyleOfSilhouette",
                            header: "StepVisual_SurfaceStyleSilhouette.hxx".}
type
  StepVisual_SurfaceStyleSilhouettebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleSilhouette::get_type_name(@)",
                              header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_SurfaceStyleSilhouette::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleSilhouette): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}