##  Created on: 2014-05-22
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

## ! This class contains representation of triangular selecting frustum, created in case
## ! of polyline selection, and algorithms for overlap detection between selecting
## ! frustum and sensitive entities.
## ! Overlap detection tests are implemented according to the terms of separating axis
## ! theorem (SAT).

type
  SelectMgrTriangularFrustum* {.importcpp: "SelectMgr_TriangularFrustum",
                               header: "SelectMgr_TriangularFrustum.hxx", bycopy.} = object of SelectMgrFrustum[
      3] ## ! Creates new triangular frustum with bases of triangles with vertices theP1,
        ## ! theP2 and theP3 projections onto near and far view frustum planes


proc constructSelectMgrTriangularFrustum*(): SelectMgrTriangularFrustum {.
    constructor, importcpp: "SelectMgr_TriangularFrustum(@)",
    header: "SelectMgr_TriangularFrustum.hxx".}
proc destroySelectMgrTriangularFrustum*(this: var SelectMgrTriangularFrustum) {.
    importcpp: "#.~SelectMgr_TriangularFrustum()",
    header: "SelectMgr_TriangularFrustum.hxx".}
proc build*(this: var SelectMgrTriangularFrustum; theP1: GpPnt2d; theP2: GpPnt2d;
           theP3: GpPnt2d) {.importcpp: "Build",
                           header: "SelectMgr_TriangularFrustum.hxx".}
proc scaleAndTransform*(this: SelectMgrTriangularFrustum;
                       theScale: StandardInteger; theTrsf: GpGTrsf): Handle[
    SelectMgrBaseFrustum] {.noSideEffect, importcpp: "ScaleAndTransform",
                           header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; theMinPnt: SelectMgrVec3;
              theMaxPnt: SelectMgrVec3; theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; theMinPt: SelectMgrVec3;
              theMaxPt: SelectMgrVec3; theInside: ptr StandardBoolean): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; thePnt: GpPnt;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; theArrayOfPnts: TColgpArray1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; thePnt1: GpPnt; thePnt2: GpPnt;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; thePnt1: GpPnt; thePnt2: GpPnt;
              thePnt3: GpPnt; theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc clear*(this: var SelectMgrTriangularFrustum) {.importcpp: "Clear",
    header: "SelectMgr_TriangularFrustum.hxx".}
proc getPlanes*(this: SelectMgrTriangularFrustum;
               thePlaneEquations: var NCollectionVector[SelectMgrVec4]) {.
    noSideEffect, importcpp: "GetPlanes", header: "SelectMgr_TriangularFrustum.hxx".}
proc dumpJson*(this: SelectMgrTriangularFrustum; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_TriangularFrustum.hxx".}
type
  SelectMgrTriangularFrustumbaseType* = SelectMgrFrustum[3]

proc getTypeName*(): cstring {.importcpp: "SelectMgr_TriangularFrustum::get_type_name(@)",
                            header: "SelectMgr_TriangularFrustum.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_TriangularFrustum::get_type_descriptor(@)",
    header: "SelectMgr_TriangularFrustum.hxx".}
proc dynamicType*(this: SelectMgrTriangularFrustum): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_TriangularFrustum.hxx".}

