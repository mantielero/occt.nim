import aspect_types
#import ../standard/standard_types
import ../ncollection/ncollection_types
import ../graphic3d/graphic3d_types
import ../selectmgr/selectmgr_types
##  Copyright (c) 2021 OPEN CASCADE SAS
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


proc destroyAspectWindowInputListener*(this: var AspectWindowInputListener) {.
    importcpp: "#.~Aspect_WindowInputListener()",
    header: "Aspect_WindowInputListener.hxx".}
proc eventTime*(this: AspectWindowInputListener): cdouble {.noSideEffect,
    importcpp: "EventTime", header: "Aspect_WindowInputListener.hxx".}
proc processExpose*(this: var AspectWindowInputListener) {.
    importcpp: "ProcessExpose", header: "Aspect_WindowInputListener.hxx".}
proc processConfigure*(this: var AspectWindowInputListener; theIsResized: bool) {.
    importcpp: "ProcessConfigure", header: "Aspect_WindowInputListener.hxx".}
proc processInput*(this: var AspectWindowInputListener) {.importcpp: "ProcessInput",
    header: "Aspect_WindowInputListener.hxx".}
proc processFocus*(this: var AspectWindowInputListener; theIsActivated: bool) {.
    importcpp: "ProcessFocus", header: "Aspect_WindowInputListener.hxx".}
proc processClose*(this: var AspectWindowInputListener) {.importcpp: "ProcessClose",
    header: "Aspect_WindowInputListener.hxx".}
proc keys*(this: AspectWindowInputListener): AspectVKeySet {.noSideEffect,
    importcpp: "Keys", header: "Aspect_WindowInputListener.hxx".}
proc changeKeys*(this: var AspectWindowInputListener): var AspectVKeySet {.
    importcpp: "ChangeKeys", header: "Aspect_WindowInputListener.hxx".}
proc keyDown*(this: var AspectWindowInputListener; theKey: AspectVKey;
             theTime: cdouble; thePressure: cdouble = 1.0) {.importcpp: "KeyDown",
    header: "Aspect_WindowInputListener.hxx".}
proc keyUp*(this: var AspectWindowInputListener; theKey: AspectVKey; theTime: cdouble) {.
    importcpp: "KeyUp", header: "Aspect_WindowInputListener.hxx".}
proc keyFromAxis*(this: var AspectWindowInputListener; theNegative: AspectVKey;
                 thePositive: AspectVKey; theTime: cdouble; thePressure: cdouble) {.
    importcpp: "KeyFromAxis", header: "Aspect_WindowInputListener.hxx".}
proc updateMouseScroll*(this: var AspectWindowInputListener;
                       theDelta: AspectScrollDelta): bool {.
    importcpp: "UpdateMouseScroll", header: "Aspect_WindowInputListener.hxx".}
proc updateMouseButtons*(this: var AspectWindowInputListener;
                        thePoint: Graphic3dVec2i; theButtons: AspectVKeyMouse;
                        theModifiers: AspectVKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "UpdateMouseButtons", header: "Aspect_WindowInputListener.hxx".}
proc updateMousePosition*(this: var AspectWindowInputListener;
                         thePoint: Graphic3dVec2i; theButtons: AspectVKeyMouse;
                         theModifiers: AspectVKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "UpdateMousePosition", header: "Aspect_WindowInputListener.hxx".}
proc pressMouseButton*(this: var AspectWindowInputListener;
                      thePoint: Graphic3dVec2i; theButton: AspectVKeyMouse;
                      theModifiers: AspectVKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "PressMouseButton", header: "Aspect_WindowInputListener.hxx".}
proc releaseMouseButton*(this: var AspectWindowInputListener;
                        thePoint: Graphic3dVec2i; theButton: AspectVKeyMouse;
                        theModifiers: AspectVKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "ReleaseMouseButton", header: "Aspect_WindowInputListener.hxx".}
proc pressedMouseButtons*(this: AspectWindowInputListener): AspectVKeyMouse {.
    noSideEffect, importcpp: "PressedMouseButtons",
    header: "Aspect_WindowInputListener.hxx".}
proc lastMouseFlags*(this: AspectWindowInputListener): AspectVKeyFlags {.
    noSideEffect, importcpp: "LastMouseFlags",
    header: "Aspect_WindowInputListener.hxx".}
