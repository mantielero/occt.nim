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

discard "forward decl of ShapeUpgrade_SplitSurfaceAngle"
discard "forward decl of ShapeUpgrade_SplitSurfaceAngle"
type
  HandleShapeUpgradeSplitSurfaceAngle* = Handle[ShapeUpgradeSplitSurfaceAngle]

## ! Splits a surfaces of revolution, cylindrical, toroidal,
## ! conical, spherical so that each resulting segment covers
## ! not more than defined number of degrees.

type
  ShapeUpgradeSplitSurfaceAngle* {.importcpp: "ShapeUpgrade_SplitSurfaceAngle",
                                  header: "ShapeUpgrade_SplitSurfaceAngle.hxx",
                                  bycopy.} = object of ShapeUpgradeSplitSurface ## ! Empty
                                                                           ## constructor.


proc constructShapeUpgradeSplitSurfaceAngle*(maxAngle: StandardReal): ShapeUpgradeSplitSurfaceAngle {.
    constructor, importcpp: "ShapeUpgrade_SplitSurfaceAngle(@)",
    header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc setMaxAngle*(this: var ShapeUpgradeSplitSurfaceAngle; maxAngle: StandardReal) {.
    importcpp: "SetMaxAngle", header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc maxAngle*(this: ShapeUpgradeSplitSurfaceAngle): StandardReal {.noSideEffect,
    importcpp: "MaxAngle", header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc compute*(this: var ShapeUpgradeSplitSurfaceAngle; segment: StandardBoolean) {.
    importcpp: "Compute", header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
type
  ShapeUpgradeSplitSurfaceAnglebaseType* = ShapeUpgradeSplitSurface

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_SplitSurfaceAngle::get_type_name(@)",
                            header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_SplitSurfaceAngle::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}
proc dynamicType*(this: ShapeUpgradeSplitSurfaceAngle): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_SplitSurfaceAngle.hxx".}

