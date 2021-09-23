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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  IntRes2d_IntersectionPoint

discard "forward decl of Standard_DomainError"
discard "forward decl of IntRes2d_IntersectionPoint"
type
  IntRes2d_IntersectionSegment* {.importcpp: "IntRes2d_IntersectionSegment",
                                 header: "IntRes2d_IntersectionSegment.hxx",
                                 bycopy.} = object ## ! Empty constructor.


proc constructIntRes2d_IntersectionSegment*(): IntRes2d_IntersectionSegment {.
    constructor, importcpp: "IntRes2d_IntersectionSegment(@)",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc constructIntRes2d_IntersectionSegment*(P1: IntRes2d_IntersectionPoint;
    P2: IntRes2d_IntersectionPoint; Oppos: Standard_Boolean;
    ReverseFlag: Standard_Boolean): IntRes2d_IntersectionSegment {.constructor,
    importcpp: "IntRes2d_IntersectionSegment(@)",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc constructIntRes2d_IntersectionSegment*(P: IntRes2d_IntersectionPoint;
    First: Standard_Boolean; Oppos: Standard_Boolean; ReverseFlag: Standard_Boolean): IntRes2d_IntersectionSegment {.
    constructor, importcpp: "IntRes2d_IntersectionSegment(@)",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc constructIntRes2d_IntersectionSegment*(Oppos: Standard_Boolean): IntRes2d_IntersectionSegment {.
    constructor, importcpp: "IntRes2d_IntersectionSegment(@)",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc IsOpposite*(this: IntRes2d_IntersectionSegment): Standard_Boolean {.
    noSideEffect, importcpp: "IsOpposite",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc HasFirstPoint*(this: IntRes2d_IntersectionSegment): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstPoint",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc FirstPoint*(this: IntRes2d_IntersectionSegment): IntRes2d_IntersectionPoint {.
    noSideEffect, importcpp: "FirstPoint",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc HasLastPoint*(this: IntRes2d_IntersectionSegment): Standard_Boolean {.
    noSideEffect, importcpp: "HasLastPoint",
    header: "IntRes2d_IntersectionSegment.hxx".}
proc LastPoint*(this: IntRes2d_IntersectionSegment): IntRes2d_IntersectionPoint {.
    noSideEffect, importcpp: "LastPoint",
    header: "IntRes2d_IntersectionSegment.hxx".}