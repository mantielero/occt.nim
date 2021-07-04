##  Created on: 1992-08-26
##  Created by: Christophe MARION
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
  ../Standard/Standard_Handle, ../IntRes2d/IntRes2d_IntersectionPoint,
  ../Standard/Standard_Integer, HLRBRep_CInter, HLRBRep_InterCSurf,
  ../Standard/Standard_Address, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of gp_Lin"
discard "forward decl of IntRes2d_IntersectionPoint"
discard "forward decl of IntCurveSurface_IntersectionPoint"
discard "forward decl of IntRes2d_IntersectionSegment"
discard "forward decl of IntCurveSurface_IntersectionSegment"
type
  HLRBRep_Intersector* {.importcpp: "HLRBRep_Intersector",
                        header: "HLRBRep_Intersector.hxx", bycopy.} = object


proc constructHLRBRep_Intersector*(): HLRBRep_Intersector {.constructor,
    importcpp: "HLRBRep_Intersector(@)", header: "HLRBRep_Intersector.hxx".}
proc Perform*(this: var HLRBRep_Intersector; A1: Standard_Address; da1: Standard_Real;
             db1: Standard_Real) {.importcpp: "Perform",
                                 header: "HLRBRep_Intersector.hxx".}
proc Perform*(this: var HLRBRep_Intersector; nA: Standard_Integer;
             A1: Standard_Address; da1: Standard_Real; db1: Standard_Real;
             nB: Standard_Integer; A2: Standard_Address; da2: Standard_Real;
             db2: Standard_Real; NoBound: Standard_Boolean) {.importcpp: "Perform",
    header: "HLRBRep_Intersector.hxx".}
proc SimulateOnePoint*(this: var HLRBRep_Intersector; A1: Standard_Address;
                      U: Standard_Real; A2: Standard_Address; V: Standard_Real) {.
    importcpp: "SimulateOnePoint", header: "HLRBRep_Intersector.hxx".}
proc Load*(this: var HLRBRep_Intersector; A: var Standard_Address) {.importcpp: "Load",
    header: "HLRBRep_Intersector.hxx".}
proc Perform*(this: var HLRBRep_Intersector; L: gp_Lin; P: Standard_Real) {.
    importcpp: "Perform", header: "HLRBRep_Intersector.hxx".}
proc IsDone*(this: HLRBRep_Intersector): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "HLRBRep_Intersector.hxx".}
proc NbPoints*(this: HLRBRep_Intersector): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "HLRBRep_Intersector.hxx".}
proc Point*(this: HLRBRep_Intersector; N: Standard_Integer): IntRes2d_IntersectionPoint {.
    noSideEffect, importcpp: "Point", header: "HLRBRep_Intersector.hxx".}
proc CSPoint*(this: HLRBRep_Intersector; N: Standard_Integer): IntCurveSurface_IntersectionPoint {.
    noSideEffect, importcpp: "CSPoint", header: "HLRBRep_Intersector.hxx".}
proc NbSegments*(this: HLRBRep_Intersector): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "HLRBRep_Intersector.hxx".}
proc Segment*(this: HLRBRep_Intersector; N: Standard_Integer): IntRes2d_IntersectionSegment {.
    noSideEffect, importcpp: "Segment", header: "HLRBRep_Intersector.hxx".}
proc CSSegment*(this: HLRBRep_Intersector; N: Standard_Integer): IntCurveSurface_IntersectionSegment {.
    noSideEffect, importcpp: "CSSegment", header: "HLRBRep_Intersector.hxx".}
proc Destroy*(this: var HLRBRep_Intersector) {.importcpp: "Destroy",
    header: "HLRBRep_Intersector.hxx".}
proc destroyHLRBRep_Intersector*(this: var HLRBRep_Intersector) {.
    importcpp: "#.~HLRBRep_Intersector()", header: "HLRBRep_Intersector.hxx".}