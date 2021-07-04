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
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ShapeUpgrade_SplitCurve2d

discard "forward decl of ShapeUpgrade_SplitCurve2dContinuity"
discard "forward decl of ShapeUpgrade_SplitCurve2dContinuity"
type
  Handle_ShapeUpgrade_SplitCurve2dContinuity* = handle[
      ShapeUpgrade_SplitCurve2dContinuity]

## ! Corrects/splits a 2d curve with a continuity criterion.
## ! Tolerance is used to correct the curve at a knot that respects
## ! geometrically the criterion, in order to reduce the
## ! multiplicity of the knot.

type
  ShapeUpgrade_SplitCurve2dContinuity* {.importcpp: "ShapeUpgrade_SplitCurve2dContinuity", header: "ShapeUpgrade_SplitCurve2dContinuity.hxx",
                                        bycopy.} = object of ShapeUpgrade_SplitCurve2d ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor.


proc constructShapeUpgrade_SplitCurve2dContinuity*(): ShapeUpgrade_SplitCurve2dContinuity {.
    constructor, importcpp: "ShapeUpgrade_SplitCurve2dContinuity(@)",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc SetCriterion*(this: var ShapeUpgrade_SplitCurve2dContinuity;
                  Criterion: GeomAbs_Shape) {.importcpp: "SetCriterion",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc SetTolerance*(this: var ShapeUpgrade_SplitCurve2dContinuity; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc Compute*(this: var ShapeUpgrade_SplitCurve2dContinuity) {.importcpp: "Compute",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
type
  ShapeUpgrade_SplitCurve2dContinuitybase_type* = ShapeUpgrade_SplitCurve2d

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_SplitCurve2dContinuity::get_type_name(@)",
                              header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_SplitCurve2dContinuity::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc DynamicType*(this: ShapeUpgrade_SplitCurve2dContinuity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}