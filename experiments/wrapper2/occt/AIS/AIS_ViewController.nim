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

import
  ../Aspect/Aspect_VKeySet, ../Aspect/Aspect_TouchMap,
  ../Aspect/Aspect_XRHapticActionData, ../Aspect/Aspect_XRTrackedDeviceRole,
  AIS_DragAction, AIS_MouseGesture, AIS_NavigationMode, AIS_ViewInputBuffer,
  AIS_RotationMode, AIS_WalkDelta, ../gp/gp_Pnt, ../Graphic3d/Graphic3d_Vec3,
  ../NCollection/NCollection_Array1, ../OSD/OSD_Timer, ../Precision/Precision,
  ../Quantity/Quantity_ColorRGBA, ../Standard/Standard_Mutex

discard "forward decl of AIS_AnimationCamera"
discard "forward decl of AIS_InteractiveObject"
discard "forward decl of AIS_InteractiveContext"
discard "forward decl of AIS_Point"
discard "forward decl of AIS_RubberBand"
discard "forward decl of AIS_XRTrackedDevice"
discard "forward decl of Graphic3d_Camera"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of V3d_View"
discard "forward decl of WNT_HIDSpaceMouse"
type
  AIS_ViewController* {.importcpp: "AIS_ViewController",
                       header: "AIS_ViewController.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor.
                                                                      ## ! @name global parameters
                                                                      ## ! Return camera rotation mode,
                                                                      ## AIS_RotationMode_BndBoxActive by default.
                                                                      ## ! @name keyboard input
                                                                      ## ! Return keyboard state.
                                                                      ## ! @name mouse input
                                                                      ## ! Return map defining mouse gestures.
                                                                      ## ! @name
                                                                      ## multi-touch input
                                                                      ## ! Return scale factor for adjusting tolerances for starting
                                                                      ## multi-touch gestures; 1.0 by default
                                                                      ## ! This scale factor is expected to be computed from touch screen
                                                                      ## resolution.
                                                                      ## ! @name 3d mouse input
                                                                      ## ! Return
                                                                      ## acceleration ratio for
                                                                      ## translation event; 2.0 by default.
                                                                      ## ! Return event time (e.g. current time).
                                                                      ## ! Callback called by
                                                                      ## handleMoveTo() on Selection in 3D Viewer.
                                                                      ## ! This method is expected to be called from rendering thread.
                                                                      ## ! Handle hot-keys defining new camera
                                                                      ## orientation
                                                                      ## (Aspect_VKey_ViewTop and similar keys).
                                                                      ## ! Default
                                                                      ## implementation starts an animated
                                                                      ## transaction from the current to the target camera
                                                                      ## orientation, when specific action key was pressed.
                                                                      ## ! This method is expected to be called from rendering thread.
                                                                      ## ! Perform XR input.
                                                                      ## ! This method is expected to be called from rendering thread.
                                                                      ## ! Flush buffers.
                                                                      ## ! @name XR input variables
                                                                      ## ! @name keyboard input variables
                                                                      ## ! @name mouse input variables
                                                                      ## ! @name
                                                                      ## multi-touch input variables
                                                                      ## ! @name 3d mouse input variables
                                                                      ## ! @name
                                                                      ## rotation/panning transient state variables
    ## !< buffer for UI thread
    ## !< buffer for rendering thread
    ## !< timer for timestamping events
    ## !< last fetched events timer value for computing delta/progress
    ## !< flag indicating that another frame should be drawn right after this one
    ## !< minimal camera distance for zoom operation
    ## !< rotation mode
    ## !< navigation mode (orbit rotation / first person)
    ## !< mouse input acceleration ratio in First Person mode
    ## !< Orbit rotation acceleration ratio
    ## !< option displaying panning  anchor point
    ## !< option displaying rotation center point
    ## !< force camera up orientation within AIS_NavigationMode_Orbit rotation mode
    ## !< flag inverting pitch direction while processing Aspect_VKey_NavLookUp/Aspect_VKey_NavLookDown
    ## !< enable z-rotation two-touches gesture; FALSE by default
    ## !< enable rotation; TRUE by default
    ## !< enable panning; TRUE by default
    ## !< enable zooming; TRUE by default
    ## !< enable ZFocus change; TRUE by default
    ## !< enable dynamic highlight on mouse move; TRUE by default
    ## !< enable dragging object; TRUE by default
    ## !< project picked point to ray while zooming at point, TRUE by default
    ## !< project picked point to ray while rotating around point; TRUE by default
    ## !< normal walking speed, in m/s; 1.5 by default
    ## !< walking speed relative to scene bounding box; 0.1 by default
    ## !< active thrust value
    ## !< flag indicating active thrust
    ## !< view animation
    ## !< Rubber-band presentation
    ## !< detected owner of currently dragged object
    ## !< currently dragged object
    ## !< previous position of MoveTo event in 3D viewer
    ## !< flag for restoring Computed mode after rotation
    ## !< array of XR tracked devices presentations
    ## !< temporary camera
    ## !< color of teleport laser
    ## !< color of picking  laser
    ## !< active hand for teleport
    ## !< active hand for picking objects
    ## !< vibration on picking teleport destination
    ## !< vibration on dynamic highlighting
    ## !< vibration on selection
    ## !< last picking depth for left  hand
    ## !< last picking depth for right hand
    ## !< discrete turn angle for XR trackpad
    ## !< flag to display auxiliary tracked XR devices
    ## !< flag to display XR hands
    ## !< keyboard state
    ## !< mouse click threshold in pixels; 3 by default
    ## !< double click interval in seconds; 0.4 by default
    ## !< distance ratio for mapping mouse scroll event to zoom; 15.0 by default
    ## !< map defining mouse gestures
    ## !< initiated mouse gesture (by pressing mouse button)
    ## !< flag indicating view idle rotation state
    ## !< last mouse position
    ## !< mouse position where active gesture was been initiated
    ## !< gesture progress
    ## !< timer for handling double-click event
    ## !< counter for handling double-click event
    ## !< active mouse buttons
    ## !< active key modifiers passed with last mouse event
    ## !< index of mouse button pressed alone (>0)
    ## !< queue stop dragging even with at next mouse unclick
    ## !< tolerance scale factor; 1.0 by default
    ## !< threshold for starting one-touch rotation     gesture in pixels;  6 by default
    ## !< threshold for starting two-touch Z-rotation   gesture in radians; 2 degrees by default
    ## !< threshold for starting two-touch panning      gesture in pixels;  4 by default
    ## !< threshold for starting two-touch zoom (pitch) gesture in pixels;  6 by default
    ## !< distance ratio for mapping two-touch zoom (pitch) gesture from pixels to zoom; 0.13 by default
    ## !< map of active touches
    ## !< touch coordinates at the moment of starting panning  gesture
    ## !< touch coordinates at the moment of starting rotating gesture
    ## !< number of touches within previous gesture flush to track gesture changes
    ## !< flag indicating that new anchor  point should be picked for starting panning    gesture
    ## !< flag indicating that new gravity point should be picked for starting rotation   gesture
    ## !< flag indicating that new gravity point should be picked for starting Z-rotation gesture
    ## !< cached button state
    ## !< ignore  3d mouse rotation axes
    ## !< reverse 3d mouse rotation axes
    ## !< acceleration ratio for translation event
    ## !< acceleration ratio for rotation event
    ## !< quadric acceleration
    ## !< anchor point presentation (Graphic3d_ZLayerId_Top)
    ## !< anchor point presentation (Graphic3d_ZLayerId_Topmost)
    ## !< active panning anchor point
    ## !< active rotation center of gravity
    ## !< camera Up    direction at the beginning of rotation
    ## !< camera View  direction at the beginning of rotation
    ## !< camera Eye    position at the beginning of rotation
    ## !< camera Center position at the beginning of rotation
    ## !< vector from rotation gravity point to camera Center at the beginning of rotation
    ## !< vector from rotation gravity point to camera Eye    at the beginning of rotation
    ## !< camera yaw pitch roll at the beginning of rotation


proc constructAIS_ViewController*(): AIS_ViewController {.constructor,
    importcpp: "AIS_ViewController(@)", header: "AIS_ViewController.hxx".}
proc destroyAIS_ViewController*(this: var AIS_ViewController) {.
    importcpp: "#.~AIS_ViewController()", header: "AIS_ViewController.hxx".}
proc InputBuffer*(this: AIS_ViewController; theType: AIS_ViewInputBufferType): AIS_ViewInputBuffer {.
    noSideEffect, importcpp: "InputBuffer", header: "AIS_ViewController.hxx".}
proc ChangeInputBuffer*(this: var AIS_ViewController;
                       theType: AIS_ViewInputBufferType): var AIS_ViewInputBuffer {.
    importcpp: "ChangeInputBuffer", header: "AIS_ViewController.hxx".}
proc ViewAnimation*(this: AIS_ViewController): handle[AIS_AnimationCamera] {.
    noSideEffect, importcpp: "ViewAnimation", header: "AIS_ViewController.hxx".}
proc SetViewAnimation*(this: var AIS_ViewController;
                      theAnimation: handle[AIS_AnimationCamera]) {.
    importcpp: "SetViewAnimation", header: "AIS_ViewController.hxx".}
proc AbortViewAnimation*(this: var AIS_ViewController) {.
    importcpp: "AbortViewAnimation", header: "AIS_ViewController.hxx".}
proc RotationMode*(this: AIS_ViewController): AIS_RotationMode {.noSideEffect,
    importcpp: "RotationMode", header: "AIS_ViewController.hxx".}
proc SetRotationMode*(this: var AIS_ViewController; theMode: AIS_RotationMode) {.
    importcpp: "SetRotationMode", header: "AIS_ViewController.hxx".}
proc NavigationMode*(this: AIS_ViewController): AIS_NavigationMode {.noSideEffect,
    importcpp: "NavigationMode", header: "AIS_ViewController.hxx".}
proc SetNavigationMode*(this: var AIS_ViewController; theMode: AIS_NavigationMode) {.
    importcpp: "SetNavigationMode", header: "AIS_ViewController.hxx".}
proc MouseAcceleration*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "MouseAcceleration", header: "AIS_ViewController.hxx".}
proc SetMouseAcceleration*(this: var AIS_ViewController; theRatio: cfloat) {.
    importcpp: "SetMouseAcceleration", header: "AIS_ViewController.hxx".}
