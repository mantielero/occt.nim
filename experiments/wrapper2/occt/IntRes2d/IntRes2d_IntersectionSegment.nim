##  Created on: 1992-04-03
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

discard "forward decl of Standard_DomainError"
discard "forward decl of IntRes2d_IntersectionPoint"
type
  IntRes2dIntersectionSegment* {.importcpp: "IntRes2d_IntersectionSegment",
                                header: "IntRes2d_IntersectionSegment.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor.


proc constructIntRes2dIntersectionSegment*(): IntRes2dIntersectionSegment {.
    constructor, importcpp: "IntRes2d_IntersectionSegment(@)",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc constructIntRes2dIntersectionSegment*(p1: IntRes2dIntersectionPoint;
    p2: IntRes2dIntersectionPoint; oppos: bool; reverseFlag: bool): IntRes2dIntersectionSegment {.
    constructor, importcpp: "IntRes2d_IntersectionSegment(@)",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc constructIntRes2dIntersectionSegment*(p: IntRes2dIntersectionPoint;
    first: bool; oppos: bool; reverseFlag: bool): IntRes2dIntersectionSegment {.
    constructor, importcpp: "IntRes2d_IntersectionSegment(@)",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc constructIntRes2dIntersectionSegment*(oppos: bool): IntRes2dIntersectionSegment {.
    constructor, importcpp: "IntRes2d_IntersectionSegment(@)",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc isOpposite*(this: IntRes2dIntersectionSegment): bool {.noSideEffect,
    importcpp: "IsOpposite", header: "IntRes2d_IntersectionSegment.hxx".}
proc hasFirstPoint*(this: IntRes2dIntersectionSegment): bool {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntRes2d_IntersectionSegment.hxx".}
proc firstPoint*(this: IntRes2dIntersectionSegment): IntRes2dIntersectionPoint {.
    noSideEffect, importcpp: "FirstPoint",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc hasLastPoint*(this: IntRes2dIntersectionSegment): bool {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntRes2d_IntersectionSegment.hxx".}
proc lastPoint*(this: IntRes2dIntersectionSegment): IntRes2dIntersectionPoint {.
    noSideEffect, importcpp: "LastPoint",
    header: "IntRes2d_IntersectionSegment.hxx".}
