##  Created on: 1999-05-06
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ShapeUpgrade_SplitSurface, ../Standard/Standard_Boolean

discard "forward decl of ShapeUpgrade_SplitSurfaceAngle"
discard "forward decl of ShapeUpgrade_SplitSurfaceAngle"
type
  Handle_ShapeUpgrade_SplitSurfaceAngle* = handle[ShapeUpgrade_SplitSurfaceAngle]

## ! Splits a surfaces of revolution, cylindrical, toroidal,
## ! conical, spherical so that each resulting segment covers
## ! not more than defined number of degrees.

type
  ShapeUpgrade_SplitSurfaceAngle* {.importcpp: "ShapeUpgrade_SplitSurfaceAngle", header: "ShapeUpgrade_SplitSurfaceAngle.hxx",
                                   bycopy.} = object of ShapeUpgrade_SplitSurface ## !
                                                                             ## Empty
                                                                             ## constructor.


proc constructShapeUpgrade_SplitSurfaceAngle*(MaxAngle: Standard_Real): ShapeUpgrade_SplitSurfaceAngle {.
    constructor, importcpp: "ShapeUpgrade_SplitSurfaceAngle(@)",
    header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc SetMaxAngle*(this: var ShapeUpgrade_SplitSurfaceAngle; MaxAngle: Standard_Real) {.
    importcpp: "SetMaxAngle", header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc MaxAngle*(this: ShapeUpgrade_SplitSurfaceAngle): Standard_Real {.noSideEffect,
    importcpp: "MaxAngle", header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc Compute*(this: var ShapeUpgrade_SplitSurfaceAngle; Segment: Standard_Boolean) {.
    importcpp: "Compute", header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
type
  ShapeUpgrade_SplitSurfaceAnglebase_type* = ShapeUpgrade_SplitSurface

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_SplitSurfaceAngle::get_type_name(@)",
                              header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_SplitSurfaceAngle::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc DynamicType*(this: ShapeUpgrade_SplitSurfaceAngle): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}