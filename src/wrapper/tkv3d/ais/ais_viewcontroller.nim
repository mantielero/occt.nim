import ../../tkmath/gp/gp_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import ais_types
import ../../tkernel/ncollection/ncollection_types
import ../v3d/v3d_types
import ../graphic3d/graphic3d_types
import ../selectmgr/selectmgr_types




##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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



proc newAIS_ViewController*(): AIS_ViewController {.cdecl, constructor,
    importcpp: "AIS_ViewController(@)", header: "AIS_ViewController.hxx".}
proc destroyAIS_ViewController*(this: var AIS_ViewController) {.cdecl,
    importcpp: "#.~AIS_ViewController()", header: "AIS_ViewController.hxx".}
proc inputBuffer*(this: AIS_ViewController; theType: AIS_ViewInputBufferType): AIS_ViewInputBuffer {.
    noSideEffect, cdecl, importcpp: "InputBuffer", header: "AIS_ViewController.hxx".}
proc changeInputBuffer*(this: var AIS_ViewController;
                       theType: AIS_ViewInputBufferType): var AIS_ViewInputBuffer {.
    cdecl, importcpp: "ChangeInputBuffer", header: "AIS_ViewController.hxx".}
proc viewAnimation*(this: AIS_ViewController): Handle[AIS_AnimationCamera] {.
    noSideEffect, cdecl, importcpp: "ViewAnimation", header: "AIS_ViewController.hxx".}
proc setViewAnimation*(this: var AIS_ViewController;
                      theAnimation: Handle[AIS_AnimationCamera]) {.cdecl,
    importcpp: "SetViewAnimation", header: "AIS_ViewController.hxx".}
proc abortViewAnimation*(this: var AIS_ViewController) {.cdecl,
    importcpp: "AbortViewAnimation", header: "AIS_ViewController.hxx".}
proc rotationMode*(this: AIS_ViewController): AIS_RotationMode {.noSideEffect, cdecl,
    importcpp: "RotationMode", header: "AIS_ViewController.hxx".}
proc setRotationMode*(this: var AIS_ViewController; theMode: AIS_RotationMode) {.
    cdecl, importcpp: "SetRotationMode", header: "AIS_ViewController.hxx".}
proc navigationMode*(this: AIS_ViewController): AIS_NavigationMode {.noSideEffect,
    cdecl, importcpp: "NavigationMode", header: "AIS_ViewController.hxx".}
proc setNavigationMode*(this: var AIS_ViewController; theMode: AIS_NavigationMode) {.
    cdecl, importcpp: "SetNavigationMode", header: "AIS_ViewController.hxx".}
proc mouseAcceleration*(this: AIS_ViewController): cfloat {.noSideEffect, cdecl,
    importcpp: "MouseAcceleration", header: "AIS_ViewController.hxx".}
proc setMouseAcceleration*(this: var AIS_ViewController; theRatio: cfloat) {.cdecl,
    importcpp: "SetMouseAcceleration", header: "AIS_ViewController.hxx".}
proc orbitAcceleration*(this: AIS_ViewController): cfloat {.noSideEffect, cdecl,
    importcpp: "OrbitAcceleration", header: "AIS_ViewController.hxx".}
proc setOrbitAcceleration*(this: var AIS_ViewController; theRatio: cfloat) {.cdecl,
    importcpp: "SetOrbitAcceleration", header: "AIS_ViewController.hxx".}
proc toShowPanAnchorPoint*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToShowPanAnchorPoint", header: "AIS_ViewController.hxx".}
proc setShowPanAnchorPoint*(this: var AIS_ViewController; theToShow: bool) {.cdecl,
    importcpp: "SetShowPanAnchorPoint", header: "AIS_ViewController.hxx".}
proc toShowRotateCenter*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToShowRotateCenter", header: "AIS_ViewController.hxx".}
proc setShowRotateCenter*(this: var AIS_ViewController; theToShow: bool) {.cdecl,
    importcpp: "SetShowRotateCenter", header: "AIS_ViewController.hxx".}
