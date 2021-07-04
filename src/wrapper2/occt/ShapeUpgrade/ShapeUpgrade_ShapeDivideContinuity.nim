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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Real, ShapeUpgrade_ShapeDivide

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeUpgrade_FaceDivide"
type
  ShapeUpgrade_ShapeDivideContinuity* {.importcpp: "ShapeUpgrade_ShapeDivideContinuity", header: "ShapeUpgrade_ShapeDivideContinuity.hxx",
                                       bycopy.} = object of ShapeUpgrade_ShapeDivide ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## the
                                                                                ## tool
                                                                                ## for
                                                                                ## dividing
                                                                                ## faces.


proc constructShapeUpgrade_ShapeDivideContinuity*(): ShapeUpgrade_ShapeDivideContinuity {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivideContinuity(@)",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc constructShapeUpgrade_ShapeDivideContinuity*(S: TopoDS_Shape): ShapeUpgrade_ShapeDivideContinuity {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivideContinuity(@)",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc SetTolerance*(this: var ShapeUpgrade_ShapeDivideContinuity; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc SetTolerance2d*(this: var ShapeUpgrade_ShapeDivideContinuity;
                    Tol: Standard_Real) {.importcpp: "SetTolerance2d", header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc SetBoundaryCriterion*(this: var ShapeUpgrade_ShapeDivideContinuity;
                          Criterion: GeomAbs_Shape = GeomAbs_C1) {.
    importcpp: "SetBoundaryCriterion",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc SetPCurveCriterion*(this: var ShapeUpgrade_ShapeDivideContinuity;
                        Criterion: GeomAbs_Shape = GeomAbs_C1) {.
    importcpp: "SetPCurveCriterion",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}
proc SetSurfaceCriterion*(this: var ShapeUpgrade_ShapeDivideContinuity;
                         Criterion: GeomAbs_Shape = GeomAbs_C1) {.
    importcpp: "SetSurfaceCriterion",
    header: "ShapeUpgrade_ShapeDivideContinuity.hxx".}