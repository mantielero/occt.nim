##  Created on: 1999-04-14
##  Created by: Roman LYGIN
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

discard "forward decl of ShapeUpgrade_SplitSurfaceContinuity"
discard "forward decl of ShapeUpgrade_SplitSurfaceContinuity"
type
  HandleShapeUpgradeSplitSurfaceContinuity* = Handle[
      ShapeUpgradeSplitSurfaceContinuity]

## ! Splits a Surface with a continuity criterion.
## ! At the present moment C1 criterion is used only.
## ! This tool works with tolerance. If C0 surface can be corrected
## ! at a knot with given tolerance then the surface is corrected,
## ! otherwise it is spltted at that knot.

type
  ShapeUpgradeSplitSurfaceContinuity* {.importcpp: "ShapeUpgrade_SplitSurfaceContinuity", header: "ShapeUpgrade_SplitSurfaceContinuity.hxx",
                                       bycopy.} = object of ShapeUpgradeSplitSurface ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor.


proc constructShapeUpgradeSplitSurfaceContinuity*(): ShapeUpgradeSplitSurfaceContinuity {.
    constructor, importcpp: "ShapeUpgrade_SplitSurfaceContinuity(@)",
    header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc setCriterion*(this: var ShapeUpgradeSplitSurfaceContinuity;
                  criterion: GeomAbsShape) {.importcpp: "SetCriterion",
    header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc setTolerance*(this: var ShapeUpgradeSplitSurfaceContinuity; tol: float) {.
    importcpp: "SetTolerance", header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc compute*(this: var ShapeUpgradeSplitSurfaceContinuity; segment: bool) {.
    importcpp: "Compute", header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
type
  ShapeUpgradeSplitSurfaceContinuitybaseType* = ShapeUpgradeSplitSurface

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_SplitSurfaceContinuity::get_type_name(@)",
                            header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_SplitSurfaceContinuity::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc dynamicType*(this: ShapeUpgradeSplitSurfaceContinuity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
