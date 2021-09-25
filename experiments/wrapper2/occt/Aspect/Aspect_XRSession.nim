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

  AspectXRSessionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Aspect_XRSession::get_type_name(@)",
                            header: "Aspect_XRSession.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_XRSession::get_type_descriptor(@)",
    header: "Aspect_XRSession.hxx".}
proc dynamicType*(this: AspectXRSession): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_XRSession.hxx".}
type
  AspectXRSessionTrackingUniverseOrigin* {.size: sizeof(cint),
      importcpp: "Aspect_XRSession::TrackingUniverseOrigin",
      header: "Aspect_XRSession.hxx".} = enum
    TrackingUniverseOriginSeated, ## ! poses are provided relative to the seated zero pose
    TrackingUniverseOriginStanding ## ! poses are provided relative to the safe bounds configured by the user


proc isOpen*(this: AspectXRSession): bool {.noSideEffect, importcpp: "IsOpen",
                                        header: "Aspect_XRSession.hxx".}
proc open*(this: var AspectXRSession): bool {.importcpp: "Open",
    header: "Aspect_XRSession.hxx".}
proc close*(this: var AspectXRSession) {.importcpp: "Close",
                                     header: "Aspect_XRSession.hxx".}
proc waitPoses*(this: var AspectXRSession): bool {.importcpp: "WaitPoses",
    header: "Aspect_XRSession.hxx".}
proc recommendedViewport*(this: AspectXRSession): NCollectionVec2[cint] {.
    noSideEffect, importcpp: "RecommendedViewport", header: "Aspect_XRSession.hxx".}
proc eyeToHeadTransform*(this: AspectXRSession; theEye: AspectEye): NCollectionMat4[
    cdouble] {.noSideEffect, importcpp: "EyeToHeadTransform",
              header: "Aspect_XRSession.hxx".}
proc headToEyeTransform*(this: AspectXRSession; theEye: AspectEye): NCollectionMat4[
    cdouble] {.noSideEffect, importcpp: "HeadToEyeTransform",
              header: "Aspect_XRSession.hxx".}
proc projectionMatrix*(this: AspectXRSession; theEye: AspectEye; theZNear: cdouble;
                      theZFar: cdouble): NCollectionMat4[cdouble] {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "Aspect_XRSession.hxx".}
proc hasProjectionFrustums*(this: AspectXRSession): bool {.noSideEffect,
    importcpp: "HasProjectionFrustums", header: "Aspect_XRSession.hxx".}
proc processEvents*(this: var AspectXRSession) {.importcpp: "ProcessEvents",
    header: "Aspect_XRSession.hxx".}
proc submitEye*(this: var AspectXRSession; theTexture: pointer;
               theGraphicsLib: AspectGraphicsLibrary;
               theColorSpace: AspectColorSpace; theEye: AspectEye): bool {.
    importcpp: "SubmitEye", header: "Aspect_XRSession.hxx".}
proc unitFactor*(this: AspectXRSession): float {.noSideEffect,
    importcpp: "UnitFactor", header: "Aspect_XRSession.hxx".}
proc setUnitFactor*(this: var AspectXRSession; theFactor: float) {.
    importcpp: "SetUnitFactor", header: "Aspect_XRSession.hxx".}
proc aspect*(this: AspectXRSession): float {.noSideEffect, importcpp: "Aspect",
    header: "Aspect_XRSession.hxx".}
proc fieldOfView*(this: AspectXRSession): float {.noSideEffect,
    importcpp: "FieldOfView", header: "Aspect_XRSession.hxx".}
proc iod*(this: AspectXRSession): float {.noSideEffect, importcpp: "IOD",
                                      header: "Aspect_XRSession.hxx".}
proc displayFrequency*(this: AspectXRSession): StandardShortReal {.noSideEffect,
    importcpp: "DisplayFrequency", header: "Aspect_XRSession.hxx".}
proc projectionFrustum*(this: AspectXRSession; theEye: AspectEye): AspectFrustumLRBT[
    cdouble] {.noSideEffect, importcpp: "ProjectionFrustum",
              header: "Aspect_XRSession.hxx".}
