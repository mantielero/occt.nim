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
discard "forward decl of StepVisual_SurfaceStyleBoundary"
discard "forward decl of StepVisual_SurfaceStyleBoundary"
type
  HandleC1C1* = Handle[StepVisualSurfaceStyleBoundary]
  StepVisualSurfaceStyleBoundary* {.importcpp: "StepVisual_SurfaceStyleBoundary", header: "StepVisual_SurfaceStyleBoundary.hxx",
                                   bycopy.} = object of StandardTransient ## ! Returns a
                                                                     ## SurfaceStyleBoundary


proc constructStepVisualSurfaceStyleBoundary*(): StepVisualSurfaceStyleBoundary {.
    constructor, importcpp: "StepVisual_SurfaceStyleBoundary(@)",
    header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc init*(this: var StepVisualSurfaceStyleBoundary;
          aStyleOfBoundary: Handle[StepVisualCurveStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc setStyleOfBoundary*(this: var StepVisualSurfaceStyleBoundary;
                        aStyleOfBoundary: Handle[StepVisualCurveStyle]) {.
    importcpp: "SetStyleOfBoundary", header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc styleOfBoundary*(this: StepVisualSurfaceStyleBoundary): Handle[
    StepVisualCurveStyle] {.noSideEffect, importcpp: "StyleOfBoundary",
                           header: "StepVisual_SurfaceStyleBoundary.hxx".}
type
  StepVisualSurfaceStyleBoundarybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleBoundary::get_type_name(@)",
                            header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_SurfaceStyleBoundary::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleBoundary.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleBoundary): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleBoundary.hxx".}