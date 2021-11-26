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

discard "forward decl of IntCurveSurface_IntersectionPoint"
type
  IntCurveSurfaceIntersectionSegment* {.importcpp: "IntCurveSurface_IntersectionSegment", header: "IntCurveSurface_IntersectionSegment.hxx",
                                       bycopy.} = object


proc constructIntCurveSurfaceIntersectionSegment*(): IntCurveSurfaceIntersectionSegment {.
    constructor, importcpp: "IntCurveSurface_IntersectionSegment(@)",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc constructIntCurveSurfaceIntersectionSegment*(
    p1: IntCurveSurfaceIntersectionPoint; p2: IntCurveSurfaceIntersectionPoint): IntCurveSurfaceIntersectionSegment {.
    constructor, importcpp: "IntCurveSurface_IntersectionSegment(@)",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc setValues*(this: var IntCurveSurfaceIntersectionSegment;
               p1: IntCurveSurfaceIntersectionPoint;
               p2: IntCurveSurfaceIntersectionPoint) {.importcpp: "SetValues",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc values*(this: IntCurveSurfaceIntersectionSegment;
            p1: var IntCurveSurfaceIntersectionPoint;
            p2: var IntCurveSurfaceIntersectionPoint) {.noSideEffect,
    importcpp: "Values", header: "IntCurveSurface_IntersectionSegment.hxx".}
proc firstPoint*(this: IntCurveSurfaceIntersectionSegment;
                p1: var IntCurveSurfaceIntersectionPoint) {.noSideEffect,
    importcpp: "FirstPoint", header: "IntCurveSurface_IntersectionSegment.hxx".}
proc secondPoint*(this: IntCurveSurfaceIntersectionSegment;
                 p2: var IntCurveSurfaceIntersectionPoint) {.noSideEffect,
    importcpp: "SecondPoint", header: "IntCurveSurface_IntersectionSegment.hxx".}
proc firstPoint*(this: IntCurveSurfaceIntersectionSegment): IntCurveSurfaceIntersectionPoint {.
    noSideEffect, importcpp: "FirstPoint",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc secondPoint*(this: IntCurveSurfaceIntersectionSegment): IntCurveSurfaceIntersectionPoint {.
    noSideEffect, importcpp: "SecondPoint",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc dump*(this: IntCurveSurfaceIntersectionSegment) {.noSideEffect,
    importcpp: "Dump", header: "IntCurveSurface_IntersectionSegment.hxx".}

























