import ../../tkmath/tcolgp/tcolgp_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/ncollection/ncollection_types
import selectmgr_types





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



proc newSelectMgrTriangularFrustum*(): SelectMgrTriangularFrustum {.cdecl,
    constructor, importcpp: "SelectMgr_TriangularFrustum(@)", header: "SelectMgr_TriangularFrustum.hxx".}
proc destroySelectMgrTriangularFrustum*(this: var SelectMgrTriangularFrustum) {.
    cdecl, importcpp: "#.~SelectMgr_TriangularFrustum()", header: "SelectMgr_TriangularFrustum.hxx".}
proc build*(this: var SelectMgrTriangularFrustum; theP1: Pnt2dObj; theP2: Pnt2dObj;
           theP3: Pnt2dObj) {.cdecl, importcpp: "Build", header: "SelectMgr_TriangularFrustum.hxx".}
proc scaleAndTransform*(this: SelectMgrTriangularFrustum; theScale: cint;
                       theTrsf: GTrsf): Handle[SelectMgrBaseFrustum] {.
    noSideEffect, cdecl, importcpp: "ScaleAndTransform", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; theMinPnt: SelectMgrVec3;
              theMaxPnt: SelectMgrVec3; theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; theMinPt: SelectMgrVec3;
              theMaxPt: SelectMgrVec3; theInside: ptr bool): bool {.noSideEffect,
    cdecl, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; thePnt: PntObj;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; theArrayOfPnts: TColgpArray1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; thePnt1: PntObj; thePnt2: PntObj;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustum; thePnt1: PntObj; thePnt2: PntObj;
              thePnt3: PntObj; theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc clear*(this: var SelectMgrTriangularFrustum) {.cdecl, importcpp: "Clear",
    header: "SelectMgr_TriangularFrustum.hxx".}
proc getPlanes*(this: SelectMgrTriangularFrustum;
               thePlaneEquations: var NCollectionVector[SelectMgrVec4]) {.
    noSideEffect, cdecl, importcpp: "GetPlanes", header: "SelectMgr_TriangularFrustum.hxx".}
proc dumpJson*(this: SelectMgrTriangularFrustum; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_TriangularFrustum.hxx".}