proc lastMousePosition*(this: AspectWindowInputListener): Graphic3dVec2i {.
    noSideEffect, importcpp: "LastMousePosition",
    header: "Aspect_WindowInputListener.hxx".}
proc hasTouchPoints*(this: AspectWindowInputListener): bool {.noSideEffect,
    importcpp: "HasTouchPoints", header: "Aspect_WindowInputListener.hxx".}
proc touchPoints*(this: AspectWindowInputListener): AspectTouchMap {.noSideEffect,
    importcpp: "TouchPoints", header: "Aspect_WindowInputListener.hxx".}
proc addTouchPoint*(this: var AspectWindowInputListener; theId: StandardSize;
                   thePnt: Graphic3dVec2d; theClearBefore: bool = false) {.
    importcpp: "AddTouchPoint", header: "Aspect_WindowInputListener.hxx".}
proc removeTouchPoint*(this: var AspectWindowInputListener; theId: StandardSize;
                      theClearSelectPnts: bool = false): bool {.
    importcpp: "RemoveTouchPoint", header: "Aspect_WindowInputListener.hxx".}
proc updateTouchPoint*(this: var AspectWindowInputListener; theId: StandardSize;
                      thePnt: Graphic3dVec2d) {.importcpp: "UpdateTouchPoint",
    header: "Aspect_WindowInputListener.hxx".}
proc get3dMouseTranslationScale*(this: AspectWindowInputListener): cfloat {.
    noSideEffect, importcpp: "Get3dMouseTranslationScale",
    header: "Aspect_WindowInputListener.hxx".}
proc set3dMouseTranslationScale*(this: var AspectWindowInputListener;
                                theScale: cfloat) {.
    importcpp: "Set3dMouseTranslationScale",
    header: "Aspect_WindowInputListener.hxx".}
proc get3dMouseRotationScale*(this: AspectWindowInputListener): cfloat {.
    noSideEffect, importcpp: "Get3dMouseRotationScale",
    header: "Aspect_WindowInputListener.hxx".}
proc set3dMouseRotationScale*(this: var AspectWindowInputListener; theScale: cfloat) {.
    importcpp: "Set3dMouseRotationScale", header: "Aspect_WindowInputListener.hxx".}
proc to3dMousePreciseInput*(this: AspectWindowInputListener): bool {.noSideEffect,
    importcpp: "To3dMousePreciseInput", header: "Aspect_WindowInputListener.hxx".}
proc set3dMousePreciseInput*(this: var AspectWindowInputListener; theIsQuadric: bool) {.
    importcpp: "Set3dMousePreciseInput", header: "Aspect_WindowInputListener.hxx".}
proc get3dMouseIsNoRotate*(this: AspectWindowInputListener): NCollectionVec3[bool] {.
    noSideEffect, importcpp: "Get3dMouseIsNoRotate",
    header: "Aspect_WindowInputListener.hxx".}
proc change3dMouseIsNoRotate*(this: var AspectWindowInputListener): var NCollectionVec3[
    bool] {.importcpp: "Change3dMouseIsNoRotate",
           header: "Aspect_WindowInputListener.hxx".}
proc get3dMouseToReverse*(this: AspectWindowInputListener): NCollectionVec3[bool] {.
    noSideEffect, importcpp: "Get3dMouseToReverse",
    header: "Aspect_WindowInputListener.hxx".}
proc change3dMouseToReverse*(this: var AspectWindowInputListener): var NCollectionVec3[
    bool] {.importcpp: "Change3dMouseToReverse",
           header: "Aspect_WindowInputListener.hxx".}
proc update3dMouse*(this: var AspectWindowInputListener; theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "Update3dMouse", header: "Aspect_WindowInputListener.hxx".}
proc update3dMouseTranslation*(this: var AspectWindowInputListener;
                              theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "update3dMouseTranslation",
    header: "Aspect_WindowInputListener.hxx".}
proc update3dMouseRotation*(this: var AspectWindowInputListener;
                           theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "update3dMouseRotation", header: "Aspect_WindowInputListener.hxx".}
proc update3dMouseKeys*(this: var AspectWindowInputListener;
                       theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "update3dMouseKeys", header: "Aspect_WindowInputListener.hxx".}