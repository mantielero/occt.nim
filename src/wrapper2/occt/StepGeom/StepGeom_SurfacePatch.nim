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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_TransitionCode,
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient

discard "forward decl of StepGeom_BoundedSurface"
discard "forward decl of StepGeom_SurfacePatch"
discard "forward decl of StepGeom_SurfacePatch"
type
  Handle_StepGeom_SurfacePatch* = handle[StepGeom_SurfacePatch]
  StepGeom_SurfacePatch* {.importcpp: "StepGeom_SurfacePatch",
                          header: "StepGeom_SurfacePatch.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## SurfacePatch


proc constructStepGeom_SurfacePatch*(): StepGeom_SurfacePatch {.constructor,
    importcpp: "StepGeom_SurfacePatch(@)", header: "StepGeom_SurfacePatch.hxx".}
proc Init*(this: var StepGeom_SurfacePatch;
          aParentSurface: handle[StepGeom_BoundedSurface];
          aUTransition: StepGeom_TransitionCode;
          aVTransition: StepGeom_TransitionCode; aUSense: Standard_Boolean;
          aVSense: Standard_Boolean) {.importcpp: "Init",
                                     header: "StepGeom_SurfacePatch.hxx".}
proc SetParentSurface*(this: var StepGeom_SurfacePatch;
                      aParentSurface: handle[StepGeom_BoundedSurface]) {.
    importcpp: "SetParentSurface", header: "StepGeom_SurfacePatch.hxx".}
proc ParentSurface*(this: StepGeom_SurfacePatch): handle[StepGeom_BoundedSurface] {.
    noSideEffect, importcpp: "ParentSurface", header: "StepGeom_SurfacePatch.hxx".}
proc SetUTransition*(this: var StepGeom_SurfacePatch;
                    aUTransition: StepGeom_TransitionCode) {.
    importcpp: "SetUTransition", header: "StepGeom_SurfacePatch.hxx".}
proc UTransition*(this: StepGeom_SurfacePatch): StepGeom_TransitionCode {.
    noSideEffect, importcpp: "UTransition", header: "StepGeom_SurfacePatch.hxx".}
proc SetVTransition*(this: var StepGeom_SurfacePatch;
                    aVTransition: StepGeom_TransitionCode) {.
    importcpp: "SetVTransition", header: "StepGeom_SurfacePatch.hxx".}
proc VTransition*(this: StepGeom_SurfacePatch): StepGeom_TransitionCode {.
    noSideEffect, importcpp: "VTransition", header: "StepGeom_SurfacePatch.hxx".}
proc SetUSense*(this: var StepGeom_SurfacePatch; aUSense: Standard_Boolean) {.
    importcpp: "SetUSense", header: "StepGeom_SurfacePatch.hxx".}
proc USense*(this: StepGeom_SurfacePatch): Standard_Boolean {.noSideEffect,
    importcpp: "USense", header: "StepGeom_SurfacePatch.hxx".}
proc SetVSense*(this: var StepGeom_SurfacePatch; aVSense: Standard_Boolean) {.
    importcpp: "SetVSense", header: "StepGeom_SurfacePatch.hxx".}
proc VSense*(this: StepGeom_SurfacePatch): Standard_Boolean {.noSideEffect,
    importcpp: "VSense", header: "StepGeom_SurfacePatch.hxx".}
type
  StepGeom_SurfacePatchbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepGeom_SurfacePatch::get_type_name(@)",
                              header: "StepGeom_SurfacePatch.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_SurfacePatch::get_type_descriptor(@)",
    header: "StepGeom_SurfacePatch.hxx".}
proc DynamicType*(this: StepGeom_SurfacePatch): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_SurfacePatch.hxx".}