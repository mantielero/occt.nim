import ../tcollection/tcollection_types
import ../standard/standard_types
import aspect_types
import ../ncollection/ncollection_types
import ../selectmgr/selectmgr_types
import ../graphic3d/graphic3d_types
import ../gp/gp_types




##  Copyright (c) 2020 OPEN CASCADE SAS
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




proc isOpen*(this: AspectXRSession): bool {.noSideEffect, cdecl, importcpp: "IsOpen",
                                        .}
proc open*(this: var AspectXRSession): bool {.cdecl, importcpp: "Open",
    .}
proc close*(this: var AspectXRSession) {.cdecl, importcpp: "Close".}
proc waitPoses*(this: var AspectXRSession): bool {.cdecl, importcpp: "WaitPoses",
    .}
proc recommendedViewport*(this: AspectXRSession): NCollectionVec2[cint] {.
    noSideEffect, cdecl, importcpp: "RecommendedViewport".}
proc eyeToHeadTransform*(this: AspectXRSession; theEye: AspectEye): NCollectionMat4[
    cdouble] {.noSideEffect, cdecl, importcpp: "EyeToHeadTransform",
              .}
proc headToEyeTransform*(this: AspectXRSession; theEye: AspectEye): NCollectionMat4[
    cdouble] {.noSideEffect, cdecl, importcpp: "HeadToEyeTransform",
              .}
proc projectionMatrix*(this: AspectXRSession; theEye: AspectEye; theZNear: cdouble;
                      theZFar: cdouble): NCollectionMat4[cdouble] {.noSideEffect,
    cdecl, importcpp: "ProjectionMatrix".}
proc hasProjectionFrustums*(this: AspectXRSession): bool {.noSideEffect, cdecl,
    importcpp: "HasProjectionFrustums".}
proc processEvents*(this: var AspectXRSession) {.cdecl, importcpp: "ProcessEvents",
    .}
proc submitEye*(this: var AspectXRSession; theTexture: pointer;
               theGraphicsLib: AspectGraphicsLibrary;
               theColorSpace: AspectColorSpace; theEye: AspectEye): bool {.cdecl,
    importcpp: "SubmitEye".}
proc unitFactor*(this: AspectXRSession): cfloat {.noSideEffect, cdecl,
    importcpp: "UnitFactor".}
proc setUnitFactor*(this: var AspectXRSession; theFactor: cfloat) {.cdecl,
    importcpp: "SetUnitFactor".}
proc aspect*(this: AspectXRSession): cfloat {.noSideEffect, cdecl,
    importcpp: "Aspect".}
proc fieldOfView*(this: AspectXRSession): cfloat {.noSideEffect, cdecl,
    importcpp: "FieldOfView".}
proc iod*(this: AspectXRSession): cfloat {.noSideEffect, cdecl, importcpp: "IOD",
                                       .}
proc displayFrequency*(this: AspectXRSession): StandardShortReal {.noSideEffect,
    cdecl, importcpp: "DisplayFrequency".}
proc projectionFrustum*(this: AspectXRSession; theEye: AspectEye): AspectFrustumLRBT[
    cdouble] {.noSideEffect, cdecl, importcpp: "ProjectionFrustum".}
proc headPose*(this: AspectXRSession): TrsfObj {.noSideEffect, cdecl,
    importcpp: "HeadPose".}
proc leftHandPose*(this: AspectXRSession): TrsfObj {.noSideEffect, cdecl,
    importcpp: "LeftHandPose".}
proc rightHandPose*(this: AspectXRSession): TrsfObj {.noSideEffect, cdecl,
    importcpp: "RightHandPose".}
proc trackedPoses*(this: AspectXRSession): AspectTrackedDevicePoseArray {.
    noSideEffect, cdecl, importcpp: "TrackedPoses".}
proc hasTrackedPose*(this: AspectXRSession; theDevice: cint): bool {.noSideEffect,
    cdecl, importcpp: "HasTrackedPose".}
proc namedTrackedDevice*(this: AspectXRSession;
                        theDevice: AspectXRTrackedDeviceRole): cint {.noSideEffect,
    cdecl, importcpp: "NamedTrackedDevice".}
proc loadRenderModel*(this: var AspectXRSession; theDevice: cint;
                     theTexture: var Handle[ImageTexture]): Handle[
    Graphic3dArrayOfTriangles] {.cdecl, importcpp: "LoadRenderModel",
                                .}
proc loadRenderModel*(this: var AspectXRSession; theDevice: cint;
                     theToApplyUnitFactor: bool;
                     theTexture: var Handle[ImageTexture]): Handle[
    Graphic3dArrayOfTriangles] {.cdecl, importcpp: "LoadRenderModel",
                                .}
proc getDigitalActionData*(this: AspectXRSession; theAction: Handle[AspectXRAction]): AspectXRDigitalActionData {.
    noSideEffect, cdecl, importcpp: "GetDigitalActionData".}
proc getAnalogActionData*(this: AspectXRSession; theAction: Handle[AspectXRAction]): AspectXRAnalogActionData {.
    noSideEffect, cdecl, importcpp: "GetAnalogActionData".}
proc getPoseActionDataForNextFrame*(this: AspectXRSession;
                                   theAction: Handle[AspectXRAction]): AspectXRPoseActionData {.
    noSideEffect, cdecl, importcpp: "GetPoseActionDataForNextFrame",
    .}
proc triggerHapticVibrationAction*(this: var AspectXRSession;
                                  theAction: Handle[AspectXRAction];
                                  theParams: AspectXRHapticActionData) {.cdecl,
    importcpp: "TriggerHapticVibrationAction".}
proc abortHapticVibrationAction*(this: var AspectXRSession;
                                theAction: Handle[AspectXRAction]) {.cdecl,
    importcpp: "AbortHapticVibrationAction".}
proc trackingOrigin*(this: AspectXRSession): AspectXRSessionTrackingUniverseOrigin {.
    noSideEffect, cdecl, importcpp: "TrackingOrigin".}
proc setTrackingOrigin*(this: var AspectXRSession;
                       theOrigin: AspectXRSessionTrackingUniverseOrigin) {.cdecl,
    importcpp: "SetTrackingOrigin".}
proc genericAction*(this: AspectXRSession; theDevice: AspectXRTrackedDeviceRole;
                   theAction: AspectXRGenericAction): Handle[AspectXRAction] {.
    noSideEffect, cdecl, importcpp: "GenericAction".}


proc getString*(this: AspectXRSession; theInfo: AspectXRSessionInfoString): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetString".}


