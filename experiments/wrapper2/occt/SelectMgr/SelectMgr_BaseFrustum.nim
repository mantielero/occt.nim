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
  ../gp/gp_GTrsf, ../Graphic3d/Graphic3d_Camera,
  ../Graphic3d/Graphic3d_WorldViewProjState, ../Select3D/Select3D_BndBox3d,
  ../Select3D/Select3D_TypeOfSensitivity, SelectMgr_FrustumBuilder,
  SelectMgr_VectorTypes, SelectMgr_ViewClipRange,
  ../SelectBasics/SelectBasics_PickResult, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfPnt2d, ../Standard/Standard_OStream

## ! This class is an interface for different types of selecting frustums,
## ! defining different selection types, like point, box or polyline
## ! selection. It contains signatures of functions for detection of
## ! overlap by sensitive entity and initializes some data for building
## ! the selecting frustum

type
  SelectMgr_BaseFrustum* {.importcpp: "SelectMgr_BaseFrustum",
                          header: "SelectMgr_BaseFrustum.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## new
                                                                                                ## selecting
                                                                                                ## volume
                                                                                                ## with
                                                                                                ## pixel
                                                                                                ## toletance
                                                                                                ## set
                                                                                                ## to
                                                                                                ## 2,
                                                                                                ##
                                                                                                ## !
                                                                                                ## orthographic
                                                                                                ## camera
                                                                                                ## and
                                                                                                ## empty
                                                                                                ## frustum
                                                                                                ## builder
    ## !< Pixel tolerance
    ## !< Defines if current camera is orthographic
    ## !< A tool implementing methods for volume build
    ## !< camera definition


proc constructSelectMgr_BaseFrustum*(): SelectMgr_BaseFrustum {.constructor,
    importcpp: "SelectMgr_BaseFrustum(@)", header: "SelectMgr_BaseFrustum.hxx".}
proc destroySelectMgr_BaseFrustum*(this: var SelectMgr_BaseFrustum) {.
    importcpp: "#.~SelectMgr_BaseFrustum()", header: "SelectMgr_BaseFrustum.hxx".}
proc Camera*(this: SelectMgr_BaseFrustum): handle[Graphic3d_Camera] {.noSideEffect,
    importcpp: "Camera", header: "SelectMgr_BaseFrustum.hxx".}
proc SetCamera*(this: var SelectMgr_BaseFrustum; theCamera: handle[Graphic3d_Camera]) {.
    importcpp: "SetCamera", header: "SelectMgr_BaseFrustum.hxx".}
proc SetCamera*(this: var SelectMgr_BaseFrustum; theProjection: Graphic3d_Mat4d;
               theWorldView: Graphic3d_Mat4d; theIsOrthographic: Standard_Boolean;
    theWVPState: Graphic3d_WorldViewProjState = Graphic3d_WorldViewProjState()) {.
    importcpp: "SetCamera", header: "SelectMgr_BaseFrustum.hxx".}
proc ProjectionMatrix*(this: SelectMgr_BaseFrustum): Graphic3d_Mat4d {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "SelectMgr_BaseFrustum.hxx".}
proc WorldViewMatrix*(this: SelectMgr_BaseFrustum): Graphic3d_Mat4d {.noSideEffect,
    importcpp: "WorldViewMatrix", header: "SelectMgr_BaseFrustum.hxx".}
proc WorldViewProjState*(this: SelectMgr_BaseFrustum): Graphic3d_WorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState",
    header: "SelectMgr_BaseFrustum.hxx".}
proc SetPixelTolerance*(this: var SelectMgr_BaseFrustum; theTol: Standard_Integer) {.
    importcpp: "SetPixelTolerance", header: "SelectMgr_BaseFrustum.hxx".}
proc SetWindowSize*(this: var SelectMgr_BaseFrustum; theWidth: Standard_Integer;
                   theHeight: Standard_Integer) {.importcpp: "SetWindowSize",
    header: "SelectMgr_BaseFrustum.hxx".}
proc WindowSize*(this: SelectMgr_BaseFrustum; theWidth: var Standard_Integer;
                theHeight: var Standard_Integer) {.noSideEffect,
    importcpp: "WindowSize", header: "SelectMgr_BaseFrustum.hxx".}
