##  Created on: 1993-01-28
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
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../Standard/Standard_Integer

type
  IntPatch_PrmPrmIntersection_T3Bits* {.importcpp: "IntPatch_PrmPrmIntersection_T3Bits", header: "IntPatch_PrmPrmIntersection_T3Bits.hxx",
                                       bycopy.} = object


proc constructIntPatch_PrmPrmIntersection_T3Bits*(size: Standard_Integer): IntPatch_PrmPrmIntersection_T3Bits {.
    constructor, importcpp: "IntPatch_PrmPrmIntersection_T3Bits(@)",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc Destroy*(this: var IntPatch_PrmPrmIntersection_T3Bits) {.importcpp: "Destroy",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc destroyIntPatch_PrmPrmIntersection_T3Bits*(
    this: var IntPatch_PrmPrmIntersection_T3Bits) {.
    importcpp: "#.~IntPatch_PrmPrmIntersection_T3Bits()",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc Add*(this: var IntPatch_PrmPrmIntersection_T3Bits; t: Standard_Integer) {.
    importcpp: "Add", header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc Val*(this: IntPatch_PrmPrmIntersection_T3Bits; t: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Val",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc Raz*(this: var IntPatch_PrmPrmIntersection_T3Bits; t: Standard_Integer) {.
    importcpp: "Raz", header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc ResetAnd*(this: var IntPatch_PrmPrmIntersection_T3Bits) {.
    importcpp: "ResetAnd", header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc And*(this: var IntPatch_PrmPrmIntersection_T3Bits;
         Oth: var IntPatch_PrmPrmIntersection_T3Bits;
         indiceprecedent: var Standard_Integer): Standard_Integer {.
    importcpp: "And", header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}