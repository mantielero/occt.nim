##  Created on: 1994-03-23
##  Created by: Jean Marc LACHAUME
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Dir2d"
type
  Geom2dHatchIntersector* {.importcpp: "Geom2dHatch_Intersector",
                           header: "Geom2dHatch_Intersector.hxx", bycopy.} = object of Geom2dIntGInter ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## intersector.


proc constructGeom2dHatchIntersector*(confusion: StandardReal;
                                     tangency: StandardReal): Geom2dHatchIntersector {.
    constructor, importcpp: "Geom2dHatch_Intersector(@)",
    header: "Geom2dHatch_Intersector.hxx".}
proc confusionTolerance*(this: Geom2dHatchIntersector): StandardReal {.noSideEffect,
    importcpp: "ConfusionTolerance", header: "Geom2dHatch_Intersector.hxx".}
proc setConfusionTolerance*(this: var Geom2dHatchIntersector;
                           confusion: StandardReal) {.
    importcpp: "SetConfusionTolerance", header: "Geom2dHatch_Intersector.hxx".}
proc tangencyTolerance*(this: Geom2dHatchIntersector): StandardReal {.noSideEffect,
    importcpp: "TangencyTolerance", header: "Geom2dHatch_Intersector.hxx".}
proc setTangencyTolerance*(this: var Geom2dHatchIntersector; tangency: StandardReal) {.
    importcpp: "SetTangencyTolerance", header: "Geom2dHatch_Intersector.hxx".}
proc intersect*(this: var Geom2dHatchIntersector; c1: Geom2dAdaptorCurve;
               c2: Geom2dAdaptorCurve) {.importcpp: "Intersect",
                                       header: "Geom2dHatch_Intersector.hxx".}
proc constructGeom2dHatchIntersector*(): Geom2dHatchIntersector {.constructor,
    importcpp: "Geom2dHatch_Intersector(@)", header: "Geom2dHatch_Intersector.hxx".}
proc perform*(this: var Geom2dHatchIntersector; L: GpLin2d; p: StandardReal;
             tol: StandardReal; e: Geom2dAdaptorCurve) {.importcpp: "Perform",
    header: "Geom2dHatch_Intersector.hxx".}
proc localGeometry*(this: Geom2dHatchIntersector; e: Geom2dAdaptorCurve;
                   u: StandardReal; t: var GpDir2d; n: var GpDir2d; c: var StandardReal) {.
    noSideEffect, importcpp: "LocalGeometry", header: "Geom2dHatch_Intersector.hxx".}

