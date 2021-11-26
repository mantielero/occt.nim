##  Created on: 1992-04-27
##  Created by: Laurent BUCHARD
##  Copyright (c) 1992-1999 Matra Datavision
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
discard "forward decl of IntRes2d_IntersectionPoint"
discard "forward decl of IntRes2d_IntersectionSegment"
type
  IntRes2dIntersection* {.importcpp: "IntRes2d_Intersection",
                         header: "IntRes2d_Intersection.hxx", bycopy.} = object ## !
                                                                           ## returns TRUE when the
                                                                           ## computation was
                                                                           ## successful.
                                                                           ## ! Empty
                                                                           ## constructor.


proc isDone*(this: IntRes2dIntersection): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntRes2d_Intersection.hxx".}
proc isEmpty*(this: IntRes2dIntersection): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "IntRes2d_Intersection.hxx".}
proc nbPoints*(this: IntRes2dIntersection): cint {.noSideEffect,
    importcpp: "NbPoints", header: "IntRes2d_Intersection.hxx".}
proc point*(this: IntRes2dIntersection; n: cint): IntRes2dIntersectionPoint {.
    noSideEffect, importcpp: "Point", header: "IntRes2d_Intersection.hxx".}
proc nbSegments*(this: IntRes2dIntersection): cint {.noSideEffect,
    importcpp: "NbSegments", header: "IntRes2d_Intersection.hxx".}
proc segment*(this: IntRes2dIntersection; n: cint): IntRes2dIntersectionSegment {.
    noSideEffect, importcpp: "Segment", header: "IntRes2d_Intersection.hxx".}
proc setReversedParameters*(this: var IntRes2dIntersection; reverseflag: bool) {.
    importcpp: "SetReversedParameters", header: "IntRes2d_Intersection.hxx".}

























