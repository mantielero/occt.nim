##  Created on : Thu May 14 15:13:19 2020
##  Created by: Igor KHOZHANOV
##  Generator:	Express (EXPRESS -> CASCADE/XSTEP Translator) V2.0
##  Copyright (c) Open CASCADE 2020
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

discard "forward decl of StepVisual_SurfaceStyleRendering"
discard "forward decl of StepVisual_SurfaceStyleRendering"
type
  HandleC1C1* = Handle[StepVisualSurfaceStyleRendering]

## ! Representation of STEP entity SurfaceStyleRendering

type
  StepVisualSurfaceStyleRendering* {.importcpp: "StepVisual_SurfaceStyleRendering", header: "StepVisual_SurfaceStyleRendering.hxx",
                                    bycopy.} = object of StandardTransient ## ! default
                                                                      ## constructor


proc constructStepVisualSurfaceStyleRendering*(): StepVisualSurfaceStyleRendering {.
    constructor, importcpp: "StepVisual_SurfaceStyleRendering(@)",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc init*(this: var StepVisualSurfaceStyleRendering;
          theRenderingMethod: StepVisualShadingSurfaceMethod;
          theSurfaceColour: Handle[StepVisualColour]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc renderingMethod*(this: StepVisualSurfaceStyleRendering): StepVisualShadingSurfaceMethod {.
    noSideEffect, importcpp: "RenderingMethod",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc setRenderingMethod*(this: var StepVisualSurfaceStyleRendering;
                        theRenderingMethod: StepVisualShadingSurfaceMethod) {.
    importcpp: "SetRenderingMethod",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc surfaceColour*(this: StepVisualSurfaceStyleRendering): Handle[StepVisualColour] {.
    noSideEffect, importcpp: "SurfaceColour",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc setSurfaceColour*(this: var StepVisualSurfaceStyleRendering;
                      theSurfaceColour: Handle[StepVisualColour]) {.
    importcpp: "SetSurfaceColour", header: "StepVisual_SurfaceStyleRendering.hxx".}
type
  StepVisualSurfaceStyleRenderingbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleRendering::get_type_name(@)",
                            header: "StepVisual_SurfaceStyleRendering.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_SurfaceStyleRendering::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleRendering): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleRendering.hxx".}

