proc OrbitAcceleration*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "OrbitAcceleration", header: "AIS_ViewController.hxx".}
proc SetOrbitAcceleration*(this: var AIS_ViewController; theRatio: cfloat) {.
    importcpp: "SetOrbitAcceleration", header: "AIS_ViewController.hxx".}
proc ToShowPanAnchorPoint*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToShowPanAnchorPoint", header: "AIS_ViewController.hxx".}
proc SetShowPanAnchorPoint*(this: var AIS_ViewController; theToShow: bool) {.
    importcpp: "SetShowPanAnchorPoint", header: "AIS_ViewController.hxx".}
proc ToShowRotateCenter*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToShowRotateCenter", header: "AIS_ViewController.hxx".}
proc SetShowRotateCenter*(this: var AIS_ViewController; theToShow: bool) {.
    importcpp: "SetShowRotateCenter", header: "AIS_ViewController.hxx".}
proc ToLockOrbitZUp*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToLockOrbitZUp", header: "AIS_ViewController.hxx".}
proc SetLockOrbitZUp*(this: var AIS_ViewController; theToForceUp: bool) {.
    importcpp: "SetLockOrbitZUp", header: "AIS_ViewController.hxx".}
proc ToAllowTouchZRotation*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowTouchZRotation", header: "AIS_ViewController.hxx".}
proc SetAllowTouchZRotation*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowTouchZRotation", header: "AIS_ViewController.hxx".}
proc ToAllowRotation*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowRotation", header: "AIS_ViewController.hxx".}
proc SetAllowRotation*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowRotation", header: "AIS_ViewController.hxx".}
proc ToAllowPanning*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowPanning", header: "AIS_ViewController.hxx".}
proc SetAllowPanning*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowPanning", header: "AIS_ViewController.hxx".}
proc ToAllowZooming*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowZooming", header: "AIS_ViewController.hxx".}
proc SetAllowZooming*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowZooming", header: "AIS_ViewController.hxx".}
proc ToAllowZFocus*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowZFocus", header: "AIS_ViewController.hxx".}
proc SetAllowZFocus*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowZFocus", header: "AIS_ViewController.hxx".}
proc ToAllowHighlight*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowHighlight", header: "AIS_ViewController.hxx".}
proc SetAllowHighlight*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowHighlight", header: "AIS_ViewController.hxx".}
proc ToAllowDragging*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowDragging", header: "AIS_ViewController.hxx".}
proc SetAllowDragging*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowDragging", header: "AIS_ViewController.hxx".}
proc ToStickToRayOnZoom*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToStickToRayOnZoom", header: "AIS_ViewController.hxx".}
proc SetStickToRayOnZoom*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetStickToRayOnZoom", header: "AIS_ViewController.hxx".}
proc ToStickToRayOnRotation*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToStickToRayOnRotation", header: "AIS_ViewController.hxx".}
proc SetStickToRayOnRotation*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetStickToRayOnRotation", header: "AIS_ViewController.hxx".}
proc ToInvertPitch*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToInvertPitch", header: "AIS_ViewController.hxx".}
proc SetInvertPitch*(this: var AIS_ViewController; theToInvert: bool) {.
    importcpp: "SetInvertPitch", header: "AIS_ViewController.hxx".}
