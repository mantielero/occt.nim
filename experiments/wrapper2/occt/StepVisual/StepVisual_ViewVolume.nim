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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_CentralOrParallel,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepVisual_PlanarBox"
discard "forward decl of StepVisual_ViewVolume"
discard "forward decl of StepVisual_ViewVolume"
type
  Handle_StepVisual_ViewVolume* = handle[StepVisual_ViewVolume]
  StepVisual_ViewVolume* {.importcpp: "StepVisual_ViewVolume",
                          header: "StepVisual_ViewVolume.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## ViewVolume


proc constructStepVisual_ViewVolume*(): StepVisual_ViewVolume {.constructor,
    importcpp: "StepVisual_ViewVolume(@)", header: "StepVisual_ViewVolume.hxx".}
proc Init*(this: var StepVisual_ViewVolume;
          aProjectionType: StepVisual_CentralOrParallel;
          aProjectionPoint: handle[StepGeom_CartesianPoint];
          aViewPlaneDistance: Standard_Real; aFrontPlaneDistance: Standard_Real;
          aFrontPlaneClipping: Standard_Boolean;
          aBackPlaneDistance: Standard_Real; aBackPlaneClipping: Standard_Boolean;
          aViewVolumeSidesClipping: Standard_Boolean;
          aViewWindow: handle[StepVisual_PlanarBox]) {.importcpp: "Init",
    header: "StepVisual_ViewVolume.hxx".}
proc SetProjectionType*(this: var StepVisual_ViewVolume;
                       aProjectionType: StepVisual_CentralOrParallel) {.
    importcpp: "SetProjectionType", header: "StepVisual_ViewVolume.hxx".}
proc ProjectionType*(this: StepVisual_ViewVolume): StepVisual_CentralOrParallel {.
    noSideEffect, importcpp: "ProjectionType", header: "StepVisual_ViewVolume.hxx".}
proc SetProjectionPoint*(this: var StepVisual_ViewVolume;
                        aProjectionPoint: handle[StepGeom_CartesianPoint]) {.
    importcpp: "SetProjectionPoint", header: "StepVisual_ViewVolume.hxx".}
proc ProjectionPoint*(this: StepVisual_ViewVolume): handle[StepGeom_CartesianPoint] {.
    noSideEffect, importcpp: "ProjectionPoint", header: "StepVisual_ViewVolume.hxx".}
proc SetViewPlaneDistance*(this: var StepVisual_ViewVolume;
                          aViewPlaneDistance: Standard_Real) {.
    importcpp: "SetViewPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc ViewPlaneDistance*(this: StepVisual_ViewVolume): Standard_Real {.noSideEffect,
    importcpp: "ViewPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc SetFrontPlaneDistance*(this: var StepVisual_ViewVolume;
                           aFrontPlaneDistance: Standard_Real) {.
    importcpp: "SetFrontPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc FrontPlaneDistance*(this: StepVisual_ViewVolume): Standard_Real {.noSideEffect,
    importcpp: "FrontPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc SetFrontPlaneClipping*(this: var StepVisual_ViewVolume;
                           aFrontPlaneClipping: Standard_Boolean) {.
    importcpp: "SetFrontPlaneClipping", header: "StepVisual_ViewVolume.hxx".}
proc FrontPlaneClipping*(this: StepVisual_ViewVolume): Standard_Boolean {.
    noSideEffect, importcpp: "FrontPlaneClipping",
    header: "StepVisual_ViewVolume.hxx".}
proc SetBackPlaneDistance*(this: var StepVisual_ViewVolume;
                          aBackPlaneDistance: Standard_Real) {.
    importcpp: "SetBackPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc BackPlaneDistance*(this: StepVisual_ViewVolume): Standard_Real {.noSideEffect,
    importcpp: "BackPlaneDistance", header: "StepVisual_ViewVolume.hxx".}
proc SetBackPlaneClipping*(this: var StepVisual_ViewVolume;
                          aBackPlaneClipping: Standard_Boolean) {.
    importcpp: "SetBackPlaneClipping", header: "StepVisual_ViewVolume.hxx".}
proc BackPlaneClipping*(this: StepVisual_ViewVolume): Standard_Boolean {.
    noSideEffect, importcpp: "BackPlaneClipping",
    header: "StepVisual_ViewVolume.hxx".}
proc SetViewVolumeSidesClipping*(this: var StepVisual_ViewVolume;
                                aViewVolumeSidesClipping: Standard_Boolean) {.
    importcpp: "SetViewVolumeSidesClipping", header: "StepVisual_ViewVolume.hxx".}
proc ViewVolumeSidesClipping*(this: StepVisual_ViewVolume): Standard_Boolean {.
    noSideEffect, importcpp: "ViewVolumeSidesClipping",
    header: "StepVisual_ViewVolume.hxx".}
proc SetViewWindow*(this: var StepVisual_ViewVolume;
                   aViewWindow: handle[StepVisual_PlanarBox]) {.
    importcpp: "SetViewWindow", header: "StepVisual_ViewVolume.hxx".}
proc ViewWindow*(this: StepVisual_ViewVolume): handle[StepVisual_PlanarBox] {.
    noSideEffect, importcpp: "ViewWindow", header: "StepVisual_ViewVolume.hxx".}
type
  StepVisual_ViewVolumebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_ViewVolume::get_type_name(@)",
                              header: "StepVisual_ViewVolume.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_ViewVolume::get_type_descriptor(@)",
    header: "StepVisual_ViewVolume.hxx".}
proc DynamicType*(this: StepVisual_ViewVolume): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_ViewVolume.hxx".}