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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepGeom_Surface

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_OrientedSurface"
discard "forward decl of StepGeom_OrientedSurface"
type
  Handle_StepGeom_OrientedSurface* = handle[StepGeom_OrientedSurface]

## ! Representation of STEP entity OrientedSurface

type
  StepGeom_OrientedSurface* {.importcpp: "StepGeom_OrientedSurface",
                             header: "StepGeom_OrientedSurface.hxx", bycopy.} = object of StepGeom_Surface ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepGeom_OrientedSurface*(): StepGeom_OrientedSurface {.constructor,
    importcpp: "StepGeom_OrientedSurface(@)",
    header: "StepGeom_OrientedSurface.hxx".}
proc Init*(this: var StepGeom_OrientedSurface;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aOrientation: Standard_Boolean) {.importcpp: "Init",
    header: "StepGeom_OrientedSurface.hxx".}
proc Orientation*(this: StepGeom_OrientedSurface): Standard_Boolean {.noSideEffect,
    importcpp: "Orientation", header: "StepGeom_OrientedSurface.hxx".}
proc SetOrientation*(this: var StepGeom_OrientedSurface;
                    Orientation: Standard_Boolean) {.importcpp: "SetOrientation",
    header: "StepGeom_OrientedSurface.hxx".}
type
  StepGeom_OrientedSurfacebase_type* = StepGeom_Surface

proc get_type_name*(): cstring {.importcpp: "StepGeom_OrientedSurface::get_type_name(@)",
                              header: "StepGeom_OrientedSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_OrientedSurface::get_type_descriptor(@)",
    header: "StepGeom_OrientedSurface.hxx".}
proc DynamicType*(this: StepGeom_OrientedSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_OrientedSurface.hxx".}