proc WalkSpeedAbsolute*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "WalkSpeedAbsolute", header: "AIS_ViewController.hxx".}
proc SetWalkSpeedAbsolute*(this: var AIS_ViewController; theSpeed: cfloat) {.
    importcpp: "SetWalkSpeedAbsolute", header: "AIS_ViewController.hxx".}
proc WalkSpeedRelative*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "WalkSpeedRelative", header: "AIS_ViewController.hxx".}
proc SetWalkSpeedRelative*(this: var AIS_ViewController; theFactor: cfloat) {.
    importcpp: "SetWalkSpeedRelative", header: "AIS_ViewController.hxx".}
proc ThrustSpeed*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "ThrustSpeed", header: "AIS_ViewController.hxx".}
proc SetThrustSpeed*(this: var AIS_ViewController; theSpeed: cfloat) {.
    importcpp: "SetThrustSpeed", header: "AIS_ViewController.hxx".}
proc HasPreviousMoveTo*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "HasPreviousMoveTo", header: "AIS_ViewController.hxx".}
proc PreviousMoveTo*(this: AIS_ViewController): Graphic3d_Vec2i {.noSideEffect,
    importcpp: "PreviousMoveTo", header: "AIS_ViewController.hxx".}
proc ResetPreviousMoveTo*(this: var AIS_ViewController) {.
    importcpp: "ResetPreviousMoveTo", header: "AIS_ViewController.hxx".}
