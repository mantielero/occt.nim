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

discard "forward decl of ShapeUpgrade_SplitCurve2dContinuity"
discard "forward decl of ShapeUpgrade_SplitCurve2dContinuity"
type
  HandleShapeUpgradeSplitCurve2dContinuity* = Handle[
      ShapeUpgradeSplitCurve2dContinuity]

## ! Corrects/splits a 2d curve with a continuity criterion.
## ! Tolerance is used to correct the curve at a knot that respects
## ! geometrically the criterion, in order to reduce the
## ! multiplicity of the knot.

type
  ShapeUpgradeSplitCurve2dContinuity* {.importcpp: "ShapeUpgrade_SplitCurve2dContinuity", header: "ShapeUpgrade_SplitCurve2dContinuity.hxx",
                                       bycopy.} = object of ShapeUpgradeSplitCurve2d ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor.


proc constructShapeUpgradeSplitCurve2dContinuity*(): ShapeUpgradeSplitCurve2dContinuity {.
    constructor, importcpp: "ShapeUpgrade_SplitCurve2dContinuity(@)",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc setCriterion*(this: var ShapeUpgradeSplitCurve2dContinuity;
                  criterion: GeomAbsShape) {.importcpp: "SetCriterion",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc setTolerance*(this: var ShapeUpgradeSplitCurve2dContinuity; tol: float) {.
    importcpp: "SetTolerance", header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc compute*(this: var ShapeUpgradeSplitCurve2dContinuity) {.importcpp: "Compute",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
type
  ShapeUpgradeSplitCurve2dContinuitybaseType* = ShapeUpgradeSplitCurve2d

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_SplitCurve2dContinuity::get_type_name(@)",
                            header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_SplitCurve2dContinuity::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
proc dynamicType*(this: ShapeUpgradeSplitCurve2dContinuity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_SplitCurve2dContinuity.hxx".}