proc toLockOrbitZUp*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToLockOrbitZUp", header: "AIS_ViewController.hxx".}
proc setLockOrbitZUp*(this: var AIS_ViewController; theToForceUp: bool) {.cdecl,
    importcpp: "SetLockOrbitZUp", header: "AIS_ViewController.hxx".}
proc toAllowTouchZRotation*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToAllowTouchZRotation", header: "AIS_ViewController.hxx".}
proc setAllowTouchZRotation*(this: var AIS_ViewController; theToEnable: bool) {.cdecl,
    importcpp: "SetAllowTouchZRotation", header: "AIS_ViewController.hxx".}
proc toAllowRotation*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToAllowRotation", header: "AIS_ViewController.hxx".}
proc setAllowRotation*(this: var AIS_ViewController; theToEnable: bool) {.cdecl,
    importcpp: "SetAllowRotation", header: "AIS_ViewController.hxx".}
proc toAllowPanning*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToAllowPanning", header: "AIS_ViewController.hxx".}
proc setAllowPanning*(this: var AIS_ViewController; theToEnable: bool) {.cdecl,
    importcpp: "SetAllowPanning", header: "AIS_ViewController.hxx".}
proc toAllowZooming*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToAllowZooming", header: "AIS_ViewController.hxx".}
proc setAllowZooming*(this: var AIS_ViewController; theToEnable: bool) {.cdecl,
    importcpp: "SetAllowZooming", header: "AIS_ViewController.hxx".}
proc toAllowZFocus*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToAllowZFocus", header: "AIS_ViewController.hxx".}
proc setAllowZFocus*(this: var AIS_ViewController; theToEnable: bool) {.cdecl,
    importcpp: "SetAllowZFocus", header: "AIS_ViewController.hxx".}
proc toAllowHighlight*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToAllowHighlight", header: "AIS_ViewController.hxx".}
proc setAllowHighlight*(this: var AIS_ViewController; theToEnable: bool) {.cdecl,
    importcpp: "SetAllowHighlight", header: "AIS_ViewController.hxx".}
proc toAllowDragging*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToAllowDragging", header: "AIS_ViewController.hxx".}
proc setAllowDragging*(this: var AIS_ViewController; theToEnable: bool) {.cdecl,
    importcpp: "SetAllowDragging", header: "AIS_ViewController.hxx".}
proc toStickToRayOnZoom*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToStickToRayOnZoom", header: "AIS_ViewController.hxx".}
proc setStickToRayOnZoom*(this: var AIS_ViewController; theToEnable: bool) {.cdecl,
    importcpp: "SetStickToRayOnZoom", header: "AIS_ViewController.hxx".}
proc toStickToRayOnRotation*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToStickToRayOnRotation", header: "AIS_ViewController.hxx".}
proc setStickToRayOnRotation*(this: var AIS_ViewController; theToEnable: bool) {.
    cdecl, importcpp: "SetStickToRayOnRotation", header: "AIS_ViewController.hxx".}
proc toInvertPitch*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToInvertPitch", header: "AIS_ViewController.hxx".}
proc setInvertPitch*(this: var AIS_ViewController; theToInvert: bool) {.cdecl,
    importcpp: "SetInvertPitch", header: "AIS_ViewController.hxx".}
proc walkSpeedAbsolute*(this: AIS_ViewController): cfloat {.noSideEffect, cdecl,
    importcpp: "WalkSpeedAbsolute", header: "AIS_ViewController.hxx".}
proc setWalkSpeedAbsolute*(this: var AIS_ViewController; theSpeed: cfloat) {.cdecl,
    importcpp: "SetWalkSpeedAbsolute", header: "AIS_ViewController.hxx".}
proc walkSpeedRelative*(this: AIS_ViewController): cfloat {.noSideEffect, cdecl,
    importcpp: "WalkSpeedRelative", header: "AIS_ViewController.hxx".}
