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

discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of Image_Texture"
type
  AspectXRSession* {.importcpp: "Aspect_XRSession", header: "Aspect_XRSession.hxx",
                    bycopy.} = object of StandardTransient ## ! Identifies which style of tracking origin the application wants to use for the poses it is requesting.
                                                      ## ! Return TRUE if session is opened.
                                                      ## ! Info string enumeration.
                                                      ## ! Empty constructor.
    ## !< generic actions
    ## !< actions sets
    ## !< tracking origin
    ## !< array of tracked poses
    ## !< head orientation
    ## !< viewport Width x Height for rendering into VR
    ## !< left  eye projection frustum
    ## !< right eye projection frustum
    ## !< unit scale factor defined as scale factor for m (meters)
    ## !< aspect ratio
    ## !< field of view
    ## !< intra-ocular distance in meters
    ## !< display frequency

  AspectXRSessionTrackingUniverseOrigin* {.size: sizeof(cint),
      importcpp: "Aspect_XRSession::TrackingUniverseOrigin",
      header: "Aspect_XRSession.hxx".} = enum
    TrackingUniverseOriginSeated, ## ! poses are provided relative to the seated zero pose
    TrackingUniverseOriginStanding ## ! poses are provided relative to the safe bounds configured by the user


proc isOpen*(this: AspectXRSession): bool {.noSideEffect, cdecl, importcpp: "IsOpen",
                                        header: "Aspect_XRSession.hxx".}
proc open*(this: var AspectXRSession): bool {.cdecl, importcpp: "Open",
    header: "Aspect_XRSession.hxx".}
proc close*(this: var AspectXRSession) {.cdecl, importcpp: "Close", header: "Aspect_XRSession.hxx".}
proc waitPoses*(this: var AspectXRSession): bool {.cdecl, importcpp: "WaitPoses",
    header: "Aspect_XRSession.hxx".}
proc recommendedViewport*(this: AspectXRSession): NCollectionVec2[cint] {.
    noSideEffect, cdecl, importcpp: "RecommendedViewport", header: "Aspect_XRSession.hxx".}
proc eyeToHeadTransform*(this: AspectXRSession; theEye: AspectEye): NCollectionMat4[
    cdouble] {.noSideEffect, cdecl, importcpp: "EyeToHeadTransform",
              header: "Aspect_XRSession.hxx".}
proc headToEyeTransform*(this: AspectXRSession; theEye: AspectEye): NCollectionMat4[
    cdouble] {.noSideEffect, cdecl, importcpp: "HeadToEyeTransform",
              header: "Aspect_XRSession.hxx".}
proc projectionMatrix*(this: AspectXRSession; theEye: AspectEye; theZNear: cdouble;
                      theZFar: cdouble): NCollectionMat4[cdouble] {.noSideEffect,
    cdecl, importcpp: "ProjectionMatrix", header: "Aspect_XRSession.hxx".}
proc hasProjectionFrustums*(this: AspectXRSession): bool {.noSideEffect, cdecl,
    importcpp: "HasProjectionFrustums", header: "Aspect_XRSession.hxx".}
proc processEvents*(this: var AspectXRSession) {.cdecl, importcpp: "ProcessEvents",
    header: "Aspect_XRSession.hxx".}
proc submitEye*(this: var AspectXRSession; theTexture: pointer;
               theGraphicsLib: AspectGraphicsLibrary;
               theColorSpace: AspectColorSpace; theEye: AspectEye): bool {.cdecl,
    importcpp: "SubmitEye", header: "Aspect_XRSession.hxx".}
proc unitFactor*(this: AspectXRSession): cfloat {.noSideEffect, cdecl,
    importcpp: "UnitFactor", header: "Aspect_XRSession.hxx".}
proc setUnitFactor*(this: var AspectXRSession; theFactor: cfloat) {.cdecl,
    importcpp: "SetUnitFactor", header: "Aspect_XRSession.hxx".}
proc aspect*(this: AspectXRSession): cfloat {.noSideEffect, cdecl,
    importcpp: "Aspect", header: "Aspect_XRSession.hxx".}
proc fieldOfView*(this: AspectXRSession): cfloat {.noSideEffect, cdecl,
    importcpp: "FieldOfView", header: "Aspect_XRSession.hxx".}
proc iod*(this: AspectXRSession): cfloat {.noSideEffect, cdecl, importcpp: "IOD",
                                       header: "Aspect_XRSession.hxx".}
proc displayFrequency*(this: AspectXRSession): StandardShortReal {.noSideEffect,
    cdecl, importcpp: "DisplayFrequency", header: "Aspect_XRSession.hxx".}
