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

## ! This class is used to switch between active selecting volumes depending
## ! on selection type chosen by the user

type
  SelectMgrSelectingVolumeManager* {.importcpp: "SelectMgr_SelectingVolumeManager", header: "SelectMgr_SelectingVolumeManager.hxx",
                                    bycopy.} = object of SelectBasicsSelectingVolumeManager ##
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


proc constructSelectMgrSelectingVolumeManager*(
    theToAllocateFrustums: StandardBoolean = standardTrue): SelectMgrSelectingVolumeManager {.
    constructor, importcpp: "SelectMgr_SelectingVolumeManager(@)",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc destroySelectMgrSelectingVolumeManager*(
    this: var SelectMgrSelectingVolumeManager) {.
    importcpp: "#.~SelectMgr_SelectingVolumeManager()",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc scaleAndTransform*(this: SelectMgrSelectingVolumeManager;
                       theScaleFactor: StandardInteger; theTrsf: GpGTrsf;
                       theBuilder: Handle[SelectMgrFrustumBuilder] = nil): SelectMgrSelectingVolumeManager {.
    noSideEffect, importcpp: "ScaleAndTransform",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getActiveSelectionType*(this: SelectMgrSelectingVolumeManager): StandardInteger {.
    noSideEffect, importcpp: "GetActiveSelectionType",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setActiveSelectionType*(this: var SelectMgrSelectingVolumeManager;
                            theType: SelectionType) {.
    importcpp: "SetActiveSelectionType",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc camera*(this: SelectMgrSelectingVolumeManager): Handle[Graphic3dCamera] {.
    noSideEffect, importcpp: "Camera",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setCamera*(this: var SelectMgrSelectingVolumeManager;
               theCamera: Handle[Graphic3dCamera]) {.importcpp: "SetCamera",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setCamera*(this: var SelectMgrSelectingVolumeManager;
               theProjection: Graphic3dMat4d; theWorldView: Graphic3dMat4d;
               theIsOrthographic: StandardBoolean; theWVPState: Graphic3dWorldViewProjState = graphic3dWorldViewProjState()) {.
    importcpp: "SetCamera", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc projectionMatrix*(this: SelectMgrSelectingVolumeManager): Graphic3dMat4d {.
    noSideEffect, importcpp: "ProjectionMatrix",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc worldViewMatrix*(this: SelectMgrSelectingVolumeManager): Graphic3dMat4d {.
    noSideEffect, importcpp: "WorldViewMatrix",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc windowSize*(this: SelectMgrSelectingVolumeManager;
                theWidth: var StandardInteger; theHeight: var StandardInteger) {.
    noSideEffect, importcpp: "WindowSize",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc worldViewProjState*(this: SelectMgrSelectingVolumeManager): Graphic3dWorldViewProjState {.
    noSideEffect, importcpp: "WorldViewProjState",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setViewport*(this: var SelectMgrSelectingVolumeManager; theX: StandardReal;
                 theY: StandardReal; theWidth: StandardReal; theHeight: StandardReal) {.
    importcpp: "SetViewport", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setPixelTolerance*(this: var SelectMgrSelectingVolumeManager;
                       theTolerance: StandardInteger) {.
    importcpp: "SetPixelTolerance", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setWindowSize*(this: var SelectMgrSelectingVolumeManager;
                   theWidth: StandardInteger; theHeight: StandardInteger) {.
    importcpp: "SetWindowSize", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc buildSelectingVolume*(this: var SelectMgrSelectingVolumeManager;
                          thePoint: GpPnt2d) {.importcpp: "BuildSelectingVolume",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc buildSelectingVolume*(this: var SelectMgrSelectingVolumeManager;
                          theMinPt: GpPnt2d; theMaxPt: GpPnt2d) {.
    importcpp: "BuildSelectingVolume",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc buildSelectingVolume*(this: var SelectMgrSelectingVolumeManager;
                          thePoints: TColgpArray1OfPnt2d) {.
    importcpp: "BuildSelectingVolume",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; theInside: ptr StandardBoolean = nil): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; thePnt: GpPnt;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; thePnt: GpPnt): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager;
              theArrayOfPts: Handle[TColgpHArray1OfPnt];
              theSensType: StandardInteger;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager;
              theArrayOfPts: TColgpArray1OfPnt; theSensType: StandardInteger;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; thePnt1: GpPnt; thePnt2: GpPnt;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; thePnt1: GpPnt; thePnt2: GpPnt;
              thePnt3: GpPnt; theSensType: StandardInteger;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc distToGeometryCenter*(this: SelectMgrSelectingVolumeManager; theCOG: GpPnt): StandardReal {.
    noSideEffect, importcpp: "DistToGeometryCenter",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc detectedPoint*(this: SelectMgrSelectingVolumeManager; theDepth: StandardReal): GpPnt {.
    noSideEffect, importcpp: "DetectedPoint",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc allowOverlapDetection*(this: var SelectMgrSelectingVolumeManager;
                           theIsToAllow: StandardBoolean) {.
    importcpp: "AllowOverlapDetection",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc isOverlapAllowed*(this: SelectMgrSelectingVolumeManager): StandardBoolean {.
    noSideEffect, importcpp: "IsOverlapAllowed",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc viewClipping*(this: SelectMgrSelectingVolumeManager): Handle[
    Graphic3dSequenceOfHClipPlane] {.noSideEffect, importcpp: "ViewClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc objectClipping*(this: SelectMgrSelectingVolumeManager): Handle[
    Graphic3dSequenceOfHClipPlane] {.noSideEffect, importcpp: "ObjectClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setViewClipping*(this: var SelectMgrSelectingVolumeManager;
                     theViewPlanes: Handle[Graphic3dSequenceOfHClipPlane];
                     theObjPlanes: Handle[Graphic3dSequenceOfHClipPlane];
                     theWorldSelMgr: ptr SelectMgrSelectingVolumeManager) {.
    importcpp: "SetViewClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setViewClipping*(this: var SelectMgrSelectingVolumeManager;
                     theOther: SelectMgrSelectingVolumeManager) {.
    importcpp: "SetViewClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc viewClipRanges*(this: SelectMgrSelectingVolumeManager): SelectMgrViewClipRange {.
    noSideEffect, importcpp: "ViewClipRanges",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setViewClipRanges*(this: var SelectMgrSelectingVolumeManager;
                       theRange: SelectMgrViewClipRange) {.
    importcpp: "SetViewClipRanges", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getVertices*(this: SelectMgrSelectingVolumeManager): ptr GpPnt {.noSideEffect,
    importcpp: "GetVertices", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getNearPickedPnt*(this: SelectMgrSelectingVolumeManager): GpPnt {.noSideEffect,
    importcpp: "GetNearPickedPnt", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getFarPickedPnt*(this: SelectMgrSelectingVolumeManager): GpPnt {.noSideEffect,
    importcpp: "GetFarPickedPnt", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getMousePosition*(this: SelectMgrSelectingVolumeManager): GpPnt2d {.
    noSideEffect, importcpp: "GetMousePosition",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc activeVolume*(this: SelectMgrSelectingVolumeManager): Handle[
    SelectMgrBaseFrustum] {.noSideEffect, importcpp: "ActiveVolume",
                           header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getPlanes*(this: SelectMgrSelectingVolumeManager;
               thePlaneEquations: var NCollectionVector[SelectMgrVec4]) {.
    noSideEffect, importcpp: "GetPlanes",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc dumpJson*(this: SelectMgrSelectingVolumeManager;
              theOStream: var StandardOStream; theDepth: StandardInteger = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_SelectingVolumeManager.hxx".}