proc setWalkSpeedRelative*(this: var AIS_ViewController; theFactor: cfloat) {.cdecl,
    importcpp: "SetWalkSpeedRelative", header: "AIS_ViewController.hxx".}
proc thrustSpeed*(this: AIS_ViewController): cfloat {.noSideEffect, cdecl,
    importcpp: "ThrustSpeed", header: "AIS_ViewController.hxx".}
proc setThrustSpeed*(this: var AIS_ViewController; theSpeed: cfloat) {.cdecl,
    importcpp: "SetThrustSpeed", header: "AIS_ViewController.hxx".}
proc hasPreviousMoveTo*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "HasPreviousMoveTo", header: "AIS_ViewController.hxx".}
proc previousMoveTo*(this: AIS_ViewController): Graphic3dVec2i {.noSideEffect, cdecl,
    importcpp: "PreviousMoveTo", header: "AIS_ViewController.hxx".}
proc resetPreviousMoveTo*(this: var AIS_ViewController) {.cdecl,
    importcpp: "ResetPreviousMoveTo", header: "AIS_ViewController.hxx".}
proc toDisplayXRAuxDevices*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToDisplayXRAuxDevices", header: "AIS_ViewController.hxx".}
proc setDisplayXRAuxDevices*(this: var AIS_ViewController; theToDisplay: bool) {.
    cdecl, importcpp: "SetDisplayXRAuxDevices", header: "AIS_ViewController.hxx".}
proc toDisplayXRHands*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "ToDisplayXRHands", header: "AIS_ViewController.hxx".}
proc setDisplayXRHands*(this: var AIS_ViewController; theToDisplay: bool) {.cdecl,
    importcpp: "SetDisplayXRHands", header: "AIS_ViewController.hxx".}
proc keys*(this: AIS_ViewController): AspectVKeySet {.noSideEffect, cdecl,
    importcpp: "Keys", header: "AIS_ViewController.hxx".}
proc changeKeys*(this: var AIS_ViewController): var AspectVKeySet {.cdecl,
    importcpp: "ChangeKeys", header: "AIS_ViewController.hxx".}
proc keyDown*(this: var AIS_ViewController; theKey: AspectVKey; theTime: cdouble;
             thePressure: cdouble = 1.0) {.cdecl, importcpp: "KeyDown", header: "AIS_ViewController.hxx".}
proc keyUp*(this: var AIS_ViewController; theKey: AspectVKey; theTime: cdouble) {.cdecl,
    importcpp: "KeyUp", header: "AIS_ViewController.hxx".}
proc keyFromAxis*(this: var AIS_ViewController; theNegative: AspectVKey;
                 thePositive: AspectVKey; theTime: cdouble; thePressure: cdouble) {.
    cdecl, importcpp: "KeyFromAxis", header: "AIS_ViewController.hxx".}
proc fetchNavigationKeys*(this: var AIS_ViewController; theCrouchRatio: cfloat;
                         theRunRatio: cfloat): AIS_WalkDelta {.cdecl,
    importcpp: "FetchNavigationKeys", header: "AIS_ViewController.hxx".}
proc mouseGestureMap*(this: AIS_ViewController): AIS_MouseGestureMap {.noSideEffect,
    cdecl, importcpp: "MouseGestureMap", header: "AIS_ViewController.hxx".}
proc changeMouseGestureMap*(this: var AIS_ViewController): var AIS_MouseGestureMap {.
    cdecl, importcpp: "ChangeMouseGestureMap", header: "AIS_ViewController.hxx".}
proc mouseDoubleClickInterval*(this: AIS_ViewController): cdouble {.noSideEffect,
    cdecl, importcpp: "MouseDoubleClickInterval", header: "AIS_ViewController.hxx".}
proc setMouseDoubleClickInterval*(this: var AIS_ViewController; theSeconds: cdouble) {.
    cdecl, importcpp: "SetMouseDoubleClickInterval", header: "AIS_ViewController.hxx".}
proc selectInViewer*(this: var AIS_ViewController; thePnt: Graphic3dVec2i;
                    theIsXOR: bool = false) {.cdecl, importcpp: "SelectInViewer",
    header: "AIS_ViewController.hxx".}
