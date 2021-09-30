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

discard "forward decl of StepVisual_FillAreaStyle"
discard "forward decl of StepVisual_SurfaceStyleFillArea"
discard "forward decl of StepVisual_SurfaceStyleFillArea"
type
  HandleC1C1* = Handle[StepVisualSurfaceStyleFillArea]
  StepVisualSurfaceStyleFillArea* {.importcpp: "StepVisual_SurfaceStyleFillArea", header: "StepVisual_SurfaceStyleFillArea.hxx",
                                   bycopy.} = object of StandardTransient ## ! Returns a
                                                                     ## SurfaceStyleFillArea


proc constructStepVisualSurfaceStyleFillArea*(): StepVisualSurfaceStyleFillArea {.
    constructor, importcpp: "StepVisual_SurfaceStyleFillArea(@)",
    header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc init*(this: var StepVisualSurfaceStyleFillArea;
          aFillArea: Handle[StepVisualFillAreaStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc setFillArea*(this: var StepVisualSurfaceStyleFillArea;
                 aFillArea: Handle[StepVisualFillAreaStyle]) {.
    importcpp: "SetFillArea", header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc fillArea*(this: StepVisualSurfaceStyleFillArea): Handle[
    StepVisualFillAreaStyle] {.noSideEffect, importcpp: "FillArea",
                              header: "StepVisual_SurfaceStyleFillArea.hxx".}
type
  StepVisualSurfaceStyleFillAreabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleFillArea::get_type_name(@)",
                            header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_SurfaceStyleFillArea::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleFillArea.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleFillArea): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleFillArea.hxx".}

























