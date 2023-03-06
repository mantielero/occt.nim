import ../tcolgp/tcolgp_types
import ../gp/gp_types
import ../standard/standard_types
import ../ncollection/ncollection_types
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





proc newSelectMgrTriangularFrustumSet*(): SelectMgrTriangularFrustumSet {.cdecl,
    constructor, importcpp: "SelectMgr_TriangularFrustumSet(@)", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc destroySelectMgrTriangularFrustumSet*(
    this: var SelectMgrTriangularFrustumSet) {.cdecl,
    importcpp: "#.~SelectMgr_TriangularFrustumSet()", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc build*(this: var SelectMgrTriangularFrustumSet; thePoints: TColgpArray1OfPnt2d) {.
    cdecl, importcpp: "Build", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc scaleAndTransform*(this: SelectMgrTriangularFrustumSet; theScale: cint;
                       theTrsf: GTrsf): Handle[SelectMgrBaseFrustum] {.
    noSideEffect, cdecl, importcpp: "ScaleAndTransform", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; theMinPnt: SelectMgrVec3;
              theMaxPnt: SelectMgrVec3; theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; theMinPnt: SelectMgrVec3;
              theMaxPnt: SelectMgrVec3; theInside: ptr bool): bool {.noSideEffect,
    cdecl, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; thePnt: PntObj;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet;
              theArrayOfPnts: TColgpArray1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; thePnt1: PntObj; thePnt2: PntObj;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; thePnt1: PntObj; thePnt2: PntObj;
              thePnt3: PntObj; theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc getPlanes*(this: SelectMgrTriangularFrustumSet;
               thePlaneEquations: var NCollectionVector[SelectMgrVec4]) {.
    noSideEffect, cdecl, importcpp: "GetPlanes", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc setAllowOverlapDetection*(this: var SelectMgrTriangularFrustumSet;
                              theIsToAllow: bool) {.cdecl,
    importcpp: "SetAllowOverlapDetection", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc dumpJson*(this: SelectMgrTriangularFrustumSet;
              theOStream: var StandardOStream; theDepth: cint = -1) {.noSideEffect,
    cdecl, importcpp: "DumpJson", header: "SelectMgr_TriangularFrustumSet.hxx".}


