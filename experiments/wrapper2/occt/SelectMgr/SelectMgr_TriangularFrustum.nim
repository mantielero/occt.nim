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

## ! This class contains representation of triangular selecting frustum, created in case
## ! of polyline selection, and algorithms for overlap detection between selecting
## ! frustum and sensitive entities.
## ! Overlap detection tests are implemented according to the terms of separating axis
## ! theorem (SAT).

type
  SelectMgr_TriangularFrustum* {.importcpp: "SelectMgr_TriangularFrustum",
                                header: "SelectMgr_TriangularFrustum.hxx", bycopy.} = object of SelectMgr_Frustum[
      3] ## ! Creates new triangular frustum with bases of triangles with vertices theP1,
        ## ! theP2 and theP3 projections onto near and far view frustum planes


proc constructSelectMgr_TriangularFrustum*(): SelectMgr_TriangularFrustum {.
    constructor, importcpp: "SelectMgr_TriangularFrustum(@)",
    header: "SelectMgr_TriangularFrustum.hxx".}
proc destroySelectMgr_TriangularFrustum*(this: var SelectMgr_TriangularFrustum) {.
    importcpp: "#.~SelectMgr_TriangularFrustum()",
    header: "SelectMgr_TriangularFrustum.hxx".}
proc Build*(this: var SelectMgr_TriangularFrustum; theP1: gp_Pnt2d; theP2: gp_Pnt2d;
           theP3: gp_Pnt2d) {.importcpp: "Build",
                            header: "SelectMgr_TriangularFrustum.hxx".}
proc ScaleAndTransform*(this: SelectMgr_TriangularFrustum;
                       theScale: Standard_Integer; theTrsf: gp_GTrsf): handle[
    SelectMgr_BaseFrustum] {.noSideEffect, importcpp: "ScaleAndTransform",
                            header: "SelectMgr_TriangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustum; theMinPnt: SelectMgr_Vec3;
              theMaxPnt: SelectMgr_Vec3; theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustum; theMinPt: SelectMgr_Vec3;
              theMaxPt: SelectMgr_Vec3; theInside: ptr Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustum; thePnt: gp_Pnt;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustum;
              theArrayOfPnts: TColgp_Array1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustum; thePnt1: gp_Pnt; thePnt2: gp_Pnt;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc Overlaps*(this: SelectMgr_TriangularFrustum; thePnt1: gp_Pnt; thePnt2: gp_Pnt;
              thePnt3: gp_Pnt; theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_TriangularFrustum.hxx".}
proc Clear*(this: var SelectMgr_TriangularFrustum) {.importcpp: "Clear",
    header: "SelectMgr_TriangularFrustum.hxx".}
proc GetPlanes*(this: SelectMgr_TriangularFrustum;
               thePlaneEquations: var NCollection_Vector[SelectMgr_Vec4]) {.
    noSideEffect, importcpp: "GetPlanes", header: "SelectMgr_TriangularFrustum.hxx".}
proc DumpJson*(this: SelectMgr_TriangularFrustum; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_TriangularFrustum.hxx".}
type
  SelectMgr_TriangularFrustumbase_type* = SelectMgr_Frustum[3]

proc get_type_name*(): cstring {.importcpp: "SelectMgr_TriangularFrustum::get_type_name(@)",
                              header: "SelectMgr_TriangularFrustum.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_TriangularFrustum::get_type_descriptor(@)",
    header: "SelectMgr_TriangularFrustum.hxx".}
proc DynamicType*(this: SelectMgr_TriangularFrustum): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_TriangularFrustum.hxx".}