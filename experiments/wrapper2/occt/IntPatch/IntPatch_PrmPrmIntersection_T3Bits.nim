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

type
  IntPatchPrmPrmIntersectionT3Bits* {.importcpp: "IntPatch_PrmPrmIntersection_T3Bits", header: "IntPatch_PrmPrmIntersection_T3Bits.hxx",
                                     bycopy.} = object


proc constructIntPatchPrmPrmIntersectionT3Bits*(size: cint): IntPatchPrmPrmIntersectionT3Bits {.
    constructor, importcpp: "IntPatch_PrmPrmIntersection_T3Bits(@)",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc destroy*(this: var IntPatchPrmPrmIntersectionT3Bits) {.importcpp: "Destroy",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc destroyIntPatchPrmPrmIntersectionT3Bits*(
    this: var IntPatchPrmPrmIntersectionT3Bits) {.
    importcpp: "#.~IntPatch_PrmPrmIntersection_T3Bits()",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc add*(this: var IntPatchPrmPrmIntersectionT3Bits; t: cint) {.importcpp: "Add",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc val*(this: IntPatchPrmPrmIntersectionT3Bits; t: cint): cint {.noSideEffect,
    importcpp: "Val", header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc raz*(this: var IntPatchPrmPrmIntersectionT3Bits; t: cint) {.importcpp: "Raz",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc resetAnd*(this: var IntPatchPrmPrmIntersectionT3Bits) {.importcpp: "ResetAnd",
    header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}
proc `and`*(this: var IntPatchPrmPrmIntersectionT3Bits;
           oth: var IntPatchPrmPrmIntersectionT3Bits; indiceprecedent: var cint): cint {.
    importcpp: "And", header: "IntPatch_PrmPrmIntersection_T3Bits.hxx".}

























