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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntCurveSurface_IntersectionPoint"
discard "forward decl of IntCurveSurface_IntersectionSegment"
type
  IntCurveSurfaceIntersection* {.importcpp: "IntCurveSurface_Intersection",
                                header: "IntCurveSurface_Intersection.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## returns
                                                                                         ## the
                                                                                         ## <done>
                                                                                         ## field.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## Constructor;
    ## Curve is "parallel" surface
    ## This case is recognized only for some pairs
    ## of analytical curves and surfaces (plane - line, ...)


proc isDone*(this: IntCurveSurfaceIntersection): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntCurveSurface_Intersection.hxx".}
proc nbPoints*(this: IntCurveSurfaceIntersection): int {.noSideEffect,
    importcpp: "NbPoints", header: "IntCurveSurface_Intersection.hxx".}
proc point*(this: IntCurveSurfaceIntersection; index: int): IntCurveSurfaceIntersectionPoint {.
    noSideEffect, importcpp: "Point", header: "IntCurveSurface_Intersection.hxx".}
proc nbSegments*(this: IntCurveSurfaceIntersection): int {.noSideEffect,
    importcpp: "NbSegments", header: "IntCurveSurface_Intersection.hxx".}
proc segment*(this: IntCurveSurfaceIntersection; index: int): IntCurveSurfaceIntersectionSegment {.
    noSideEffect, importcpp: "Segment", header: "IntCurveSurface_Intersection.hxx".}
proc isParallel*(this: IntCurveSurfaceIntersection): bool {.noSideEffect,
    importcpp: "IsParallel", header: "IntCurveSurface_Intersection.hxx".}
proc dump*(this: IntCurveSurfaceIntersection) {.noSideEffect, importcpp: "Dump",
    header: "IntCurveSurface_Intersection.hxx".}
