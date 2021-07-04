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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepVisual_SurfaceStyleTransparent"
discard "forward decl of StepVisual_SurfaceStyleTransparent"
type
  Handle_StepVisual_SurfaceStyleTransparent* = handle[
      StepVisual_SurfaceStyleTransparent]

## ! Representation of STEP entity SurfaceStyleTransparent

type
  StepVisual_SurfaceStyleTransparent* {.importcpp: "StepVisual_SurfaceStyleTransparent", header: "StepVisual_SurfaceStyleTransparent.hxx",
                                       bycopy.} = object of Standard_Transient ## !
                                                                          ## default
                                                                          ## constructor


proc constructStepVisual_SurfaceStyleTransparent*(): StepVisual_SurfaceStyleTransparent {.
    constructor, importcpp: "StepVisual_SurfaceStyleTransparent(@)",
    header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleTransparent;
          theTransparency: Standard_Real) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc Transparency*(this: StepVisual_SurfaceStyleTransparent): Standard_Real {.
    noSideEffect, importcpp: "Transparency",
    header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc SetTransparency*(this: var StepVisual_SurfaceStyleTransparent;
                     theTransparency: Standard_Real) {.
    importcpp: "SetTransparency", header: "StepVisual_SurfaceStyleTransparent.hxx".}
type
  StepVisual_SurfaceStyleTransparentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleTransparent::get_type_name(@)",
                              header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_SurfaceStyleTransparent::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleTransparent.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleTransparent): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleTransparent.hxx".}