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
  ../NCollection/NCollection_Handle, ../NCollection/NCollection_List,
  SelectMgr_BaseFrustum, SelectMgr_TriangularFrustum

type
  SelectMgr_TriangFrustums* = NCollection_List[handle[SelectMgr_TriangularFrustum]]
  SelectMgr_TriangFrustumsIter* = Iterator[handle[SelectMgr_TriangularFrustum]]

## ! This class is used to handle polyline selection. The main principle of polyline selection
## ! algorithm is to split the polygon defined by polyline onto triangles. Than each of
## ! them is considered as a base for triangular frustum building. In other
## ! words, each triangle vertiex will be projected from 2d screen space to 3d world space
## ! onto near and far view frustum planes. Thus, the projected triangles make up the bases of
## ! selecting frustum. When the set of such frustums is created, the function determining
## ! selection iterates through triangular frustum set and searches for overlap with any
## ! frustum.

type
  SelectMgr_TriangularFrustumSet* {.importcpp: "SelectMgr_TriangularFrustumSet", header: "SelectMgr_TriangularFrustumSet.hxx",
                                   bycopy.} = object of SelectMgr_BaseFrustum ## ! Checks whether the segment
                                                                         ## intersects with the
                                                                         ## boundary of the current volume
                                                                         ## selection


proc constructSelectMgr_TriangularFrustumSet*(): SelectMgr_TriangularFrustumSet {.
    constructor, importcpp: "SelectMgr_TriangularFrustumSet(@)",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc destroySelectMgr_TriangularFrustumSet*(
    this: var SelectMgr_TriangularFrustumSet) {.
    importcpp: "#.~SelectMgr_TriangularFrustumSet()",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc Build*(this: var SelectMgr_TriangularFrustumSet;
           thePoints: TColgp_Array1OfPnt2d) {.importcpp: "Build",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc ScaleAndTransform*(this: SelectMgr_TriangularFrustumSet;
                       theScale: Standard_Integer; theTrsf: gp_GTrsf): handle[
    SelectMgr_BaseFrustum] {.noSideEffect, importcpp: "ScaleAndTransform",
                            header: "SelectMgr_TriangularFrustumSet.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustumSet; theMinPnt: SelectMgr_Vec3;
              theMaxPnt: SelectMgr_Vec3; theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustumSet; theMinPnt: SelectMgr_Vec3;
              theMaxPnt: SelectMgr_Vec3; theInside: ptr Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustumSet; thePnt: gp_Pnt;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustumSet;
              theArrayOfPnts: TColgp_Array1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustumSet; thePnt1: gp_Pnt;
              thePnt2: gp_Pnt; theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustumSet; thePnt1: gp_Pnt;
              thePnt2: gp_Pnt; thePnt3: gp_Pnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc GetPlanes*(this: SelectMgr_TriangularFrustumSet;
               thePlaneEquations: var NCollection_Vector[SelectMgr_Vec4]) {.
    noSideEffect, importcpp: "GetPlanes",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc SetAllowOverlapDetection*(this: var SelectMgr_TriangularFrustumSet;
                              theIsToAllow: Standard_Boolean) {.
    importcpp: "SetAllowOverlapDetection",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc DumpJson*(this: SelectMgr_TriangularFrustumSet;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_TriangularFrustumSet.hxx".}