proc selectInViewer*(this: var AIS_ViewController;
                    thePnts: NCollectionSequence[Graphic3dVec2i];
                    theIsXOR: bool = false) {.cdecl, importcpp: "SelectInViewer",
    header: "AIS_ViewController.hxx".}
proc updateRubberBand*(this: var AIS_ViewController; thePntFrom: Graphic3dVec2i;
                      thePntTo: Graphic3dVec2i; theIsXOR: bool = false) {.cdecl,
    importcpp: "UpdateRubberBand", header: "AIS_ViewController.hxx".}
proc updatePolySelection*(this: var AIS_ViewController; thePnt: Graphic3dVec2i;
                         theToAppend: bool) {.cdecl,
    importcpp: "UpdatePolySelection", header: "AIS_ViewController.hxx".}
proc updateZoom*(this: var AIS_ViewController; theDelta: AspectScrollDelta): bool {.
    cdecl, importcpp: "UpdateZoom", header: "AIS_ViewController.hxx".}
proc updateZRotation*(this: var AIS_ViewController; theAngle: cdouble): bool {.cdecl,
    importcpp: "UpdateZRotation", header: "AIS_ViewController.hxx".}
proc updateMouseScroll*(this: var AIS_ViewController; theDelta: AspectScrollDelta): bool {.
    cdecl, importcpp: "UpdateMouseScroll", header: "AIS_ViewController.hxx".}
proc updateMouseButtons*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                        theButtons: AspectVKeyMouse;
                        theModifiers: AspectVKeyFlags; theIsEmulated: bool): bool {.
    cdecl, importcpp: "UpdateMouseButtons", header: "AIS_ViewController.hxx".}
proc updateMousePosition*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                         theButtons: AspectVKeyMouse;
                         theModifiers: AspectVKeyFlags; theIsEmulated: bool): bool {.
    cdecl, importcpp: "UpdateMousePosition", header: "AIS_ViewController.hxx".}
proc pressMouseButton*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                      theButton: AspectVKeyMouse; theModifiers: AspectVKeyFlags;
                      theIsEmulated: bool): bool {.cdecl,
    importcpp: "PressMouseButton", header: "AIS_ViewController.hxx".}
proc releaseMouseButton*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                        theButton: AspectVKeyMouse; theModifiers: AspectVKeyFlags;
                        theIsEmulated: bool): bool {.cdecl,
    importcpp: "ReleaseMouseButton", header: "AIS_ViewController.hxx".}
proc updateMouseClick*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                      theButton: AspectVKeyMouse; theModifiers: AspectVKeyFlags;
                      theIsDoubleClick: bool): bool {.cdecl,
    importcpp: "UpdateMouseClick", header: "AIS_ViewController.hxx".}
proc pressedMouseButtons*(this: AIS_ViewController): AspectVKeyMouse {.noSideEffect,
    cdecl, importcpp: "PressedMouseButtons", header: "AIS_ViewController.hxx".}
proc lastMouseFlags*(this: AIS_ViewController): AspectVKeyFlags {.noSideEffect,
    cdecl, importcpp: "LastMouseFlags", header: "AIS_ViewController.hxx".}
proc lastMousePosition*(this: AIS_ViewController): Graphic3dVec2i {.noSideEffect,
    cdecl, importcpp: "LastMousePosition", header: "AIS_ViewController.hxx".}
proc touchToleranceScale*(this: AIS_ViewController): cfloat {.noSideEffect, cdecl,
    importcpp: "TouchToleranceScale", header: "AIS_ViewController.hxx".}
proc setTouchToleranceScale*(this: var AIS_ViewController; theTolerance: cfloat) {.
    cdecl, importcpp: "SetTouchToleranceScale", header: "AIS_ViewController.hxx".}
