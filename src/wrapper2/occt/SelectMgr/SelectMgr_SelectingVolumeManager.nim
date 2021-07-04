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
  ../NCollection/NCollection_Handle, ../Graphic3d/Graphic3d_Camera,
  ../Graphic3d/Graphic3d_SequenceOfHClipPlane,
  ../Graphic3d/Graphic3d_WorldViewProjState, SelectMgr_BaseFrustum,
  SelectMgr_RectangularFrustum, SelectMgr_TriangularFrustumSet,
  ../SelectBasics/SelectBasics_SelectingVolumeManager

## ! This class is used to switch between active selecting volumes depending
## ! on selection type chosen by the user

type
  SelectMgr_SelectingVolumeManager* {.importcpp: "SelectMgr_SelectingVolumeManager", header: "SelectMgr_SelectingVolumeManager.hxx",
                                     bycopy.} = object of SelectBasics_SelectingVolumeManager ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## instances
                                                                                         ## of
                                                                                         ## all
                                                                                         ## available
                                                                                         ## selecting
                                                                                         ## volume
                                                                                         ## types
    ## !< Array of selecting volumes
    ## !< view clipping planes
    ## !< object clipping planes
    ## !< Defines if partially overlapped entities will me detected or not


proc constructSelectMgr_SelectingVolumeManager*(
    theToAllocateFrustums: Standard_Boolean = Standard_True): SelectMgr_SelectingVolumeManager {.
    constructor, importcpp: "SelectMgr_SelectingVolumeManager(@)",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc destroySelectMgr_SelectingVolumeManager*(
    this: var SelectMgr_SelectingVolumeManager) {.
    importcpp: "#.~SelectMgr_SelectingVolumeManager()",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc ScaleAndTransform*(this: SelectMgr_SelectingVolumeManager;
                       theScaleFactor: Standard_Integer; theTrsf: gp_GTrsf;
                       theBuilder: handle[SelectMgr_FrustumBuilder] = nil): SelectMgr_SelectingVolumeManager {.
    noSideEffect, importcpp: "ScaleAndTransform",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc GetActiveSelectionType*(this: SelectMgr_SelectingVolumeManager): Standard_Integer {.
    noSideEffect, importcpp: "GetActiveSelectionType",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc SetActiveSelectionType*(this: var SelectMgr_SelectingVolumeManager;
                            theType: SelectionType) {.
    importcpp: "SetActiveSelectionType",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc Camera*(this: SelectMgr_SelectingVolumeManager): handle[Graphic3d_Camera] {.
    noSideEffect, importcpp: "Camera",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc SetCamera*(this: var SelectMgr_SelectingVolumeManager;
               theCamera: handle[Graphic3d_Camera]) {.importcpp: "SetCamera",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc SetCamera*(this: var SelectMgr_SelectingVolumeManager;
               theProjection: Graphic3d_Mat4d; theWorldView: Graphic3d_Mat4d;
               theIsOrthographic: Standard_Boolean; theWVPState: Graphic3d_WorldViewProjState = Graphic3d_WorldViewProjState()) {.
    importcpp: "SetCamera", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc ProjectionMatrix*(this: SelectMgr_SelectingVolumeManager): Graphic3d_Mat4d {.
    noSideEffect, importcpp: "ProjectionMatrix",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc WorldViewMatrix*(this: SelectMgr_SelectingVolumeManager): Graphic3d_Mat4d {.
    noSideEffect, importcpp: "WorldViewMatrix",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc WindowSize*(this: SelectMgr_SelectingVolumeManager;
                theWidth: var Standard_Integer; theHeight: var Standard_Integer) {.
    noSideEffect, importcpp: "WindowSize",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc WorldViewProjState*(this: SelectMgr_SelectingVolumeManager): Graphic3d_WorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc SetViewport*(this: var SelectMgr_SelectingVolumeManager; theX: Standard_Real;
                 theY: Standard_Real; theWidth: Standard_Real;
                 theHeight: Standard_Real) {.importcpp: "SetViewport",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc SetPixelTolerance*(this: var SelectMgr_SelectingVolumeManager;
                       theTolerance: Standard_Integer) {.
    importcpp: "SetPixelTolerance", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc SetWindowSize*(this: var SelectMgr_SelectingVolumeManager;
                   theWidth: Standard_Integer; theHeight: Standard_Integer) {.
    importcpp: "SetWindowSize", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc BuildSelectingVolume*(this: var SelectMgr_SelectingVolumeManager;
                          thePoint: gp_Pnt2d) {.importcpp: "BuildSelectingVolume",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc BuildSelectingVolume*(this: var SelectMgr_SelectingVolumeManager;
                          theMinPt: gp_Pnt2d; theMaxPt: gp_Pnt2d) {.
    importcpp: "BuildSelectingVolume",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc BuildSelectingVolume*(this: var SelectMgr_SelectingVolumeManager;
                          thePoints: TColgp_Array1OfPnt2d) {.
    importcpp: "BuildSelectingVolume",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectMgr_SelectingVolumeManager; theBoxMin: SelectMgr_Vec3;
              theBoxMax: SelectMgr_Vec3;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectMgr_SelectingVolumeManager; theBoxMin: SelectMgr_Vec3;
              theBoxMax: SelectMgr_Vec3; theInside: ptr Standard_Boolean = nil): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectMgr_SelectingVolumeManager; thePnt: gp_Pnt;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectMgr_SelectingVolumeManager; thePnt: gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectMgr_SelectingVolumeManager;
              theArrayOfPts: handle[TColgp_HArray1OfPnt];
              theSensType: Standard_Integer;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectMgr_SelectingVolumeManager;
              theArrayOfPts: TColgp_Array1OfPnt; theSensType: Standard_Integer;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectMgr_SelectingVolumeManager; thePnt1: gp_Pnt;
              thePnt2: gp_Pnt; thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc Overlaps*(this: SelectMgr_SelectingVolumeManager; thePnt1: gp_Pnt;
              thePnt2: gp_Pnt; thePnt3: gp_Pnt; theSensType: Standard_Integer;
              thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc DistToGeometryCenter*(this: SelectMgr_SelectingVolumeManager; theCOG: gp_Pnt): Standard_Real {.
    noSideEffect, importcpp: "DistToGeometryCenter",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc DetectedPoint*(this: SelectMgr_SelectingVolumeManager; theDepth: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "DetectedPoint",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc AllowOverlapDetection*(this: var SelectMgr_SelectingVolumeManager;
                           theIsToAllow: Standard_Boolean) {.
    importcpp: "AllowOverlapDetection",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc IsOverlapAllowed*(this: SelectMgr_SelectingVolumeManager): Standard_Boolean {.
    noSideEffect, importcpp: "IsOverlapAllowed",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc ViewClipping*(this: SelectMgr_SelectingVolumeManager): handle[
    Graphic3d_SequenceOfHClipPlane] {.noSideEffect, importcpp: "ViewClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc ObjectClipping*(this: SelectMgr_SelectingVolumeManager): handle[
    Graphic3d_SequenceOfHClipPlane] {.noSideEffect, importcpp: "ObjectClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc SetViewClipping*(this: var SelectMgr_SelectingVolumeManager;
                     theViewPlanes: handle[Graphic3d_SequenceOfHClipPlane];
                     theObjPlanes: handle[Graphic3d_SequenceOfHClipPlane];
                     theWorldSelMgr: ptr SelectMgr_SelectingVolumeManager) {.
    importcpp: "SetViewClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc SetViewClipping*(this: var SelectMgr_SelectingVolumeManager;
                     theOther: SelectMgr_SelectingVolumeManager) {.
    importcpp: "SetViewClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc ViewClipRanges*(this: SelectMgr_SelectingVolumeManager): SelectMgr_ViewClipRange {.
    noSideEffect, importcpp: "ViewClipRanges",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc SetViewClipRanges*(this: var SelectMgr_SelectingVolumeManager;
                       theRange: SelectMgr_ViewClipRange) {.
    importcpp: "SetViewClipRanges", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc GetVertices*(this: SelectMgr_SelectingVolumeManager): ptr gp_Pnt {.noSideEffect,
    importcpp: "GetVertices", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc GetNearPickedPnt*(this: SelectMgr_SelectingVolumeManager): gp_Pnt {.
    noSideEffect, importcpp: "GetNearPickedPnt",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc GetFarPickedPnt*(this: SelectMgr_SelectingVolumeManager): gp_Pnt {.
    noSideEffect, importcpp: "GetFarPickedPnt",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc GetMousePosition*(this: SelectMgr_SelectingVolumeManager): gp_Pnt2d {.
    noSideEffect, importcpp: "GetMousePosition",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc ActiveVolume*(this: SelectMgr_SelectingVolumeManager): handle[
    SelectMgr_BaseFrustum] {.noSideEffect, importcpp: "ActiveVolume",
                            header: "SelectMgr_SelectingVolumeManager.hxx".}
proc GetPlanes*(this: SelectMgr_SelectingVolumeManager;
               thePlaneEquations: var NCollection_Vector[SelectMgr_Vec4]) {.
    noSideEffect, importcpp: "GetPlanes",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc DumpJson*(this: SelectMgr_SelectingVolumeManager;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_SelectingVolumeManager.hxx".}