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

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepVisual_PlanarBox"
discard "forward decl of StepVisual_ViewVolume"
discard "forward decl of StepVisual_ViewVolume"
type
  HandleC1C1* = Handle[StepVisualViewVolume]
  StepVisualViewVolume* {.importcpp: "StepVisual_ViewVolume",
                         header: "StepVisual_ViewVolume.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## ViewVolume


proc constructStepVisualViewVolume*(): StepVisualViewVolume {.constructor,
    importcpp: "StepVisual_ViewVolume(@)", header: "StepVisual_ViewVolume.hxx".}
proc init*(this: var StepVisualViewVolume;
          aProjectionType: StepVisualCentralOrParallel;
          aProjectionPoint: Handle[StepGeomCartesianPoint];
          aViewPlaneDistance: cfloat; aFrontPlaneDistance: cfloat;
          aFrontPlaneClipping: bool; aBackPlaneDistance: cfloat;
          aBackPlaneClipping: bool; aViewVolumeSidesClipping: bool;
          aViewWindow: Handle[StepVisualPlanarBox]) {.importcpp: "Init",
    header: "StepVisual_ViewVolume.hxx".}
proc setProjectionType*(this: var StepVisualViewVolume;
                       aProjectionType: StepVisualCentralOrParallel) {.
    importcpp: "SetProjectionType", header: "StepVisual_ViewVolume.hxx".}
proc projectionType*(this: StepVisualViewVolume): StepVisualCentralOrParallel {.
    noSideEffect, importcpp: "ProjectionType", header: "StepVisual_ViewVolume.hxx".}
proc setProjectionPoint*(this: var StepVisualViewVolume;
                        aProjectionPoint: Handle[StepGeomCartesianPoint]) {.
    importcpp: "SetProjectionPoint", header: "StepVisual_ViewVolume.hxx".}
proc projectionPoint*(this: StepVisualViewVolume): Handle[StepGeomCartesianPoint] {.
    noSideEffect, importcpp: "ProjectionPoint", header: "StepVisual_ViewVolume.hxx".}
proc setViewPlaneDistance*(this: var StepVisualViewVolume;
                          aViewPlaneDistance: cfloat) {.
    importcpp: "SetViewPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc viewPlaneDistance*(this: StepVisualViewVolume): cfloat {.noSideEffect,
    importcpp: "ViewPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc setFrontPlaneDistance*(this: var StepVisualViewVolume;
                           aFrontPlaneDistance: cfloat) {.
    importcpp: "SetFrontPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc frontPlaneDistance*(this: StepVisualViewVolume): cfloat {.noSideEffect,
    importcpp: "FrontPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc setFrontPlaneClipping*(this: var StepVisualViewVolume;
                           aFrontPlaneClipping: bool) {.
    importcpp: "SetFrontPlaneClipping", header: "StepVisual_ViewVolume.hxx".}
proc frontPlaneClipping*(this: StepVisualViewVolume): bool {.noSideEffect,
    importcpp: "FrontPlaneClipping", header: "StepVisual_ViewVolume.hxx".}
proc setBackPlaneDistance*(this: var StepVisualViewVolume;
                          aBackPlaneDistance: cfloat) {.
    importcpp: "SetBackPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc backPlaneDistance*(this: StepVisualViewVolume): cfloat {.noSideEffect,
    importcpp: "BackPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc setBackPlaneClipping*(this: var StepVisualViewVolume; aBackPlaneClipping: bool) {.
    importcpp: "SetBackPlaneClipping", header: "StepVisual_ViewVolume.hxx".}
proc backPlaneClipping*(this: StepVisualViewVolume): bool {.noSideEffect,
    importcpp: "BackPlaneClipping", header: "StepVisual_ViewVolume.hxx".}
proc setViewVolumeSidesClipping*(this: var StepVisualViewVolume;
                                aViewVolumeSidesClipping: bool) {.
    importcpp: "SetViewVolumeSidesClipping", header: "StepVisual_ViewVolume.hxx".}
proc viewVolumeSidesClipping*(this: StepVisualViewVolume): bool {.noSideEffect,
    importcpp: "ViewVolumeSidesClipping", header: "StepVisual_ViewVolume.hxx".}
proc setViewWindow*(this: var StepVisualViewVolume;
                   aViewWindow: Handle[StepVisualPlanarBox]) {.
    importcpp: "SetViewWindow", header: "StepVisual_ViewVolume.hxx".}
proc viewWindow*(this: StepVisualViewVolume): Handle[StepVisualPlanarBox] {.
    noSideEffect, importcpp: "ViewWindow", header: "StepVisual_ViewVolume.hxx".}
type
  StepVisualViewVolumebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_ViewVolume::get_type_name(@)",
                            header: "StepVisual_ViewVolume.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_ViewVolume::get_type_descriptor(@)",
    header: "StepVisual_ViewVolume.hxx".}
proc dynamicType*(this: StepVisualViewVolume): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_ViewVolume.hxx".}

























