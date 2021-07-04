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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  StepVisual_ShadingSurfaceMethod, StepVisual_Colour

discard "forward decl of StepVisual_SurfaceStyleRendering"
discard "forward decl of StepVisual_SurfaceStyleRendering"
type
  Handle_StepVisual_SurfaceStyleRendering* = handle[
      StepVisual_SurfaceStyleRendering]

## ! Representation of STEP entity SurfaceStyleRendering

type
  StepVisual_SurfaceStyleRendering* {.importcpp: "StepVisual_SurfaceStyleRendering", header: "StepVisual_SurfaceStyleRendering.hxx",
                                     bycopy.} = object of Standard_Transient ## ! default
                                                                        ## constructor


proc constructStepVisual_SurfaceStyleRendering*(): StepVisual_SurfaceStyleRendering {.
    constructor, importcpp: "StepVisual_SurfaceStyleRendering(@)",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleRendering;
          theRenderingMethod: StepVisual_ShadingSurfaceMethod;
          theSurfaceColour: handle[StepVisual_Colour]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc RenderingMethod*(this: StepVisual_SurfaceStyleRendering): StepVisual_ShadingSurfaceMethod {.
    noSideEffect, importcpp: "RenderingMethod",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc SetRenderingMethod*(this: var StepVisual_SurfaceStyleRendering;
                        theRenderingMethod: StepVisual_ShadingSurfaceMethod) {.
    importcpp: "SetRenderingMethod",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc SurfaceColour*(this: StepVisual_SurfaceStyleRendering): handle[
    StepVisual_Colour] {.noSideEffect, importcpp: "SurfaceColour",
                        header: "StepVisual_SurfaceStyleRendering.hxx".}
proc SetSurfaceColour*(this: var StepVisual_SurfaceStyleRendering;
                      theSurfaceColour: handle[StepVisual_Colour]) {.
    importcpp: "SetSurfaceColour", header: "StepVisual_SurfaceStyleRendering.hxx".}
type
  StepVisual_SurfaceStyleRenderingbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleRendering::get_type_name(@)",
                              header: "StepVisual_SurfaceStyleRendering.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_SurfaceStyleRendering::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleRendering.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleRendering): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleRendering.hxx".}