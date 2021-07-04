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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ShapeUpgrade_SplitSurface, ../Standard/Standard_Boolean

discard "forward decl of ShapeUpgrade_SplitSurfaceContinuity"
discard "forward decl of ShapeUpgrade_SplitSurfaceContinuity"
type
  Handle_ShapeUpgrade_SplitSurfaceContinuity* = handle[
      ShapeUpgrade_SplitSurfaceContinuity]

## ! Splits a Surface with a continuity criterion.
## ! At the present moment C1 criterion is used only.
## ! This tool works with tolerance. If C0 surface can be corrected
## ! at a knot with given tolerance then the surface is corrected,
## ! otherwise it is spltted at that knot.

type
  ShapeUpgrade_SplitSurfaceContinuity* {.importcpp: "ShapeUpgrade_SplitSurfaceContinuity", header: "ShapeUpgrade_SplitSurfaceContinuity.hxx",
                                        bycopy.} = object of ShapeUpgrade_SplitSurface ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor.


proc constructShapeUpgrade_SplitSurfaceContinuity*(): ShapeUpgrade_SplitSurfaceContinuity {.
    constructor, importcpp: "ShapeUpgrade_SplitSurfaceContinuity(@)",
    header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc SetCriterion*(this: var ShapeUpgrade_SplitSurfaceContinuity;
                  Criterion: GeomAbs_Shape) {.importcpp: "SetCriterion",
    header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc SetTolerance*(this: var ShapeUpgrade_SplitSurfaceContinuity; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc Compute*(this: var ShapeUpgrade_SplitSurfaceContinuity;
             Segment: Standard_Boolean) {.importcpp: "Compute", header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
type
  ShapeUpgrade_SplitSurfaceContinuitybase_type* = ShapeUpgrade_SplitSurface

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_SplitSurfaceContinuity::get_type_name(@)",
                              header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_SplitSurfaceContinuity::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}
proc DynamicType*(this: ShapeUpgrade_SplitSurfaceContinuity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_SplitSurfaceContinuity.hxx".}