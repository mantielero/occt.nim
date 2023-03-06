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

## ! This class contains representation of rectangular selecting frustum, created in case
## ! of point and box selection, and algorithms for overlap detection between selecting
## ! frustum and sensitive entities. The principle of frustum calculation:
## ! - for point selection: on a near view frustum plane rectangular neighborhood of
## !                        user-picked point is created according to the pixel tolerance
## !                        given and then this rectangle is projected onto far view frustum
## !                        plane. This rectangles define the parallel bases of selecting frustum;
## ! - for box selection: box points are projected onto near and far view frustum planes.
## !                      These 2 projected rectangles define parallel bases of selecting frustum.
## ! Overlap detection tests are implemented according to the terms of separating axis
## ! theorem (SAT).



proc newSelectMgrRectangularFrustum*(): SelectMgrRectangularFrustum {.cdecl,
    constructor, importcpp: "SelectMgr_RectangularFrustum(@)", header: "SelectMgr_RectangularFrustum.hxx".}
proc build*(this: var SelectMgrRectangularFrustum; thePoint: gp_Pnt2d) {.cdecl,
    importcpp: "Build", header: "SelectMgr_RectangularFrustum.hxx".}
proc build*(this: var SelectMgrRectangularFrustum; theMinPnt: gp_Pnt2d; theMaxPnt: gp_Pnt2d) {.
    cdecl, importcpp: "Build", header: "SelectMgr_RectangularFrustum.hxx".}
proc scaleAndTransform*(this: SelectMgrRectangularFrustum; theScaleFactor: cint;
                       theTrsf: gp_GTrsf): Handle[SelectMgrBaseFrustum] {.
    noSideEffect, cdecl, importcpp: "ScaleAndTransform", header: "SelectMgr_RectangularFrustum.hxx".}
proc overlaps*(this: SelectMgrRectangularFrustum; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc overlaps*(this: SelectMgrRectangularFrustum; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; theInside: ptr bool): bool {.noSideEffect,
    cdecl, importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc overlaps*(this: SelectMgrRectangularFrustum; thePnt: gp_Pnt;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc overlaps*(this: SelectMgrRectangularFrustum; thePnt: gp_Pnt): bool {.noSideEffect,
    cdecl, importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc overlaps*(this: SelectMgrRectangularFrustum;
              theArrayOfPnts: TColgpArray1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc overlaps*(this: SelectMgrRectangularFrustum; thePnt1: gp_Pnt; thePnt2: gp_Pnt;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc overlaps*(this: SelectMgrRectangularFrustum; thePnt1: gp_Pnt; thePnt2: gp_Pnt;
              thePnt3: gp_Pnt; theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc distToGeometryCenter*(this: SelectMgrRectangularFrustum; theCOG: gp_Pnt): cfloat {.
    noSideEffect, cdecl, importcpp: "DistToGeometryCenter", header: "SelectMgr_RectangularFrustum.hxx".}
proc detectedPoint*(this: SelectMgrRectangularFrustum; theDepth: cfloat): gp_Pnt {.
    noSideEffect, cdecl, importcpp: "DetectedPoint", header: "SelectMgr_RectangularFrustum.hxx".}
proc getVertices*(this: SelectMgrRectangularFrustum): ptr gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetVertices", header: "SelectMgr_RectangularFrustum.hxx".}
proc getNearPnt*(this: SelectMgrRectangularFrustum): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetNearPnt", header: "SelectMgr_RectangularFrustum.hxx".}
proc getFarPnt*(this: SelectMgrRectangularFrustum): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetFarPnt", header: "SelectMgr_RectangularFrustum.hxx".}
proc getViewRayDirection*(this: SelectMgrRectangularFrustum): gp_Dir {.noSideEffect,
    cdecl, importcpp: "GetViewRayDirection", header: "SelectMgr_RectangularFrustum.hxx".}
proc getMousePosition*(this: SelectMgrRectangularFrustum): gp_Pnt2d {.noSideEffect,
    cdecl, importcpp: "GetMousePosition", header: "SelectMgr_RectangularFrustum.hxx".}
proc getPlanes*(this: SelectMgrRectangularFrustum;
               thePlaneEquations: var NCollectionVector[SelectMgrVec4]) {.
    noSideEffect, cdecl, importcpp: "GetPlanes", header: "SelectMgr_RectangularFrustum.hxx".}
proc dumpJson*(this: SelectMgrRectangularFrustum; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_RectangularFrustum.hxx".}