proc hasTouchPoints*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "HasTouchPoints", header: "AIS_ViewController.hxx".}
proc addTouchPoint*(this: var AIS_ViewController; theId: csize_t;
                   thePnt: Graphic3dVec2d; theClearBefore: bool = false) {.cdecl,
    importcpp: "AddTouchPoint", header: "AIS_ViewController.hxx".}
proc removeTouchPoint*(this: var AIS_ViewController; theId: csize_t;
                      theClearSelectPnts: bool = false): bool {.cdecl,
    importcpp: "RemoveTouchPoint", header: "AIS_ViewController.hxx".}
proc updateTouchPoint*(this: var AIS_ViewController; theId: csize_t;
                      thePnt: Graphic3dVec2d) {.cdecl,
    importcpp: "UpdateTouchPoint", header: "AIS_ViewController.hxx".}
proc get3dMouseTranslationScale*(this: AIS_ViewController): cfloat {.noSideEffect,
    cdecl, importcpp: "Get3dMouseTranslationScale", header: "AIS_ViewController.hxx".}
proc set3dMouseTranslationScale*(this: var AIS_ViewController; theScale: cfloat) {.
    cdecl, importcpp: "Set3dMouseTranslationScale", header: "AIS_ViewController.hxx".}
proc get3dMouseRotationScale*(this: AIS_ViewController): cfloat {.noSideEffect,
    cdecl, importcpp: "Get3dMouseRotationScale", header: "AIS_ViewController.hxx".}
proc set3dMouseRotationScale*(this: var AIS_ViewController; theScale: cfloat) {.cdecl,
    importcpp: "Set3dMouseRotationScale", header: "AIS_ViewController.hxx".}
proc to3dMousePreciseInput*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "To3dMousePreciseInput", header: "AIS_ViewController.hxx".}
proc set3dMousePreciseInput*(this: var AIS_ViewController; theIsQuadric: bool) {.
    cdecl, importcpp: "Set3dMousePreciseInput", header: "AIS_ViewController.hxx".}
proc get3dMouseIsNoRotate*(this: AIS_ViewController): NCollectionVec3[bool] {.
    noSideEffect, cdecl, importcpp: "Get3dMouseIsNoRotate", header: "AIS_ViewController.hxx".}
proc change3dMouseIsNoRotate*(this: var AIS_ViewController): var NCollectionVec3[bool] {.
    cdecl, importcpp: "Change3dMouseIsNoRotate", header: "AIS_ViewController.hxx".}
proc get3dMouseToReverse*(this: AIS_ViewController): NCollectionVec3[bool] {.
    noSideEffect, cdecl, importcpp: "Get3dMouseToReverse", header: "AIS_ViewController.hxx".}
proc change3dMouseToReverse*(this: var AIS_ViewController): var NCollectionVec3[bool] {.
    cdecl, importcpp: "Change3dMouseToReverse", header: "AIS_ViewController.hxx".}
proc update3dMouse*(this: var AIS_ViewController; theEvent: WNT_HIDSpaceMouse): bool {.
    cdecl, importcpp: "Update3dMouse", header: "AIS_ViewController.hxx".}
proc update3dMouseTranslation*(this: var AIS_ViewController;
                              theEvent: WNT_HIDSpaceMouse): bool {.cdecl,
    importcpp: "update3dMouseTranslation", header: "AIS_ViewController.hxx".}
proc update3dMouseRotation*(this: var AIS_ViewController;
                           theEvent: WNT_HIDSpaceMouse): bool {.cdecl,
    importcpp: "update3dMouseRotation", header: "AIS_ViewController.hxx".}
proc update3dMouseKeys*(this: var AIS_ViewController; theEvent: WNT_HIDSpaceMouse): bool {.
    cdecl, importcpp: "update3dMouseKeys", header: "AIS_ViewController.hxx".}
proc eventTime*(this: AIS_ViewController): cdouble {.noSideEffect, cdecl,
    importcpp: "EventTime", header: "AIS_ViewController.hxx".}
proc resetViewInput*(this: var AIS_ViewController) {.cdecl,
    importcpp: "ResetViewInput", header: "AIS_ViewController.hxx".}