proc ToDisplayXRAuxDevices*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToDisplayXRAuxDevices", header: "AIS_ViewController.hxx".}
proc SetDisplayXRAuxDevices*(this: var AIS_ViewController; theToDisplay: bool) {.
    importcpp: "SetDisplayXRAuxDevices", header: "AIS_ViewController.hxx".}
proc ToDisplayXRHands*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToDisplayXRHands", header: "AIS_ViewController.hxx".}
proc SetDisplayXRHands*(this: var AIS_ViewController; theToDisplay: bool) {.
    importcpp: "SetDisplayXRHands", header: "AIS_ViewController.hxx".}
proc Keys*(this: AIS_ViewController): Aspect_VKeySet {.noSideEffect,
    importcpp: "Keys", header: "AIS_ViewController.hxx".}
proc ChangeKeys*(this: var AIS_ViewController): var Aspect_VKeySet {.
    importcpp: "ChangeKeys", header: "AIS_ViewController.hxx".}
proc KeyDown*(this: var AIS_ViewController; theKey: Aspect_VKey; theTime: cdouble;
             thePressure: cdouble = 1.0) {.importcpp: "KeyDown",
                                       header: "AIS_ViewController.hxx".}
proc KeyUp*(this: var AIS_ViewController; theKey: Aspect_VKey; theTime: cdouble) {.
    importcpp: "KeyUp", header: "AIS_ViewController.hxx".}
proc KeyFromAxis*(this: var AIS_ViewController; theNegative: Aspect_VKey;
                 thePositive: Aspect_VKey; theTime: cdouble; thePressure: cdouble) {.
    importcpp: "KeyFromAxis", header: "AIS_ViewController.hxx".}
