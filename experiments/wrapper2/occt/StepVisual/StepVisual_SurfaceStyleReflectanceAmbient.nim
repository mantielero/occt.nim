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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of StepVisual_SurfaceStyleReflectanceAmbient"
discard "forward decl of StepVisual_SurfaceStyleReflectanceAmbient"
type
  Handle_StepVisual_SurfaceStyleReflectanceAmbient* = handle[
      StepVisual_SurfaceStyleReflectanceAmbient]

## ! Representation of STEP entity SurfaceStyleReflectanceAmbient

type
  StepVisual_SurfaceStyleReflectanceAmbient* {.
      importcpp: "StepVisual_SurfaceStyleReflectanceAmbient",
      header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## default
                                                                                                ## constructor


proc constructStepVisual_SurfaceStyleReflectanceAmbient*(): StepVisual_SurfaceStyleReflectanceAmbient {.
    constructor, importcpp: "StepVisual_SurfaceStyleReflectanceAmbient(@)",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleReflectanceAmbient;
          theAmbientReflectance: Standard_Real) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc AmbientReflectance*(this: StepVisual_SurfaceStyleReflectanceAmbient): Standard_Real {.
    noSideEffect, importcpp: "AmbientReflectance",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc SetAmbientReflectance*(this: var StepVisual_SurfaceStyleReflectanceAmbient;
                           theAmbientReflectance: Standard_Real) {.
    importcpp: "SetAmbientReflectance",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
type
  StepVisual_SurfaceStyleReflectanceAmbientbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleReflectanceAmbient::get_type_name(@)", header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_SurfaceStyleReflectanceAmbient::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleReflectanceAmbient): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}