proc updateViewOrientation*(this: var AIS_ViewController;
                           theOrientation: V3dTypeOfOrientation; theToFitAll: bool) {.
    cdecl, importcpp: "UpdateViewOrientation", header: "AIS_ViewController.hxx".}
proc flushViewEvents*(this: var AIS_ViewController;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView]; theToHandle: bool = false) {.cdecl,
    importcpp: "FlushViewEvents", header: "AIS_ViewController.hxx".}
proc handleViewEvents*(this: var AIS_ViewController;
                      theCtx: Handle[AIS_InteractiveContext];
                      theView: Handle[V3dView]) {.cdecl,
    importcpp: "HandleViewEvents", header: "AIS_ViewController.hxx".}
proc onSelectionChanged*(this: var AIS_ViewController;
                        theCtx: Handle[AIS_InteractiveContext];
                        theView: Handle[V3dView]) {.cdecl,
    importcpp: "OnSelectionChanged", header: "AIS_ViewController.hxx".}
proc onObjectDragged*(this: var AIS_ViewController;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView]; theAction: AIS_DragAction) {.cdecl,
    importcpp: "OnObjectDragged", header: "AIS_ViewController.hxx".}
proc pickPoint*(this: var AIS_ViewController; thePnt: var PntObj;
               theCtx: Handle[AIS_InteractiveContext]; theView: Handle[V3dView];
               theCursor: Graphic3dVec2i; theToStickToPickRay: bool): bool {.cdecl,
    importcpp: "PickPoint", header: "AIS_ViewController.hxx".}
proc gravityPoint*(this: var AIS_ViewController;
                  theCtx: Handle[AIS_InteractiveContext]; theView: Handle[V3dView]): PntObj {.
    cdecl, importcpp: "GravityPoint", header: "AIS_ViewController.hxx".}
proc fitAllAuto*(this: var AIS_ViewController;
                theCtx: Handle[AIS_InteractiveContext]; theView: Handle[V3dView]) {.
    cdecl, importcpp: "FitAllAuto", header: "AIS_ViewController.hxx".}
proc handleViewOrientationKeys*(this: var AIS_ViewController;
                               theCtx: Handle[AIS_InteractiveContext];
                               theView: Handle[V3dView]) {.cdecl,
    importcpp: "handleViewOrientationKeys", header: "AIS_ViewController.hxx".}
proc handleNavigationKeys*(this: var AIS_ViewController;
                          theCtx: Handle[AIS_InteractiveContext];
                          theView: Handle[V3dView]): AIS_WalkDelta {.cdecl,
    importcpp: "handleNavigationKeys", header: "AIS_ViewController.hxx".}
proc handleCameraActions*(this: var AIS_ViewController;
                         theCtx: Handle[AIS_InteractiveContext];
                         theView: Handle[V3dView]; theWalk: AIS_WalkDelta) {.cdecl,
    importcpp: "handleCameraActions", header: "AIS_ViewController.hxx".}
proc handleMoveTo*(this: var AIS_ViewController;
                  theCtx: Handle[AIS_InteractiveContext]; theView: Handle[V3dView]) {.
    cdecl, importcpp: "handleMoveTo", header: "AIS_ViewController.hxx".}
proc toAskNextFrame*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "toAskNextFrame", header: "AIS_ViewController.hxx".}
proc setAskNextFrame*(this: var AIS_ViewController; theToDraw: bool = true) {.cdecl,
    importcpp: "setAskNextFrame", header: "AIS_ViewController.hxx".}
proc hasPanningAnchorPoint*(this: AIS_ViewController): bool {.noSideEffect, cdecl,
    importcpp: "hasPanningAnchorPoint", header: "AIS_ViewController.hxx".}
proc panningAnchorPoint*(this: AIS_ViewController): PntObj {.noSideEffect, cdecl,
    importcpp: "panningAnchorPoint", header: "AIS_ViewController.hxx".}
