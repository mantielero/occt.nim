##  Created on: 1999-04-15
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

discard "forward decl of Geom_Curve"
discard "forward decl of ShapeUpgrade_SplitCurve3dContinuity"
discard "forward decl of ShapeUpgrade_SplitCurve3dContinuity"
type
  HandleC1C1* = Handle[ShapeUpgradeSplitCurve3dContinuity]

## ! Corrects/splits a 2d curve with a continuity criterion.
## ! Tolerance is used to correct the curve at a knot that respects
## ! geometrically the criterion, in order to reduce the
## ! multiplicity of the knot.

type
  ShapeUpgradeSplitCurve3dContinuity* {.importcpp: "ShapeUpgrade_SplitCurve3dContinuity", header: "ShapeUpgrade_SplitCurve3dContinuity.hxx",
                                       bycopy.} = object of ShapeUpgradeSplitCurve3d ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor.


proc constructShapeUpgradeSplitCurve3dContinuity*(): ShapeUpgradeSplitCurve3dContinuity {.
    constructor, importcpp: "ShapeUpgrade_SplitCurve3dContinuity(@)",
    header: "ShapeUpgrade_SplitCurve3dContinuity.hxx".}
proc setCriterion*(this: var ShapeUpgradeSplitCurve3dContinuity;
                  criterion: GeomAbsShape) {.importcpp: "SetCriterion",
    header: "ShapeUpgrade_SplitCurve3dContinuity.hxx".}
proc setTolerance*(this: var ShapeUpgradeSplitCurve3dContinuity; tol: cfloat) {.
    importcpp: "SetTolerance", header: "ShapeUpgrade_SplitCurve3dContinuity.hxx".}
proc compute*(this: var ShapeUpgradeSplitCurve3dContinuity) {.importcpp: "Compute",
    header: "ShapeUpgrade_SplitCurve3dContinuity.hxx".}
proc getCurve*(this: ShapeUpgradeSplitCurve3dContinuity): Handle[GeomCurve] {.
    noSideEffect, importcpp: "GetCurve",
    header: "ShapeUpgrade_SplitCurve3dContinuity.hxx".}
type
  ShapeUpgradeSplitCurve3dContinuitybaseType* = ShapeUpgradeSplitCurve3d

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_SplitCurve3dContinuity::get_type_name(@)",
                            header: "ShapeUpgrade_SplitCurve3dContinuity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_SplitCurve3dContinuity::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitCurve3dContinuity.hxx".}
proc dynamicType*(this: ShapeUpgradeSplitCurve3dContinuity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_SplitCurve3dContinuity.hxx".}

