proc FetchNavigationKeys*(this: var AIS_ViewController;
                         theCrouchRatio: Standard_Real; theRunRatio: Standard_Real): AIS_WalkDelta {.
    importcpp: "FetchNavigationKeys", header: "AIS_ViewController.hxx".}
proc MouseGestureMap*(this: AIS_ViewController): AIS_MouseGestureMap {.noSideEffect,
    importcpp: "MouseGestureMap", header: "AIS_ViewController.hxx".}
proc ChangeMouseGestureMap*(this: var AIS_ViewController): var AIS_MouseGestureMap {.
    importcpp: "ChangeMouseGestureMap", header: "AIS_ViewController.hxx".}
proc MouseDoubleClickInterval*(this: AIS_ViewController): cdouble {.noSideEffect,
    importcpp: "MouseDoubleClickInterval", header: "AIS_ViewController.hxx".}
proc SetMouseDoubleClickInterval*(this: var AIS_ViewController; theSeconds: cdouble) {.
    importcpp: "SetMouseDoubleClickInterval", header: "AIS_ViewController.hxx".}
proc SelectInViewer*(this: var AIS_ViewController; thePnt: Graphic3d_Vec2i;
                    theIsXOR: bool = false) {.importcpp: "SelectInViewer",
    header: "AIS_ViewController.hxx".}
proc SelectInViewer*(this: var AIS_ViewController;
                    thePnts: NCollection_Sequence[Graphic3d_Vec2i];
                    theIsXOR: bool = false) {.importcpp: "SelectInViewer",
    header: "AIS_ViewController.hxx".}
proc UpdateRubberBand*(this: var AIS_ViewController; thePntFrom: Graphic3d_Vec2i;
                      thePntTo: Graphic3d_Vec2i; theIsXOR: bool = false) {.
    importcpp: "UpdateRubberBand", header: "AIS_ViewController.hxx".}
proc UpdatePolySelection*(this: var AIS_ViewController; thePnt: Graphic3d_Vec2i;
                         theToAppend: bool) {.importcpp: "UpdatePolySelection",
    header: "AIS_ViewController.hxx".}
proc UpdateZoom*(this: var AIS_ViewController; theDelta: Aspect_ScrollDelta): bool {.
    importcpp: "UpdateZoom", header: "AIS_ViewController.hxx".}
proc UpdateZRotation*(this: var AIS_ViewController; theAngle: cdouble): bool {.
    importcpp: "UpdateZRotation", header: "AIS_ViewController.hxx".}
proc UpdateMouseScroll*(this: var AIS_ViewController; theDelta: Aspect_ScrollDelta): bool {.
    importcpp: "UpdateMouseScroll", header: "AIS_ViewController.hxx".}
proc UpdateMouseButtons*(this: var AIS_ViewController; thePoint: Graphic3d_Vec2i;
                        theButtons: Aspect_VKeyMouse;
                        theModifiers: Aspect_VKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "UpdateMouseButtons", header: "AIS_ViewController.hxx".}
proc UpdateMousePosition*(this: var AIS_ViewController; thePoint: Graphic3d_Vec2i;
                         theButtons: Aspect_VKeyMouse;
                         theModifiers: Aspect_VKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "UpdateMousePosition", header: "AIS_ViewController.hxx".}
proc PressMouseButton*(this: var AIS_ViewController; thePoint: Graphic3d_Vec2i;
                      theButton: Aspect_VKeyMouse; theModifiers: Aspect_VKeyFlags;
                      theIsEmulated: bool): bool {.importcpp: "PressMouseButton",
    header: "AIS_ViewController.hxx".}
proc ReleaseMouseButton*(this: var AIS_ViewController; thePoint: Graphic3d_Vec2i;
                        theButton: Aspect_VKeyMouse;
                        theModifiers: Aspect_VKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "ReleaseMouseButton", header: "AIS_ViewController.hxx".}
proc UpdateMouseClick*(this: var AIS_ViewController; thePoint: Graphic3d_Vec2i;
                      theButton: Aspect_VKeyMouse; theModifiers: Aspect_VKeyFlags;
                      theIsDoubleClick: bool): bool {.
    importcpp: "UpdateMouseClick", header: "AIS_ViewController.hxx".}
