##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
type
  IntCurveSurfaceIntersectionPoint* {.importcpp: "IntCurveSurface_IntersectionPoint", header: "IntCurveSurface_IntersectionPoint.hxx",
                                     bycopy.} = object ## ! Empty Constructor.


proc constructIntCurveSurfaceIntersectionPoint*(): IntCurveSurfaceIntersectionPoint {.
    constructor, importcpp: "IntCurveSurface_IntersectionPoint(@)",
    header: "IntCurveSurface_IntersectionPoint.hxx".}
proc constructIntCurveSurfaceIntersectionPoint*(p: Pnt; uSurf: float; vSurf: float;
    uCurv: float; trCurv: IntCurveSurfaceTransitionOnCurve): IntCurveSurfaceIntersectionPoint {.
    constructor, importcpp: "IntCurveSurface_IntersectionPoint(@)",
    header: "IntCurveSurface_IntersectionPoint.hxx".}
proc setValues*(this: var IntCurveSurfaceIntersectionPoint; p: Pnt; uSurf: float;
               vSurf: float; uCurv: float; trCurv: IntCurveSurfaceTransitionOnCurve) {.
    importcpp: "SetValues", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc values*(this: IntCurveSurfaceIntersectionPoint; p: var Pnt; uSurf: var float;
            vSurf: var float; uCurv: var float;
            trCurv: var IntCurveSurfaceTransitionOnCurve) {.noSideEffect,
    importcpp: "Values", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc pnt*(this: IntCurveSurfaceIntersectionPoint): Pnt {.noSideEffect,
    importcpp: "Pnt", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc u*(this: IntCurveSurfaceIntersectionPoint): float {.noSideEffect,
    importcpp: "U", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc v*(this: IntCurveSurfaceIntersectionPoint): float {.noSideEffect,
    importcpp: "V", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc w*(this: IntCurveSurfaceIntersectionPoint): float {.noSideEffect,
    importcpp: "W", header: "IntCurveSurface_IntersectionPoint.hxx".}
proc transition*(this: IntCurveSurfaceIntersectionPoint): IntCurveSurfaceTransitionOnCurve {.
    noSideEffect, importcpp: "Transition",
    header: "IntCurveSurface_IntersectionPoint.hxx".}
proc dump*(this: IntCurveSurfaceIntersectionPoint) {.noSideEffect,
    importcpp: "Dump", header: "IntCurveSurface_IntersectionPoint.hxx".}