proc headPose*(this: AspectXRSession): Trsf {.noSideEffect, importcpp: "HeadPose",
    header: "Aspect_XRSession.hxx".}
proc leftHandPose*(this: AspectXRSession): Trsf {.noSideEffect,
    importcpp: "LeftHandPose", header: "Aspect_XRSession.hxx".}
proc rightHandPose*(this: AspectXRSession): Trsf {.noSideEffect,
    importcpp: "RightHandPose", header: "Aspect_XRSession.hxx".}
proc trackedPoses*(this: AspectXRSession): AspectTrackedDevicePoseArray {.
    noSideEffect, importcpp: "TrackedPoses", header: "Aspect_XRSession.hxx".}
proc hasTrackedPose*(this: AspectXRSession; theDevice: int): bool {.noSideEffect,
    importcpp: "HasTrackedPose", header: "Aspect_XRSession.hxx".}
proc namedTrackedDevice*(this: AspectXRSession;
                        theDevice: AspectXRTrackedDeviceRole): int {.noSideEffect,
    importcpp: "NamedTrackedDevice", header: "Aspect_XRSession.hxx".}
proc loadRenderModel*(this: var AspectXRSession; theDevice: int;
                     theTexture: var Handle[ImageTexture]): Handle[
    Graphic3dArrayOfTriangles] {.importcpp: "LoadRenderModel",
                                header: "Aspect_XRSession.hxx".}
proc loadRenderModel*(this: var AspectXRSession; theDevice: int;
                     theToApplyUnitFactor: bool;
                     theTexture: var Handle[ImageTexture]): Handle[
    Graphic3dArrayOfTriangles] {.importcpp: "LoadRenderModel",
                                header: "Aspect_XRSession.hxx".}
proc getDigitalActionData*(this: AspectXRSession; theAction: Handle[AspectXRAction]): AspectXRDigitalActionData {.
    noSideEffect, importcpp: "GetDigitalActionData", header: "Aspect_XRSession.hxx".}
proc getAnalogActionData*(this: AspectXRSession; theAction: Handle[AspectXRAction]): AspectXRAnalogActionData {.
    noSideEffect, importcpp: "GetAnalogActionData", header: "Aspect_XRSession.hxx".}
proc getPoseActionDataForNextFrame*(this: AspectXRSession;
                                   theAction: Handle[AspectXRAction]): AspectXRPoseActionData {.
    noSideEffect, importcpp: "GetPoseActionDataForNextFrame",
    header: "Aspect_XRSession.hxx".}
proc triggerHapticVibrationAction*(this: var AspectXRSession;
                                  theAction: Handle[AspectXRAction];
                                  theParams: AspectXRHapticActionData) {.
    importcpp: "TriggerHapticVibrationAction", header: "Aspect_XRSession.hxx".}
proc abortHapticVibrationAction*(this: var AspectXRSession;
                                theAction: Handle[AspectXRAction]) {.
    importcpp: "AbortHapticVibrationAction", header: "Aspect_XRSession.hxx".}
proc trackingOrigin*(this: AspectXRSession): AspectXRSessionTrackingUniverseOrigin {.
    noSideEffect, importcpp: "TrackingOrigin", header: "Aspect_XRSession.hxx".}
proc setTrackingOrigin*(this: var AspectXRSession;
                       theOrigin: AspectXRSessionTrackingUniverseOrigin) {.
    importcpp: "SetTrackingOrigin", header: "Aspect_XRSession.hxx".}
proc genericAction*(this: AspectXRSession; theDevice: AspectXRTrackedDeviceRole;
                   theAction: AspectXRGenericAction): Handle[AspectXRAction] {.
    noSideEffect, importcpp: "GenericAction", header: "Aspect_XRSession.hxx".}
type
  AspectXRSessionInfoString* {.size: sizeof(cint),
                              importcpp: "Aspect_XRSession::InfoString",
                              header: "Aspect_XRSession.hxx".} = enum
    InfoStringVendor, InfoStringDevice, InfoStringTracker, InfoStringSerialNumber


proc getString*(this: AspectXRSession; theInfo: AspectXRSessionInfoString): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetString", header: "Aspect_XRSession.hxx".}