proc PressedMouseButtons*(this: AIS_ViewController): Aspect_VKeyMouse {.
    noSideEffect, importcpp: "PressedMouseButtons",
    header: "AIS_ViewController.hxx".}
proc LastMouseFlags*(this: AIS_ViewController): Aspect_VKeyFlags {.noSideEffect,
    importcpp: "LastMouseFlags", header: "AIS_ViewController.hxx".}
proc LastMousePosition*(this: AIS_ViewController): Graphic3d_Vec2i {.noSideEffect,
    importcpp: "LastMousePosition", header: "AIS_ViewController.hxx".}
proc TouchToleranceScale*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "TouchToleranceScale", header: "AIS_ViewController.hxx".}
proc SetTouchToleranceScale*(this: var AIS_ViewController; theTolerance: cfloat) {.
    importcpp: "SetTouchToleranceScale", header: "AIS_ViewController.hxx".}
proc HasTouchPoints*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "HasTouchPoints", header: "AIS_ViewController.hxx".}
proc AddTouchPoint*(this: var AIS_ViewController; theId: Standard_Size;
                   thePnt: Graphic3d_Vec2d;
                   theClearBefore: Standard_Boolean = false) {.
    importcpp: "AddTouchPoint", header: "AIS_ViewController.hxx".}
proc RemoveTouchPoint*(this: var AIS_ViewController; theId: Standard_Size;
                      theClearSelectPnts: Standard_Boolean = false): bool {.
    importcpp: "RemoveTouchPoint", header: "AIS_ViewController.hxx".}
proc UpdateTouchPoint*(this: var AIS_ViewController; theId: Standard_Size;
                      thePnt: Graphic3d_Vec2d) {.importcpp: "UpdateTouchPoint",
    header: "AIS_ViewController.hxx".}
proc Get3dMouseTranslationScale*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "Get3dMouseTranslationScale", header: "AIS_ViewController.hxx".}
proc Set3dMouseTranslationScale*(this: var AIS_ViewController; theScale: cfloat) {.
    importcpp: "Set3dMouseTranslationScale", header: "AIS_ViewController.hxx".}
proc Get3dMouseRotationScale*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "Get3dMouseRotationScale", header: "AIS_ViewController.hxx".}
proc Set3dMouseRotationScale*(this: var AIS_ViewController; theScale: cfloat) {.
    importcpp: "Set3dMouseRotationScale", header: "AIS_ViewController.hxx".}
proc To3dMousePreciseInput*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "To3dMousePreciseInput", header: "AIS_ViewController.hxx".}
proc Set3dMousePreciseInput*(this: var AIS_ViewController; theIsQuadric: bool) {.
    importcpp: "Set3dMousePreciseInput", header: "AIS_ViewController.hxx".}
proc Get3dMouseIsNoRotate*(this: AIS_ViewController): NCollection_Vec3[bool] {.
    noSideEffect, importcpp: "Get3dMouseIsNoRotate",
    header: "AIS_ViewController.hxx".}
proc Change3dMouseIsNoRotate*(this: var AIS_ViewController): var NCollection_Vec3[
    bool] {.importcpp: "Change3dMouseIsNoRotate", header: "AIS_ViewController.hxx".}
proc Get3dMouseToReverse*(this: AIS_ViewController): NCollection_Vec3[bool] {.
    noSideEffect, importcpp: "Get3dMouseToReverse",
    header: "AIS_ViewController.hxx".}
proc Change3dMouseToReverse*(this: var AIS_ViewController): var NCollection_Vec3[bool] {.
    importcpp: "Change3dMouseToReverse", header: "AIS_ViewController.hxx".}
proc Update3dMouse*(this: var AIS_ViewController; theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "Update3dMouse", header: "AIS_ViewController.hxx".}
proc update3dMouseTranslation*(this: var AIS_ViewController;
                              theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "update3dMouseTranslation", header: "AIS_ViewController.hxx".}
proc update3dMouseRotation*(this: var AIS_ViewController;
                           theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "update3dMouseRotation", header: "AIS_ViewController.hxx".}
