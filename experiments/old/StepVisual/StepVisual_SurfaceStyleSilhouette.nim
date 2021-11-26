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
discard "forward decl of StepVisual_SurfaceStyleSilhouette"
discard "forward decl of StepVisual_SurfaceStyleSilhouette"
type
  HandleC1C1* = Handle[StepVisualSurfaceStyleSilhouette]
  StepVisualSurfaceStyleSilhouette* {.importcpp: "StepVisual_SurfaceStyleSilhouette", header: "StepVisual_SurfaceStyleSilhouette.hxx",
                                     bycopy.} = object of StandardTransient ## ! Returns a
                                                                       ## SurfaceStyleSilhouette


proc constructStepVisualSurfaceStyleSilhouette*(): StepVisualSurfaceStyleSilhouette {.
    constructor, importcpp: "StepVisual_SurfaceStyleSilhouette(@)",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc init*(this: var StepVisualSurfaceStyleSilhouette;
          aStyleOfSilhouette: Handle[StepVisualCurveStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc setStyleOfSilhouette*(this: var StepVisualSurfaceStyleSilhouette;
                          aStyleOfSilhouette: Handle[StepVisualCurveStyle]) {.
    importcpp: "SetStyleOfSilhouette",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc styleOfSilhouette*(this: StepVisualSurfaceStyleSilhouette): Handle[
    StepVisualCurveStyle] {.noSideEffect, importcpp: "StyleOfSilhouette",
                           header: "StepVisual_SurfaceStyleSilhouette.hxx".}
type
  StepVisualSurfaceStyleSilhouettebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleSilhouette::get_type_name(@)",
                            header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_SurfaceStyleSilhouette::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleSilhouette): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleSilhouette.hxx".}