proc setPanningAnchorPoint*(this: var AIS_ViewController; thePnt: PntObj) {.cdecl,
    importcpp: "setPanningAnchorPoint", header: "AIS_ViewController.hxx".}
proc handlePanning*(this: var AIS_ViewController; theView: Handle[V3dView]) {.cdecl,
    importcpp: "handlePanning", header: "AIS_ViewController.hxx".}
proc handleZRotate*(this: var AIS_ViewController; theView: Handle[V3dView]) {.cdecl,
    importcpp: "handleZRotate", header: "AIS_ViewController.hxx".}
proc minZoomDistance*(this: AIS_ViewController): cdouble {.noSideEffect, cdecl,
    importcpp: "MinZoomDistance", header: "AIS_ViewController.hxx".}
proc setMinZoomDistance*(this: var AIS_ViewController; theDist: cdouble) {.cdecl,
    importcpp: "SetMinZoomDistance", header: "AIS_ViewController.hxx".}
proc handleZoom*(this: var AIS_ViewController; theView: Handle[V3dView];
                theParams: AspectScrollDelta; thePnt: ptr PntObj) {.cdecl,
    importcpp: "handleZoom", header: "AIS_ViewController.hxx".}
proc handleZFocusScroll*(this: var AIS_ViewController; theView: Handle[V3dView];
                        theParams: AspectScrollDelta) {.cdecl,
    importcpp: "handleZFocusScroll", header: "AIS_ViewController.hxx".}
proc handleOrbitRotation*(this: var AIS_ViewController; theView: Handle[V3dView];
                         thePnt: PntObj; theToLockZUp: bool) {.cdecl,
    importcpp: "handleOrbitRotation", header: "AIS_ViewController.hxx".}
proc handleViewRotation*(this: var AIS_ViewController; theView: Handle[V3dView];
                        theYawExtra: cdouble; thePitchExtra: cdouble;
                        theRoll: cdouble; theToRestartOnIncrement: bool) {.cdecl,
    importcpp: "handleViewRotation", header: "AIS_ViewController.hxx".}
proc handleViewRedraw*(this: var AIS_ViewController;
                      theCtx: Handle[AIS_InteractiveContext];
                      theView: Handle[V3dView]) {.cdecl,
    importcpp: "handleViewRedraw", header: "AIS_ViewController.hxx".}
proc handleXRInput*(this: var AIS_ViewController;
                   theCtx: Handle[AIS_InteractiveContext];
                   theView: Handle[V3dView]; theWalk: AIS_WalkDelta) {.cdecl,
    importcpp: "handleXRInput", header: "AIS_ViewController.hxx".}
proc handleXRTurnPad*(this: var AIS_ViewController;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView]) {.cdecl,
    importcpp: "handleXRTurnPad", header: "AIS_ViewController.hxx".}
proc handleXRTeleport*(this: var AIS_ViewController;
                      theCtx: Handle[AIS_InteractiveContext];
                      theView: Handle[V3dView]) {.cdecl,
    importcpp: "handleXRTeleport", header: "AIS_ViewController.hxx".}
proc handleXRPicking*(this: var AIS_ViewController;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView]) {.cdecl,
    importcpp: "handleXRPicking", header: "AIS_ViewController.hxx".}
proc handleXRHighlight*(this: var AIS_ViewController;
                       theCtx: Handle[AIS_InteractiveContext];
                       theView: Handle[V3dView]) {.cdecl,
    importcpp: "handleXRHighlight", header: "AIS_ViewController.hxx".}
proc handleXRPresentations*(this: var AIS_ViewController;
                           theCtx: Handle[AIS_InteractiveContext];
                           theView: Handle[V3dView]) {.cdecl,
    importcpp: "handleXRPresentations", header: "AIS_ViewController.hxx".}
proc handleXRMoveTo*(this: var AIS_ViewController;
                    theCtx: Handle[AIS_InteractiveContext];
                    theView: Handle[V3dView]; thePose: TrsfObj; theToHighlight: bool): cint {.
    cdecl, importcpp: "handleXRMoveTo", header: "AIS_ViewController.hxx".}