proc update3dMouseKeys*(this: var AIS_ViewController; theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "update3dMouseKeys", header: "AIS_ViewController.hxx".}
proc EventTime*(this: AIS_ViewController): cdouble {.noSideEffect,
    importcpp: "EventTime", header: "AIS_ViewController.hxx".}
proc ResetViewInput*(this: var AIS_ViewController) {.importcpp: "ResetViewInput",
    header: "AIS_ViewController.hxx".}
proc UpdateViewOrientation*(this: var AIS_ViewController;
                           theOrientation: V3d_TypeOfOrientation;
                           theToFitAll: bool) {.
    importcpp: "UpdateViewOrientation", header: "AIS_ViewController.hxx".}
proc FlushViewEvents*(this: var AIS_ViewController;
                     theCtx: handle[AIS_InteractiveContext];
                     theView: handle[V3d_View];
                     theToHandle: Standard_Boolean = Standard_False) {.
    importcpp: "FlushViewEvents", header: "AIS_ViewController.hxx".}
proc HandleViewEvents*(this: var AIS_ViewController;
                      theCtx: handle[AIS_InteractiveContext];
                      theView: handle[V3d_View]) {.importcpp: "HandleViewEvents",
    header: "AIS_ViewController.hxx".}
proc OnSelectionChanged*(this: var AIS_ViewController;
                        theCtx: handle[AIS_InteractiveContext];
                        theView: handle[V3d_View]) {.
    importcpp: "OnSelectionChanged", header: "AIS_ViewController.hxx".}
proc OnObjectDragged*(this: var AIS_ViewController;
                     theCtx: handle[AIS_InteractiveContext];
                     theView: handle[V3d_View]; theAction: AIS_DragAction) {.
    importcpp: "OnObjectDragged", header: "AIS_ViewController.hxx".}
proc PickPoint*(this: var AIS_ViewController; thePnt: var gp_Pnt;
               theCtx: handle[AIS_InteractiveContext]; theView: handle[V3d_View];
               theCursor: Graphic3d_Vec2i; theToStickToPickRay: bool): bool {.
    importcpp: "PickPoint", header: "AIS_ViewController.hxx".}
proc GravityPoint*(this: var AIS_ViewController;
                  theCtx: handle[AIS_InteractiveContext];
                  theView: handle[V3d_View]): gp_Pnt {.importcpp: "GravityPoint",
    header: "AIS_ViewController.hxx".}
proc FitAllAuto*(this: var AIS_ViewController;
                theCtx: handle[AIS_InteractiveContext]; theView: handle[V3d_View]) {.
    importcpp: "FitAllAuto", header: "AIS_ViewController.hxx".}
proc handleViewOrientationKeys*(this: var AIS_ViewController;
                               theCtx: handle[AIS_InteractiveContext];
                               theView: handle[V3d_View]) {.
    importcpp: "handleViewOrientationKeys", header: "AIS_ViewController.hxx".}
proc handleNavigationKeys*(this: var AIS_ViewController;
                          theCtx: handle[AIS_InteractiveContext];
                          theView: handle[V3d_View]): AIS_WalkDelta {.
    importcpp: "handleNavigationKeys", header: "AIS_ViewController.hxx".}
proc handleCameraActions*(this: var AIS_ViewController;
                         theCtx: handle[AIS_InteractiveContext];
                         theView: handle[V3d_View]; theWalk: AIS_WalkDelta) {.
    importcpp: "handleCameraActions", header: "AIS_ViewController.hxx".}
proc handleMoveTo*(this: var AIS_ViewController;
                  theCtx: handle[AIS_InteractiveContext];
                  theView: handle[V3d_View]) {.importcpp: "handleMoveTo",
    header: "AIS_ViewController.hxx".}
proc toAskNextFrame*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "toAskNextFrame", header: "AIS_ViewController.hxx".}
proc setAskNextFrame*(this: var AIS_ViewController; theToDraw: bool = true) {.
    importcpp: "setAskNextFrame", header: "AIS_ViewController.hxx".}
proc hasPanningAnchorPoint*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "hasPanningAnchorPoint", header: "AIS_ViewController.hxx".}
proc panningAnchorPoint*(this: AIS_ViewController): gp_Pnt {.noSideEffect,
    importcpp: "panningAnchorPoint", header: "AIS_ViewController.hxx".}
