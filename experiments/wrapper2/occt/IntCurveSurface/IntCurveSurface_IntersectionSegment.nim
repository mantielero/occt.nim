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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, IntCurveSurface_IntersectionPoint

discard "forward decl of IntCurveSurface_IntersectionPoint"
type
  IntCurveSurface_IntersectionSegment* {.importcpp: "IntCurveSurface_IntersectionSegment", header: "IntCurveSurface_IntersectionSegment.hxx",
                                        bycopy.} = object


proc constructIntCurveSurface_IntersectionSegment*(): IntCurveSurface_IntersectionSegment {.
    constructor, importcpp: "IntCurveSurface_IntersectionSegment(@)",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc constructIntCurveSurface_IntersectionSegment*(
    P1: IntCurveSurface_IntersectionPoint; P2: IntCurveSurface_IntersectionPoint): IntCurveSurface_IntersectionSegment {.
    constructor, importcpp: "IntCurveSurface_IntersectionSegment(@)",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc SetValues*(this: var IntCurveSurface_IntersectionSegment;
               P1: IntCurveSurface_IntersectionPoint;
               P2: IntCurveSurface_IntersectionPoint) {.importcpp: "SetValues",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc Values*(this: IntCurveSurface_IntersectionSegment;
            P1: var IntCurveSurface_IntersectionPoint;
            P2: var IntCurveSurface_IntersectionPoint) {.noSideEffect,
    importcpp: "Values", header: "IntCurveSurface_IntersectionSegment.hxx".}
proc FirstPoint*(this: IntCurveSurface_IntersectionSegment;
                P1: var IntCurveSurface_IntersectionPoint) {.noSideEffect,
    importcpp: "FirstPoint", header: "IntCurveSurface_IntersectionSegment.hxx".}
proc SecondPoint*(this: IntCurveSurface_IntersectionSegment;
                 P2: var IntCurveSurface_IntersectionPoint) {.noSideEffect,
    importcpp: "SecondPoint", header: "IntCurveSurface_IntersectionSegment.hxx".}
proc FirstPoint*(this: IntCurveSurface_IntersectionSegment): IntCurveSurface_IntersectionPoint {.
    noSideEffect, importcpp: "FirstPoint",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc SecondPoint*(this: IntCurveSurface_IntersectionSegment): IntCurveSurface_IntersectionPoint {.
    noSideEffect, importcpp: "SecondPoint",
    header: "IntCurveSurface_IntersectionSegment.hxx".}
proc Dump*(this: IntCurveSurface_IntersectionSegment) {.noSideEffect,
    importcpp: "Dump", header: "IntCurveSurface_IntersectionSegment.hxx".}