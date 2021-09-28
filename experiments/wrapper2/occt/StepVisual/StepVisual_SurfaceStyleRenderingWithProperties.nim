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

discard "forward decl of StepVisual_SurfaceStyleRenderingWithProperties"
discard "forward decl of StepVisual_SurfaceStyleRenderingWithProperties"
type
  HandleC1C1* = Handle[StepVisualSurfaceStyleRenderingWithProperties]

## ! Representation of STEP entity SurfaceStyleRenderingWithProperties

type
  StepVisualSurfaceStyleRenderingWithProperties* {.
      importcpp: "StepVisual_SurfaceStyleRenderingWithProperties",
      header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx", bycopy.} = object of StepVisualSurfaceStyleRendering ##
                                                                                                                  ## !
                                                                                                                  ## default
                                                                                                                  ## constructor


proc constructStepVisualSurfaceStyleRenderingWithProperties*(): StepVisualSurfaceStyleRenderingWithProperties {.
    constructor, importcpp: "StepVisual_SurfaceStyleRenderingWithProperties(@)",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc init*(this: var StepVisualSurfaceStyleRenderingWithProperties;
    theSurfaceStyleRenderingRenderingMethod: StepVisualShadingSurfaceMethod;
          theSurfaceStyleRenderingSurfaceColour: Handle[StepVisualColour];
          theProperties: Handle[StepVisualHArray1OfRenderingPropertiesSelect]) {.
    importcpp: "Init",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc properties*(this: StepVisualSurfaceStyleRenderingWithProperties): Handle[
    StepVisualHArray1OfRenderingPropertiesSelect] {.noSideEffect,
    importcpp: "Properties",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc setProperties*(this: var StepVisualSurfaceStyleRenderingWithProperties;
    theProperties: Handle[StepVisualHArray1OfRenderingPropertiesSelect]) {.
    importcpp: "SetProperties",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
type
  StepVisualSurfaceStyleRenderingWithPropertiesbaseType* = StepVisualSurfaceStyleRendering

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleRenderingWithProperties::get_type_name(@)", header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_SurfaceStyleRenderingWithProperties::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleRenderingWithProperties): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_SurfaceStyleRenderingWithProperties.hxx".}

























