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

discard "forward decl of StepVisual_CurveStyle"
discard "forward decl of StepVisual_SurfaceStyleSegmentationCurve"
discard "forward decl of StepVisual_SurfaceStyleSegmentationCurve"
type
  HandleC1C1* = Handle[StepVisualSurfaceStyleSegmentationCurve]
  StepVisualSurfaceStyleSegmentationCurve* {.
      importcpp: "StepVisual_SurfaceStyleSegmentationCurve",
      header: "StepVisual_SurfaceStyleSegmentationCurve.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## SurfaceStyleSegmentationCurve


proc constructStepVisualSurfaceStyleSegmentationCurve*(): StepVisualSurfaceStyleSegmentationCurve {.
    constructor, importcpp: "StepVisual_SurfaceStyleSegmentationCurve(@)",
    header: "StepVisual_SurfaceStyleSegmentationCurve.hxx".}
proc init*(this: var StepVisualSurfaceStyleSegmentationCurve;
          aStyleOfSegmentationCurve: Handle[StepVisualCurveStyle]) {.
    importcpp: "Init", header: "StepVisual_SurfaceStyleSegmentationCurve.hxx".}
proc setStyleOfSegmentationCurve*(this: var StepVisualSurfaceStyleSegmentationCurve;
    aStyleOfSegmentationCurve: Handle[StepVisualCurveStyle]) {.
    importcpp: "SetStyleOfSegmentationCurve",
    header: "StepVisual_SurfaceStyleSegmentationCurve.hxx".}
proc styleOfSegmentationCurve*(this: StepVisualSurfaceStyleSegmentationCurve): Handle[
    StepVisualCurveStyle] {.noSideEffect, importcpp: "StyleOfSegmentationCurve", header: "StepVisual_SurfaceStyleSegmentationCurve.hxx".}
type
  StepVisualSurfaceStyleSegmentationCurvebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleSegmentationCurve::get_type_name(@)", header: "StepVisual_SurfaceStyleSegmentationCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_SurfaceStyleSegmentationCurve::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleSegmentationCurve.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleSegmentationCurve): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_SurfaceStyleSegmentationCurve.hxx".}

