proc projectionFrustum*(this: AspectXRSession; theEye: AspectEye): AspectFrustumLRBT[
    cdouble] {.noSideEffect, cdecl, importcpp: "ProjectionFrustum", header: "Aspect_XRSession.hxx".}
proc headPose*(this: AspectXRSession): Trsf {.noSideEffect, cdecl,
    importcpp: "HeadPose", header: "Aspect_XRSession.hxx".}
proc leftHandPose*(this: AspectXRSession): Trsf {.noSideEffect, cdecl,
    importcpp: "LeftHandPose", header: "Aspect_XRSession.hxx".}
proc rightHandPose*(this: AspectXRSession): Trsf {.noSideEffect, cdecl,
    importcpp: "RightHandPose", header: "Aspect_XRSession.hxx".}
proc trackedPoses*(this: AspectXRSession): AspectTrackedDevicePoseArray {.
    noSideEffect, cdecl, importcpp: "TrackedPoses", header: "Aspect_XRSession.hxx".}
proc hasTrackedPose*(this: AspectXRSession; theDevice: cint): bool {.noSideEffect,
    cdecl, importcpp: "HasTrackedPose", header: "Aspect_XRSession.hxx".}
proc namedTrackedDevice*(this: AspectXRSession;
                        theDevice: AspectXRTrackedDeviceRole): cint {.noSideEffect,
    cdecl, importcpp: "NamedTrackedDevice", header: "Aspect_XRSession.hxx".}
proc loadRenderModel*(this: var AspectXRSession; theDevice: cint;
                     theTexture: var Handle[ImageTexture]): Handle[
    Graphic3dArrayOfTriangles] {.cdecl, importcpp: "LoadRenderModel",
                                header: "Aspect_XRSession.hxx".}
proc loadRenderModel*(this: var AspectXRSession; theDevice: cint;
                     theToApplyUnitFactor: bool;
                     theTexture: var Handle[ImageTexture]): Handle[
    Graphic3dArrayOfTriangles] {.cdecl, importcpp: "LoadRenderModel",
                                header: "Aspect_XRSession.hxx".}
proc getDigitalActionData*(this: AspectXRSession; theAction: Handle[AspectXRAction]): AspectXRDigitalActionData {.
    noSideEffect, cdecl, importcpp: "GetDigitalActionData", header: "Aspect_XRSession.hxx".}
proc getAnalogActionData*(this: AspectXRSession; theAction: Handle[AspectXRAction]): AspectXRAnalogActionData {.
    noSideEffect, cdecl, importcpp: "GetAnalogActionData", header: "Aspect_XRSession.hxx".}
proc getPoseActionDataForNextFrame*(this: AspectXRSession;
                                   theAction: Handle[AspectXRAction]): AspectXRPoseActionData {.
    noSideEffect, cdecl, importcpp: "GetPoseActionDataForNextFrame",
    header: "Aspect_XRSession.hxx".}
proc triggerHapticVibrationAction*(this: var AspectXRSession;
                                  theAction: Handle[AspectXRAction];
                                  theParams: AspectXRHapticActionData) {.cdecl,
    importcpp: "TriggerHapticVibrationAction", header: "Aspect_XRSession.hxx".}
proc abortHapticVibrationAction*(this: var AspectXRSession;
                                theAction: Handle[AspectXRAction]) {.cdecl,
    importcpp: "AbortHapticVibrationAction", header: "Aspect_XRSession.hxx".}
proc trackingOrigin*(this: AspectXRSession): AspectXRSessionTrackingUniverseOrigin {.
    noSideEffect, cdecl, importcpp: "TrackingOrigin", header: "Aspect_XRSession.hxx".}
proc setTrackingOrigin*(this: var AspectXRSession;
                       theOrigin: AspectXRSessionTrackingUniverseOrigin) {.cdecl,
    importcpp: "SetTrackingOrigin", header: "Aspect_XRSession.hxx".}
proc genericAction*(this: AspectXRSession; theDevice: AspectXRTrackedDeviceRole;
                   theAction: AspectXRGenericAction): Handle[AspectXRAction] {.
    noSideEffect, cdecl, importcpp: "GenericAction", header: "Aspect_XRSession.hxx".}
type
  AspectXRSessionInfoString* {.size: sizeof(cint),
                              importcpp: "Aspect_XRSession::InfoString",
                              header: "Aspect_XRSession.hxx".} = enum
    InfoStringVendor, InfoStringDevice, InfoStringTracker, InfoStringSerialNumber


proc getString*(this: AspectXRSession; theInfo: AspectXRSessionInfoString): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetString", header: "Aspect_XRSession.hxx".}