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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_Surface

discard "forward decl of StepGeom_Surface"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_SurfaceReplica"
discard "forward decl of StepGeom_SurfaceReplica"
type
  Handle_StepGeom_SurfaceReplica* = handle[StepGeom_SurfaceReplica]
  StepGeom_SurfaceReplica* {.importcpp: "StepGeom_SurfaceReplica",
                            header: "StepGeom_SurfaceReplica.hxx", bycopy.} = object of StepGeom_Surface ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## SurfaceReplica


proc constructStepGeom_SurfaceReplica*(): StepGeom_SurfaceReplica {.constructor,
    importcpp: "StepGeom_SurfaceReplica(@)", header: "StepGeom_SurfaceReplica.hxx".}
proc Init*(this: var StepGeom_SurfaceReplica;
          aName: handle[TCollection_HAsciiString];
          aParentSurface: handle[StepGeom_Surface];
          aTransformation: handle[StepGeom_CartesianTransformationOperator3d]) {.
    importcpp: "Init", header: "StepGeom_SurfaceReplica.hxx".}
proc SetParentSurface*(this: var StepGeom_SurfaceReplica;
                      aParentSurface: handle[StepGeom_Surface]) {.
    importcpp: "SetParentSurface", header: "StepGeom_SurfaceReplica.hxx".}
proc ParentSurface*(this: StepGeom_SurfaceReplica): handle[StepGeom_Surface] {.
    noSideEffect, importcpp: "ParentSurface", header: "StepGeom_SurfaceReplica.hxx".}
proc SetTransformation*(this: var StepGeom_SurfaceReplica; aTransformation: handle[
    StepGeom_CartesianTransformationOperator3d]) {.
    importcpp: "SetTransformation", header: "StepGeom_SurfaceReplica.hxx".}
proc Transformation*(this: StepGeom_SurfaceReplica): handle[
    StepGeom_CartesianTransformationOperator3d] {.noSideEffect,
    importcpp: "Transformation", header: "StepGeom_SurfaceReplica.hxx".}
type
  StepGeom_SurfaceReplicabase_type* = StepGeom_Surface

proc get_type_name*(): cstring {.importcpp: "StepGeom_SurfaceReplica::get_type_name(@)",
                              header: "StepGeom_SurfaceReplica.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_SurfaceReplica::get_type_descriptor(@)",
    header: "StepGeom_SurfaceReplica.hxx".}
proc DynamicType*(this: StepGeom_SurfaceReplica): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_SurfaceReplica.hxx".}