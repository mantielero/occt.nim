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

discard "forward decl of StepGeom_BoundedSurface"
discard "forward decl of StepGeom_SurfacePatch"
discard "forward decl of StepGeom_SurfacePatch"
type
  HandleC1C1* = Handle[StepGeomSurfacePatch]
  StepGeomSurfacePatch* {.importcpp: "StepGeom_SurfacePatch",
                         header: "StepGeom_SurfacePatch.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## SurfacePatch


proc constructStepGeomSurfacePatch*(): StepGeomSurfacePatch {.constructor,
    importcpp: "StepGeom_SurfacePatch(@)", header: "StepGeom_SurfacePatch.hxx".}
proc init*(this: var StepGeomSurfacePatch;
          aParentSurface: Handle[StepGeomBoundedSurface];
          aUTransition: StepGeomTransitionCode;
          aVTransition: StepGeomTransitionCode; aUSense: StandardBoolean;
          aVSense: StandardBoolean) {.importcpp: "Init",
                                    header: "StepGeom_SurfacePatch.hxx".}
proc setParentSurface*(this: var StepGeomSurfacePatch;
                      aParentSurface: Handle[StepGeomBoundedSurface]) {.
    importcpp: "SetParentSurface", header: "StepGeom_SurfacePatch.hxx".}
proc parentSurface*(this: StepGeomSurfacePatch): Handle[StepGeomBoundedSurface] {.
    noSideEffect, importcpp: "ParentSurface", header: "StepGeom_SurfacePatch.hxx".}
proc setUTransition*(this: var StepGeomSurfacePatch;
                    aUTransition: StepGeomTransitionCode) {.
    importcpp: "SetUTransition", header: "StepGeom_SurfacePatch.hxx".}
proc uTransition*(this: StepGeomSurfacePatch): StepGeomTransitionCode {.
    noSideEffect, importcpp: "UTransition", header: "StepGeom_SurfacePatch.hxx".}
proc setVTransition*(this: var StepGeomSurfacePatch;
                    aVTransition: StepGeomTransitionCode) {.
    importcpp: "SetVTransition", header: "StepGeom_SurfacePatch.hxx".}
proc vTransition*(this: StepGeomSurfacePatch): StepGeomTransitionCode {.
    noSideEffect, importcpp: "VTransition", header: "StepGeom_SurfacePatch.hxx".}
proc setUSense*(this: var StepGeomSurfacePatch; aUSense: StandardBoolean) {.
    importcpp: "SetUSense", header: "StepGeom_SurfacePatch.hxx".}
proc uSense*(this: StepGeomSurfacePatch): StandardBoolean {.noSideEffect,
    importcpp: "USense", header: "StepGeom_SurfacePatch.hxx".}
proc setVSense*(this: var StepGeomSurfacePatch; aVSense: StandardBoolean) {.
    importcpp: "SetVSense", header: "StepGeom_SurfacePatch.hxx".}
proc vSense*(this: StepGeomSurfacePatch): StandardBoolean {.noSideEffect,
    importcpp: "VSense", header: "StepGeom_SurfacePatch.hxx".}
type
  StepGeomSurfacePatchbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepGeom_SurfacePatch::get_type_name(@)",
                            header: "StepGeom_SurfacePatch.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_SurfacePatch::get_type_descriptor(@)",
    header: "StepGeom_SurfacePatch.hxx".}
proc dynamicType*(this: StepGeomSurfacePatch): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_SurfacePatch.hxx".}