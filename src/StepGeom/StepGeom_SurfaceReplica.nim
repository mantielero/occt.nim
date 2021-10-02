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

discard "forward decl of StepGeom_Surface"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_SurfaceReplica"
discard "forward decl of StepGeom_SurfaceReplica"
type
  HandleC1C1* = Handle[StepGeomSurfaceReplica]
  StepGeomSurfaceReplica* {.importcpp: "StepGeom_SurfaceReplica",
                           header: "StepGeom_SurfaceReplica.hxx", bycopy.} = object of StepGeomSurface ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## SurfaceReplica


proc constructStepGeomSurfaceReplica*(): StepGeomSurfaceReplica {.constructor,
    importcpp: "StepGeom_SurfaceReplica(@)", header: "StepGeom_SurfaceReplica.hxx".}
proc init*(this: var StepGeomSurfaceReplica; aName: Handle[TCollectionHAsciiString];
          aParentSurface: Handle[StepGeomSurface];
          aTransformation: Handle[StepGeomCartesianTransformationOperator3d]) {.
    importcpp: "Init", header: "StepGeom_SurfaceReplica.hxx".}
proc setParentSurface*(this: var StepGeomSurfaceReplica;
                      aParentSurface: Handle[StepGeomSurface]) {.
    importcpp: "SetParentSurface", header: "StepGeom_SurfaceReplica.hxx".}
proc parentSurface*(this: StepGeomSurfaceReplica): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "ParentSurface", header: "StepGeom_SurfaceReplica.hxx".}
proc setTransformation*(this: var StepGeomSurfaceReplica; aTransformation: Handle[
    StepGeomCartesianTransformationOperator3d]) {.importcpp: "SetTransformation",
    header: "StepGeom_SurfaceReplica.hxx".}
proc transformation*(this: StepGeomSurfaceReplica): Handle[
    StepGeomCartesianTransformationOperator3d] {.noSideEffect,
    importcpp: "Transformation", header: "StepGeom_SurfaceReplica.hxx".}
type
  StepGeomSurfaceReplicabaseType* = StepGeomSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_SurfaceReplica::get_type_name(@)",
                            header: "StepGeom_SurfaceReplica.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_SurfaceReplica::get_type_descriptor(@)",
    header: "StepGeom_SurfaceReplica.hxx".}
proc dynamicType*(this: StepGeomSurfaceReplica): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_SurfaceReplica.hxx".}