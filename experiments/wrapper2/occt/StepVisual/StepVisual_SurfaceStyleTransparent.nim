##  Created on : Tue May 12 14:11:46 2020
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

discard "forward decl of StepVisual_SurfaceStyleTransparent"
discard "forward decl of StepVisual_SurfaceStyleTransparent"
type
  HandleC1C1* = Handle[StepVisualSurfaceStyleTransparent]

## ! Representation of STEP entity SurfaceStyleTransparent

type
  StepVisualSurfaceStyleTransparent* {.importcpp: "StepVisual_SurfaceStyleTransparent", header: "StepVisual_SurfaceStyleTransparent.hxx",
                                      bycopy.} = object of StandardTransient ## ! default
                                                                        ## constructor


proc constructStepVisualSurfaceStyleTransparent*(): StepVisualSurfaceStyleTransparent {.
    constructor, importcpp: "StepVisual_SurfaceStyleTransparent(@)",
    header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc init*(this: var StepVisualSurfaceStyleTransparent; theTransparency: cfloat) {.
    importcpp: "Init", header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc transparency*(this: StepVisualSurfaceStyleTransparent): cfloat {.noSideEffect,
    importcpp: "Transparency", header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc setTransparency*(this: var StepVisualSurfaceStyleTransparent;
                     theTransparency: cfloat) {.importcpp: "SetTransparency",
    header: "StepVisual_SurfaceStyleTransparent.hxx".}
type
  StepVisualSurfaceStyleTransparentbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleTransparent::get_type_name(@)",
                            header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_SurfaceStyleTransparent::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleTransparent): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleTransparent.hxx".}

