proc setPanningAnchorPoint*(this: var AIS_ViewController; thePnt: gp_Pnt) {.
    importcpp: "setPanningAnchorPoint", header: "AIS_ViewController.hxx".}
proc handlePanning*(this: var AIS_ViewController; theView: handle[V3d_View]) {.
    importcpp: "handlePanning", header: "AIS_ViewController.hxx".}
proc handleZRotate*(this: var AIS_ViewController; theView: handle[V3d_View]) {.
    importcpp: "handleZRotate", header: "AIS_ViewController.hxx".}
proc MinZoomDistance*(this: AIS_ViewController): cdouble {.noSideEffect,
    importcpp: "MinZoomDistance", header: "AIS_ViewController.hxx".}
proc SetMinZoomDistance*(this: var AIS_ViewController; theDist: cdouble) {.
    importcpp: "SetMinZoomDistance", header: "AIS_ViewController.hxx".}
proc handleZoom*(this: var AIS_ViewController; theView: handle[V3d_View];
                theParams: Aspect_ScrollDelta; thePnt: ptr gp_Pnt) {.
    importcpp: "handleZoom", header: "AIS_ViewController.hxx".}
proc handleZFocusScroll*(this: var AIS_ViewController; theView: handle[V3d_View];
                        theParams: Aspect_ScrollDelta) {.
    importcpp: "handleZFocusScroll", header: "AIS_ViewController.hxx".}
proc handleOrbitRotation*(this: var AIS_ViewController; theView: handle[V3d_View];
                         thePnt: gp_Pnt; theToLockZUp: bool) {.
    importcpp: "handleOrbitRotation", header: "AIS_ViewController.hxx".}
proc handleViewRotation*(this: var AIS_ViewController; theView: handle[V3d_View];
                        theYawExtra: cdouble; thePitchExtra: cdouble;
                        theRoll: cdouble; theToRestartOnIncrement: bool) {.
    importcpp: "handleViewRotation", header: "AIS_ViewController.hxx".}
proc handleViewRedraw*(this: var AIS_ViewController;
                      theCtx: handle[AIS_InteractiveContext];
                      theView: handle[V3d_View]) {.importcpp: "handleViewRedraw",
    header: "AIS_ViewController.hxx".}
proc handleXRInput*(this: var AIS_ViewController;
                   theCtx: handle[AIS_InteractiveContext];
                   theView: handle[V3d_View]; theWalk: AIS_WalkDelta) {.
    importcpp: "handleXRInput", header: "AIS_ViewController.hxx".}
proc handleXRTurnPad*(this: var AIS_ViewController;
                     theCtx: handle[AIS_InteractiveContext];
                     theView: handle[V3d_View]) {.importcpp: "handleXRTurnPad",
    header: "AIS_ViewController.hxx".}
proc handleXRTeleport*(this: var AIS_ViewController;
                      theCtx: handle[AIS_InteractiveContext];
                      theView: handle[V3d_View]) {.importcpp: "handleXRTeleport",
    header: "AIS_ViewController.hxx".}
proc handleXRPicking*(this: var AIS_ViewController;
                     theCtx: handle[AIS_InteractiveContext];
                     theView: handle[V3d_View]) {.importcpp: "handleXRPicking",
    header: "AIS_ViewController.hxx".}
proc handleXRHighlight*(this: var AIS_ViewController;
                       theCtx: handle[AIS_InteractiveContext];
                       theView: handle[V3d_View]) {.
    importcpp: "handleXRHighlight", header: "AIS_ViewController.hxx".}
proc handleXRPresentations*(this: var AIS_ViewController;
                           theCtx: handle[AIS_InteractiveContext];
                           theView: handle[V3d_View]) {.
    importcpp: "handleXRPresentations", header: "AIS_ViewController.hxx".}
proc handleXRMoveTo*(this: var AIS_ViewController;
                    theCtx: handle[AIS_InteractiveContext];
                    theView: handle[V3d_View]; thePose: gp_Trsf;
                    theToHighlight: Standard_Boolean): Standard_Integer {.
    importcpp: "handleXRMoveTo", header: "AIS_ViewController.hxx".}