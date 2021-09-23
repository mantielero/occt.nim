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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepVisual_SurfaceStyleRendering, StepVisual_ShadingSurfaceMethod,
  StepVisual_Colour, StepVisual_HArray1OfRenderingPropertiesSelect

discard "forward decl of StepVisual_SurfaceStyleRenderingWithProperties"
discard "forward decl of StepVisual_SurfaceStyleRenderingWithProperties"
type
  Handle_StepVisual_SurfaceStyleRenderingWithProperties* = handle[
      StepVisual_SurfaceStyleRenderingWithProperties]

## ! Representation of STEP entity SurfaceStyleRenderingWithProperties

type
  StepVisual_SurfaceStyleRenderingWithProperties* {.
      importcpp: "StepVisual_SurfaceStyleRenderingWithProperties",
      header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx", bycopy.} = object of StepVisual_SurfaceStyleRendering ##
                                                                                                                   ## !
                                                                                                                   ## default
                                                                                                                   ## constructor


proc constructStepVisual_SurfaceStyleRenderingWithProperties*(): StepVisual_SurfaceStyleRenderingWithProperties {.
    constructor, importcpp: "StepVisual_SurfaceStyleRenderingWithProperties(@)",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleRenderingWithProperties;
    theSurfaceStyleRendering_RenderingMethod: StepVisual_ShadingSurfaceMethod;
          theSurfaceStyleRendering_SurfaceColour: handle[StepVisual_Colour];
          theProperties: handle[StepVisual_HArray1OfRenderingPropertiesSelect]) {.
    importcpp: "Init",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc Properties*(this: StepVisual_SurfaceStyleRenderingWithProperties): handle[
    StepVisual_HArray1OfRenderingPropertiesSelect] {.noSideEffect,
    importcpp: "Properties",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc SetProperties*(this: var StepVisual_SurfaceStyleRenderingWithProperties;
    theProperties: handle[StepVisual_HArray1OfRenderingPropertiesSelect]) {.
    importcpp: "SetProperties",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
type
  StepVisual_SurfaceStyleRenderingWithPropertiesbase_type* = StepVisual_SurfaceStyleRendering

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleRenderingWithProperties::get_type_name(@)", header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_SurfaceStyleRenderingWithProperties::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleRenderingWithProperties): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}