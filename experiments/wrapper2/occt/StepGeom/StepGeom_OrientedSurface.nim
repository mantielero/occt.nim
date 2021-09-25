##  Created on: 2002-01-04
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_OrientedSurface"
discard "forward decl of StepGeom_OrientedSurface"
type
  HandleStepGeomOrientedSurface* = Handle[StepGeomOrientedSurface]

## ! Representation of STEP entity OrientedSurface

type
  StepGeomOrientedSurface* {.importcpp: "StepGeom_OrientedSurface",
                            header: "StepGeom_OrientedSurface.hxx", bycopy.} = object of StepGeomSurface ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepGeomOrientedSurface*(): StepGeomOrientedSurface {.constructor,
    importcpp: "StepGeom_OrientedSurface(@)",
    header: "StepGeom_OrientedSurface.hxx".}
proc init*(this: var StepGeomOrientedSurface;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aOrientation: bool) {.importcpp: "Init",
                              header: "StepGeom_OrientedSurface.hxx".}
proc orientation*(this: StepGeomOrientedSurface): bool {.noSideEffect,
    importcpp: "Orientation", header: "StepGeom_OrientedSurface.hxx".}
proc setOrientation*(this: var StepGeomOrientedSurface; orientation: bool) {.
    importcpp: "SetOrientation", header: "StepGeom_OrientedSurface.hxx".}
type
  StepGeomOrientedSurfacebaseType* = StepGeomSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_OrientedSurface::get_type_name(@)",
                            header: "StepGeom_OrientedSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_OrientedSurface::get_type_descriptor(@)",
    header: "StepGeom_OrientedSurface.hxx".}
proc dynamicType*(this: StepGeomOrientedSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_OrientedSurface.hxx".}
