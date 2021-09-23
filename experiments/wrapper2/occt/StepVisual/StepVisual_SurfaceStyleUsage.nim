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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_SurfaceSide,
  ../Standard/Standard_Transient

discard "forward decl of StepVisual_SurfaceSideStyle"
discard "forward decl of StepVisual_SurfaceStyleUsage"
discard "forward decl of StepVisual_SurfaceStyleUsage"
type
  Handle_StepVisual_SurfaceStyleUsage* = handle[StepVisual_SurfaceStyleUsage]
  StepVisual_SurfaceStyleUsage* {.importcpp: "StepVisual_SurfaceStyleUsage",
                                 header: "StepVisual_SurfaceStyleUsage.hxx",
                                 bycopy.} = object of Standard_Transient ## ! Returns a
                                                                    ## SurfaceStyleUsage


proc constructStepVisual_SurfaceStyleUsage*(): StepVisual_SurfaceStyleUsage {.
    constructor, importcpp: "StepVisual_SurfaceStyleUsage(@)",
    header: "StepVisual_SurfaceStyleUsage.hxx".}
proc Init*(this: var StepVisual_SurfaceStyleUsage; aSide: StepVisual_SurfaceSide;
          aStyle: handle[StepVisual_SurfaceSideStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleUsage.hxx".}
proc SetSide*(this: var StepVisual_SurfaceStyleUsage; aSide: StepVisual_SurfaceSide) {.
    importcpp: "SetSide", header: "StepVisual_SurfaceStyleUsage.hxx".}
proc Side*(this: StepVisual_SurfaceStyleUsage): StepVisual_SurfaceSide {.
    noSideEffect, importcpp: "Side", header: "StepVisual_SurfaceStyleUsage.hxx".}
proc SetStyle*(this: var StepVisual_SurfaceStyleUsage;
              aStyle: handle[StepVisual_SurfaceSideStyle]) {.
    importcpp: "SetStyle", header: "StepVisual_SurfaceStyleUsage.hxx".}
proc Style*(this: StepVisual_SurfaceStyleUsage): handle[StepVisual_SurfaceSideStyle] {.
    noSideEffect, importcpp: "Style", header: "StepVisual_SurfaceStyleUsage.hxx".}
type
  StepVisual_SurfaceStyleUsagebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_SurfaceStyleUsage::get_type_name(@)",
                              header: "StepVisual_SurfaceStyleUsage.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_SurfaceStyleUsage::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleUsage.hxx".}
proc DynamicType*(this: StepVisual_SurfaceStyleUsage): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleUsage.hxx".}