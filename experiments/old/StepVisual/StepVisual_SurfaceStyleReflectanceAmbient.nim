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

discard "forward decl of StepVisual_SurfaceStyleReflectanceAmbient"
discard "forward decl of StepVisual_SurfaceStyleReflectanceAmbient"
type
  HandleC1C1* = Handle[StepVisualSurfaceStyleReflectanceAmbient]

## ! Representation of STEP entity SurfaceStyleReflectanceAmbient

type
  StepVisualSurfaceStyleReflectanceAmbient* {.
      importcpp: "StepVisual_SurfaceStyleReflectanceAmbient",
      header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx", bycopy.} = object of StandardTransient ##
                                                                                               ## !
                                                                                               ## default
                                                                                               ## constructor


proc constructStepVisualSurfaceStyleReflectanceAmbient*(): StepVisualSurfaceStyleReflectanceAmbient {.
    constructor, importcpp: "StepVisual_SurfaceStyleReflectanceAmbient(@)",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc init*(this: var StepVisualSurfaceStyleReflectanceAmbient;
          theAmbientReflectance: StandardReal) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc ambientReflectance*(this: StepVisualSurfaceStyleReflectanceAmbient): StandardReal {.
    noSideEffect, importcpp: "AmbientReflectance",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc setAmbientReflectance*(this: var StepVisualSurfaceStyleReflectanceAmbient;
                           theAmbientReflectance: StandardReal) {.
    importcpp: "SetAmbientReflectance",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
type
  StepVisualSurfaceStyleReflectanceAmbientbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleReflectanceAmbient::get_type_name(@)", header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_SurfaceStyleReflectanceAmbient::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleReflectanceAmbient): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_SurfaceStyleReflectanceAmbient.hxx".}