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

import
  SelectMgr_Frustum

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

type
  SelectMgr_RectangularFrustum* {.importcpp: "SelectMgr_RectangularFrustum",
                                 header: "SelectMgr_RectangularFrustum.hxx",
                                 bycopy.} = object of SelectMgr_Frustum[4]
    ## !< 3d projection of user-picked selection point onto near view plane
    ## !< 3d projection of user-picked selection point onto far view plane
    ## !< Mouse coordinates
    ## !< Scale factor of applied transformation, if there was any


proc constructSelectMgr_RectangularFrustum*(): SelectMgr_RectangularFrustum {.
    constructor, importcpp: "SelectMgr_RectangularFrustum(@)",
    header: "SelectMgr_RectangularFrustum.hxx".}
proc Build*(this: var SelectMgr_RectangularFrustum; thePoint: gp_Pnt2d) {.
    importcpp: "Build", header: "SelectMgr_RectangularFrustum.hxx".}
proc Build*(this: var SelectMgr_RectangularFrustum; theMinPnt: gp_Pnt2d;
           theMaxPnt: gp_Pnt2d) {.importcpp: "Build",
                                header: "SelectMgr_RectangularFrustum.hxx".}
proc ScaleAndTransform*(this: SelectMgr_RectangularFrustum;
                       theScaleFactor: Standard_Integer; theTrsf: gp_GTrsf): handle[
    SelectMgr_BaseFrustum] {.noSideEffect, importcpp: "ScaleAndTransform",
                            header: "SelectMgr_RectangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_RectangularFrustum; theBoxMin: SelectMgr_Vec3;
              theBoxMax: SelectMgr_Vec3; theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_RectangularFrustum; theBoxMin: SelectMgr_Vec3;
              theBoxMax: SelectMgr_Vec3; theInside: ptr Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_RectangularFrustum; thePnt: gp_Pnt;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_RectangularFrustum; thePnt: gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_RectangularFrustum;
              theArrayOfPnts: TColgp_Array1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_RectangularFrustum; thePnt1: gp_Pnt; thePnt2: gp_Pnt;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_RectangularFrustum; thePnt1: gp_Pnt; thePnt2: gp_Pnt;
              thePnt3: gp_Pnt; theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_RectangularFrustum.hxx".}
proc DistToGeometryCenter*(this: SelectMgr_RectangularFrustum; theCOG: gp_Pnt): Standard_Real {.
    noSideEffect, importcpp: "DistToGeometryCenter",
    header: "SelectMgr_RectangularFrustum.hxx".}
proc DetectedPoint*(this: SelectMgr_RectangularFrustum; theDepth: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "DetectedPoint",
    header: "SelectMgr_RectangularFrustum.hxx".}
proc GetVertices*(this: SelectMgr_RectangularFrustum): ptr gp_Pnt {.noSideEffect,
    importcpp: "GetVertices", header: "SelectMgr_RectangularFrustum.hxx".}
proc GetNearPnt*(this: SelectMgr_RectangularFrustum): gp_Pnt {.noSideEffect,
    importcpp: "GetNearPnt", header: "SelectMgr_RectangularFrustum.hxx".}
proc GetFarPnt*(this: SelectMgr_RectangularFrustum): gp_Pnt {.noSideEffect,
    importcpp: "GetFarPnt", header: "SelectMgr_RectangularFrustum.hxx".}
proc GetViewRayDirection*(this: SelectMgr_RectangularFrustum): gp_Dir {.
    noSideEffect, importcpp: "GetViewRayDirection",
    header: "SelectMgr_RectangularFrustum.hxx".}
proc GetMousePosition*(this: SelectMgr_RectangularFrustum): gp_Pnt2d {.noSideEffect,
    importcpp: "GetMousePosition", header: "SelectMgr_RectangularFrustum.hxx".}
proc GetPlanes*(this: SelectMgr_RectangularFrustum;
               thePlaneEquations: var NCollection_Vector[SelectMgr_Vec4]) {.
    noSideEffect, importcpp: "GetPlanes",
    header: "SelectMgr_RectangularFrustum.hxx".}
proc DumpJson*(this: SelectMgr_RectangularFrustum;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "SelectMgr_RectangularFrustum.hxx".}