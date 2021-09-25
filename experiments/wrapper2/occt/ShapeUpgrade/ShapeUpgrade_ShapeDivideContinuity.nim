##  Created on: 1999-04-30
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeUpgrade_FaceDivide"
type
  ShapeUpgradeShapeDivideContinuity* {.importcpp: "ShapeUpgrade_ShapeDivideContinuity", header: "ShapeUpgrade_ShapeDivideContinuity.hxx",
                                      bycopy.} = object of ShapeUpgradeShapeDivide ## !
                                                                              ## Returns
                                                                              ## the
                                                                              ## tool
                                                                              ## for
                                                                              ## dividing
                                                                              ## faces.


proc constructShapeUpgradeShapeDivideContinuity*(): ShapeUpgradeShapeDivideContinuity {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivideContinuity(@)",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc constructShapeUpgradeShapeDivideContinuity*(s: TopoDS_Shape): ShapeUpgradeShapeDivideContinuity {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivideContinuity(@)",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc setTolerance*(this: var ShapeUpgradeShapeDivideContinuity; tol: float) {.
    importcpp: "SetTolerance", header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc setTolerance2d*(this: var ShapeUpgradeShapeDivideContinuity; tol: float) {.
    importcpp: "SetTolerance2d", header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc setBoundaryCriterion*(this: var ShapeUpgradeShapeDivideContinuity;
                          criterion: GeomAbsShape = geomAbsC1) {.
    importcpp: "SetBoundaryCriterion",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc setPCurveCriterion*(this: var ShapeUpgradeShapeDivideContinuity;
                        criterion: GeomAbsShape = geomAbsC1) {.
    importcpp: "SetPCurveCriterion",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc setSurfaceCriterion*(this: var ShapeUpgradeShapeDivideContinuity;
                         criterion: GeomAbsShape = geomAbsC1) {.
    importcpp: "SetSurfaceCriterion",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
