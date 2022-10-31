import ../../tkmath/tcolgp/tcolgp_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkernel/ncollection/ncollection_types
import ../graphic3d/graphic3d_types
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

## ! This class is used to switch between active selecting volumes depending
## ! on selection type chosen by the user



proc newSelectMgrSelectingVolumeManager*(theToAllocateFrustums: bool = true): SelectMgrSelectingVolumeManager {.
    cdecl, constructor, importcpp: "SelectMgr_SelectingVolumeManager(@)",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc destroySelectMgrSelectingVolumeManager*(
    this: var SelectMgrSelectingVolumeManager) {.cdecl,
    importcpp: "#.~SelectMgr_SelectingVolumeManager()", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc scaleAndTransform*(this: SelectMgrSelectingVolumeManager;
                       theScaleFactor: cint; theTrsf: GTrsf;
                       theBuilder: Handle[SelectMgrFrustumBuilder] = cast[Handle[SelectMgrFrustumBuilder]](nil)): SelectMgrSelectingVolumeManager {.
    noSideEffect, cdecl, importcpp: "ScaleAndTransform", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getActiveSelectionType*(this: SelectMgrSelectingVolumeManager): cint {.
    noSideEffect, cdecl, importcpp: "GetActiveSelectionType", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setActiveSelectionType*(this: var SelectMgrSelectingVolumeManager;
                            theType: SelectionType) {.cdecl,
    importcpp: "SetActiveSelectionType", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc camera*(this: SelectMgrSelectingVolumeManager): Handle[Graphic3dCamera] {.
    noSideEffect, cdecl, importcpp: "Camera", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setCamera*(this: var SelectMgrSelectingVolumeManager;
               theCamera: Handle[Graphic3dCamera]) {.cdecl, importcpp: "SetCamera",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setCamera*(this: var SelectMgrSelectingVolumeManager;
               theProjection: Graphic3dMat4d; theWorldView: Graphic3dMat4d;
               theIsOrthographic: bool; theWVPState: Graphic3dWorldViewProjState = newGraphic3dWorldViewProjState()) {.
    cdecl, importcpp: "SetCamera", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc projectionMatrix*(this: SelectMgrSelectingVolumeManager): Graphic3dMat4d {.
    noSideEffect, cdecl, importcpp: "ProjectionMatrix", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc worldViewMatrix*(this: SelectMgrSelectingVolumeManager): Graphic3dMat4d {.
    noSideEffect, cdecl, importcpp: "WorldViewMatrix", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc windowSize*(this: SelectMgrSelectingVolumeManager; theWidth: var cint;
                theHeight: var cint) {.noSideEffect, cdecl, importcpp: "WindowSize",
                                    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc worldViewProjState*(this: SelectMgrSelectingVolumeManager): Graphic3dWorldViewProjState {.
    noSideEffect, cdecl, importcpp: "WorldViewProjState", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setViewport*(this: var SelectMgrSelectingVolumeManager; theX: cfloat;
                 theY: cfloat; theWidth: cfloat; theHeight: cfloat) {.cdecl,
    importcpp: "SetViewport", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setPixelTolerance*(this: var SelectMgrSelectingVolumeManager;
                       theTolerance: cint) {.cdecl, importcpp: "SetPixelTolerance",
    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setWindowSize*(this: var SelectMgrSelectingVolumeManager; theWidth: cint;
                   theHeight: cint) {.cdecl, importcpp: "SetWindowSize",
                                    header: "SelectMgr_SelectingVolumeManager.hxx".}
proc buildSelectingVolume*(this: var SelectMgrSelectingVolumeManager;
                          thePoint: Pnt2dObj) {.cdecl,
    importcpp: "BuildSelectingVolume", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc buildSelectingVolume*(this: var SelectMgrSelectingVolumeManager;
                          theMinPt: Pnt2dObj; theMaxPt: Pnt2dObj) {.cdecl,
    importcpp: "BuildSelectingVolume", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc buildSelectingVolume*(this: var SelectMgrSelectingVolumeManager;
                          thePoints: TColgpArray1OfPnt2d) {.cdecl,
    importcpp: "BuildSelectingVolume", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; thePickResult: var SelectBasicsPickResult): bool {.
    noSideEffect, cdecl, importcpp: "Overlaps", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; theBoxMin: SelectMgrVec3;
              theBoxMax: SelectMgrVec3; theInside: ptr bool = nil): bool {.noSideEffect,
    cdecl, importcpp: "Overlaps", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; thePnt: PntObj;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; thePnt: PntObj): bool {.
    noSideEffect, cdecl, importcpp: "Overlaps", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager;
              theArrayOfPts: Handle[TColgpHArray1OfPnt]; theSensType: cint;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager;
              theArrayOfPts: TColgpArray1OfPnt; theSensType: cint;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; thePnt1: PntObj; thePnt2: PntObj;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc overlaps*(this: SelectMgrSelectingVolumeManager; thePnt1: PntObj; thePnt2: PntObj;
              thePnt3: PntObj; theSensType: cint;
              thePickResult: var SelectBasicsPickResult): bool {.noSideEffect, cdecl,
    importcpp: "Overlaps", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc distToGeometryCenter*(this: SelectMgrSelectingVolumeManager; theCOG: PntObj): cfloat {.
    noSideEffect, cdecl, importcpp: "DistToGeometryCenter", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc detectedPoint*(this: SelectMgrSelectingVolumeManager; theDepth: cfloat): PntObj {.
    noSideEffect, cdecl, importcpp: "DetectedPoint", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc allowOverlapDetection*(this: var SelectMgrSelectingVolumeManager;
                           theIsToAllow: bool) {.cdecl,
    importcpp: "AllowOverlapDetection", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc isOverlapAllowed*(this: SelectMgrSelectingVolumeManager): bool {.noSideEffect,
    cdecl, importcpp: "IsOverlapAllowed", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc viewClipping*(this: SelectMgrSelectingVolumeManager): Handle[
    Graphic3dSequenceOfHClipPlane] {.noSideEffect, cdecl,
                                    importcpp: "ViewClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc objectClipping*(this: SelectMgrSelectingVolumeManager): Handle[
    Graphic3dSequenceOfHClipPlane] {.noSideEffect, cdecl,
                                    importcpp: "ObjectClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setViewClipping*(this: var SelectMgrSelectingVolumeManager;
                     theViewPlanes: Handle[Graphic3dSequenceOfHClipPlane];
                     theObjPlanes: Handle[Graphic3dSequenceOfHClipPlane];
                     theWorldSelMgr: ptr SelectMgrSelectingVolumeManager) {.cdecl,
    importcpp: "SetViewClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setViewClipping*(this: var SelectMgrSelectingVolumeManager;
                     theOther: SelectMgrSelectingVolumeManager) {.cdecl,
    importcpp: "SetViewClipping", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc viewClipRanges*(this: SelectMgrSelectingVolumeManager): SelectMgrViewClipRange {.
    noSideEffect, cdecl, importcpp: "ViewClipRanges", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc setViewClipRanges*(this: var SelectMgrSelectingVolumeManager;
                       theRange: SelectMgrViewClipRange) {.cdecl,
    importcpp: "SetViewClipRanges", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getVertices*(this: SelectMgrSelectingVolumeManager): ptr PntObj {.noSideEffect,
    cdecl, importcpp: "GetVertices", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getNearPickedPnt*(this: SelectMgrSelectingVolumeManager): PntObj {.noSideEffect,
    cdecl, importcpp: "GetNearPickedPnt", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getFarPickedPnt*(this: SelectMgrSelectingVolumeManager): PntObj {.noSideEffect,
    cdecl, importcpp: "GetFarPickedPnt", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getMousePosition*(this: SelectMgrSelectingVolumeManager): Pnt2dObj {.noSideEffect,
    cdecl, importcpp: "GetMousePosition", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc activeVolume*(this: SelectMgrSelectingVolumeManager): Handle[
    SelectMgrBaseFrustum] {.noSideEffect, cdecl, importcpp: "ActiveVolume",
                           header: "SelectMgr_SelectingVolumeManager.hxx".}
proc getPlanes*(this: SelectMgrSelectingVolumeManager;
               thePlaneEquations: var NCollectionVector[SelectMgrVec4]) {.
    noSideEffect, cdecl, importcpp: "GetPlanes", header: "SelectMgr_SelectingVolumeManager.hxx".}
proc dumpJson*(this: SelectMgrSelectingVolumeManager;
              theOStream: var StandardOStream; theDepth: cint = -1) {.noSideEffect,
    cdecl, importcpp: "DumpJson", header: "SelectMgr_SelectingVolumeManager.hxx".}


