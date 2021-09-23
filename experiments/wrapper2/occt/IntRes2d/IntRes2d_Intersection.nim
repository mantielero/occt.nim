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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  IntRes2d_SequenceOfIntersectionPoint, IntRes2d_SequenceOfIntersectionSegment,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntRes2d_IntersectionPoint"
discard "forward decl of IntRes2d_IntersectionSegment"
type
  IntRes2d_Intersection* {.importcpp: "IntRes2d_Intersection",
                          header: "IntRes2d_Intersection.hxx", bycopy.} = object ## !
                                                                            ## returns TRUE when the
                                                                            ## computation was
                                                                            ## successful.
                                                                            ## !
                                                                            ## Empty
                                                                            ## constructor.


proc IsDone*(this: IntRes2d_Intersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntRes2d_Intersection.hxx".}
proc IsEmpty*(this: IntRes2d_Intersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntRes2d_Intersection.hxx".}
proc NbPoints*(this: IntRes2d_Intersection): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntRes2d_Intersection.hxx".}
proc Point*(this: IntRes2d_Intersection; N: Standard_Integer): IntRes2d_IntersectionPoint {.
    noSideEffect, importcpp: "Point", header: "IntRes2d_Intersection.hxx".}
proc NbSegments*(this: IntRes2d_Intersection): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "IntRes2d_Intersection.hxx".}
proc Segment*(this: IntRes2d_Intersection; N: Standard_Integer): IntRes2d_IntersectionSegment {.
    noSideEffect, importcpp: "Segment", header: "IntRes2d_Intersection.hxx".}
proc SetReversedParameters*(this: var IntRes2d_Intersection;
                           Reverseflag: Standard_Boolean) {.
    importcpp: "SetReversedParameters", header: "IntRes2d_Intersection.hxx".}