proc SetViewport*(this: var SelectMgr_BaseFrustum; theX: Standard_Real;
                 theY: Standard_Real; theWidth: Standard_Real;
                 theHeight: Standard_Real) {.importcpp: "SetViewport",
    header: "SelectMgr_BaseFrustum.hxx".}
proc SetBuilder*(this: var SelectMgr_BaseFrustum;
                theBuilder: handle[SelectMgr_FrustumBuilder]) {.
    importcpp: "SetBuilder", header: "SelectMgr_BaseFrustum.hxx".}
proc Build*(this: var SelectMgr_BaseFrustum; a2: gp_Pnt2d) {.importcpp: "Build",
    header: "SelectMgr_BaseFrustum.hxx".}
  ## thePoint
proc Build*(this: var SelectMgr_BaseFrustum; a2: gp_Pnt2d; ## theMinPt
           a3: gp_Pnt2d) {.importcpp: "Build", header: "SelectMgr_BaseFrustum.hxx".}
  ## theMaxPt
proc Build*(this: var SelectMgr_BaseFrustum; a2: gp_Pnt2d; ## theP1
           a3: gp_Pnt2d;       ## theP2
           a4: gp_Pnt2d) {.importcpp: "Build", header: "SelectMgr_BaseFrustum.hxx".}
  ## theP3
proc Build*(this: var SelectMgr_BaseFrustum; a2: TColgp_Array1OfPnt2d) {.
    importcpp: "Build", header: "SelectMgr_BaseFrustum.hxx".}
  ## thePoints
proc ScaleAndTransform*(this: SelectMgr_BaseFrustum; a2: Standard_Integer; ## theScaleFactor
                       a3: gp_GTrsf): handle[SelectMgr_BaseFrustum] {.noSideEffect,
    importcpp: "ScaleAndTransform", header: "SelectMgr_BaseFrustum.hxx".}
  ## theTrsf
proc Overlaps*(this: SelectMgr_BaseFrustum; theBoxMin: SelectMgr_Vec3;
              theBoxMax: SelectMgr_Vec3; theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc Overlaps*(this: SelectMgr_BaseFrustum; theBoxMin: SelectMgr_Vec3;
              theBoxMax: SelectMgr_Vec3; theInside: ptr Standard_Boolean = nil): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc Overlaps*(this: SelectMgr_BaseFrustum; thePnt: gp_Pnt;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc Overlaps*(this: SelectMgr_BaseFrustum; thePnt: gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc Overlaps*(this: SelectMgr_BaseFrustum; theArrayOfPnts: TColgp_Array1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc Overlaps*(this: SelectMgr_BaseFrustum; thePnt1: gp_Pnt; thePnt2: gp_Pnt;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc Overlaps*(this: SelectMgr_BaseFrustum; thePt1: gp_Pnt; thePt2: gp_Pnt;
              thePt3: gp_Pnt; theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgr_ViewClipRange;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps", header: "SelectMgr_BaseFrustum.hxx".}
proc DistToGeometryCenter*(this: SelectMgr_BaseFrustum; theCOG: gp_Pnt): Standard_Real {.
    noSideEffect, importcpp: "DistToGeometryCenter",
    header: "SelectMgr_BaseFrustum.hxx".}
proc DetectedPoint*(this: SelectMgr_BaseFrustum; theDepth: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "DetectedPoint", header: "SelectMgr_BaseFrustum.hxx".}
proc GetPlanes*(this: SelectMgr_BaseFrustum;
               thePlaneEquations: var NCollection_Vector[SelectMgr_Vec4]) {.
    noSideEffect, importcpp: "GetPlanes", header: "SelectMgr_BaseFrustum.hxx".}
proc DumpJson*(this: SelectMgr_BaseFrustum; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_BaseFrustum.hxx".}
type
  SelectMgr_BaseFrustumbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "SelectMgr_BaseFrustum::get_type_name(@)",
                              header: "SelectMgr_BaseFrustum.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_BaseFrustum::get_type_descriptor(@)",
    header: "SelectMgr_BaseFrustum.hxx".}
proc DynamicType*(this: SelectMgr_BaseFrustum): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_BaseFrustum.hxx".}