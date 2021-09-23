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

import
  Aspect_ColorSpace, Aspect_Eye, Aspect_FrustumLRBT, Aspect_GraphicsLibrary,
  Aspect_XRActionSet, Aspect_XRAnalogActionData, Aspect_XRDigitalActionData,
  Aspect_XRGenericAction, Aspect_XRHapticActionData, Aspect_XRPoseActionData,
  Aspect_XRTrackedDeviceRole, ../gp/gp_Trsf, ../NCollection/NCollection_Array1

discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of Image_Texture"
type
  Aspect_XRSession* {.importcpp: "Aspect_XRSession",
                     header: "Aspect_XRSession.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Identifies
                                                                                      ## which
                                                                                      ## style
                                                                                      ## of
                                                                                      ## tracking
                                                                                      ## origin
                                                                                      ## the
                                                                                      ## application
                                                                                      ## wants
                                                                                      ## to
                                                                                      ## use
                                                                                      ## for
                                                                                      ## the
                                                                                      ## poses
                                                                                      ## it
                                                                                      ## is
                                                                                      ## requesting.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Return
                                                                                      ## TRUE
                                                                                      ## if
                                                                                      ## session
                                                                                      ## is
                                                                                      ## opened.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Info
                                                                                      ## string
                                                                                      ## enumeration.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor.
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

  Aspect_XRSessionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Aspect_XRSession::get_type_name(@)",
                              header: "Aspect_XRSession.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_XRSession::get_type_descriptor(@)",
    header: "Aspect_XRSession.hxx".}
proc DynamicType*(this: Aspect_XRSession): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_XRSession.hxx".}
type
  Aspect_XRSessionTrackingUniverseOrigin* {.size: sizeof(cint),
      importcpp: "Aspect_XRSession::TrackingUniverseOrigin",
      header: "Aspect_XRSession.hxx".} = enum
    TrackingUniverseOrigin_Seated, ## ! poses are provided relative to the seated zero pose
    TrackingUniverseOrigin_Standing ## ! poses are provided relative to the safe bounds configured by the user


proc IsOpen*(this: Aspect_XRSession): bool {.noSideEffect, importcpp: "IsOpen",
    header: "Aspect_XRSession.hxx".}
proc Open*(this: var Aspect_XRSession): bool {.importcpp: "Open",
    header: "Aspect_XRSession.hxx".}
proc Close*(this: var Aspect_XRSession) {.importcpp: "Close",
                                      header: "Aspect_XRSession.hxx".}
proc WaitPoses*(this: var Aspect_XRSession): bool {.importcpp: "WaitPoses",
    header: "Aspect_XRSession.hxx".}
proc RecommendedViewport*(this: Aspect_XRSession): NCollection_Vec2[cint] {.
    noSideEffect, importcpp: "RecommendedViewport", header: "Aspect_XRSession.hxx".}
proc EyeToHeadTransform*(this: Aspect_XRSession; theEye: Aspect_Eye): NCollection_Mat4[
    cdouble] {.noSideEffect, importcpp: "EyeToHeadTransform",
              header: "Aspect_XRSession.hxx".}
proc HeadToEyeTransform*(this: Aspect_XRSession; theEye: Aspect_Eye): NCollection_Mat4[
    cdouble] {.noSideEffect, importcpp: "HeadToEyeTransform",
              header: "Aspect_XRSession.hxx".}
proc ProjectionMatrix*(this: Aspect_XRSession; theEye: Aspect_Eye; theZNear: cdouble;
                      theZFar: cdouble): NCollection_Mat4[cdouble] {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "Aspect_XRSession.hxx".}
proc HasProjectionFrustums*(this: Aspect_XRSession): bool {.noSideEffect,
    importcpp: "HasProjectionFrustums", header: "Aspect_XRSession.hxx".}
proc ProcessEvents*(this: var Aspect_XRSession) {.importcpp: "ProcessEvents",
    header: "Aspect_XRSession.hxx".}
proc SubmitEye*(this: var Aspect_XRSession; theTexture: pointer;
               theGraphicsLib: Aspect_GraphicsLibrary;
               theColorSpace: Aspect_ColorSpace; theEye: Aspect_Eye): bool {.
    importcpp: "SubmitEye", header: "Aspect_XRSession.hxx".}
proc UnitFactor*(this: Aspect_XRSession): Standard_Real {.noSideEffect,
    importcpp: "UnitFactor", header: "Aspect_XRSession.hxx".}
proc SetUnitFactor*(this: var Aspect_XRSession; theFactor: Standard_Real) {.
    importcpp: "SetUnitFactor", header: "Aspect_XRSession.hxx".}
proc Aspect*(this: Aspect_XRSession): Standard_Real {.noSideEffect,
    importcpp: "Aspect", header: "Aspect_XRSession.hxx".}
proc FieldOfView*(this: Aspect_XRSession): Standard_Real {.noSideEffect,
    importcpp: "FieldOfView", header: "Aspect_XRSession.hxx".}
proc IOD*(this: Aspect_XRSession): Standard_Real {.noSideEffect, importcpp: "IOD",
    header: "Aspect_XRSession.hxx".}
proc DisplayFrequency*(this: Aspect_XRSession): Standard_ShortReal {.noSideEffect,
    importcpp: "DisplayFrequency", header: "Aspect_XRSession.hxx".}
proc ProjectionFrustum*(this: Aspect_XRSession; theEye: Aspect_Eye): Aspect_FrustumLRBT[
    cdouble] {.noSideEffect, importcpp: "ProjectionFrustum",
              header: "Aspect_XRSession.hxx".}
proc HeadPose*(this: Aspect_XRSession): gp_Trsf {.noSideEffect,
    importcpp: "HeadPose", header: "Aspect_XRSession.hxx".}
proc LeftHandPose*(this: Aspect_XRSession): gp_Trsf {.noSideEffect,
    importcpp: "LeftHandPose", header: "Aspect_XRSession.hxx".}
proc RightHandPose*(this: Aspect_XRSession): gp_Trsf {.noSideEffect,
    importcpp: "RightHandPose", header: "Aspect_XRSession.hxx".}
proc TrackedPoses*(this: Aspect_XRSession): Aspect_TrackedDevicePoseArray {.
    noSideEffect, importcpp: "TrackedPoses", header: "Aspect_XRSession.hxx".}
proc HasTrackedPose*(this: Aspect_XRSession; theDevice: Standard_Integer): bool {.
    noSideEffect, importcpp: "HasTrackedPose", header: "Aspect_XRSession.hxx".}
proc NamedTrackedDevice*(this: Aspect_XRSession;
                        theDevice: Aspect_XRTrackedDeviceRole): Standard_Integer {.
    noSideEffect, importcpp: "NamedTrackedDevice", header: "Aspect_XRSession.hxx".}
proc LoadRenderModel*(this: var Aspect_XRSession; theDevice: Standard_Integer;
                     theTexture: var handle[Image_Texture]): handle[
    Graphic3d_ArrayOfTriangles] {.importcpp: "LoadRenderModel",
                                 header: "Aspect_XRSession.hxx".}
proc LoadRenderModel*(this: var Aspect_XRSession; theDevice: Standard_Integer;
                     theToApplyUnitFactor: Standard_Boolean;
                     theTexture: var handle[Image_Texture]): handle[
    Graphic3d_ArrayOfTriangles] {.importcpp: "LoadRenderModel",
                                 header: "Aspect_XRSession.hxx".}
proc GetDigitalActionData*(this: Aspect_XRSession;
                          theAction: handle[Aspect_XRAction]): Aspect_XRDigitalActionData {.
    noSideEffect, importcpp: "GetDigitalActionData", header: "Aspect_XRSession.hxx".}
proc GetAnalogActionData*(this: Aspect_XRSession;
                         theAction: handle[Aspect_XRAction]): Aspect_XRAnalogActionData {.
    noSideEffect, importcpp: "GetAnalogActionData", header: "Aspect_XRSession.hxx".}
proc GetPoseActionDataForNextFrame*(this: Aspect_XRSession;
                                   theAction: handle[Aspect_XRAction]): Aspect_XRPoseActionData {.
    noSideEffect, importcpp: "GetPoseActionDataForNextFrame",
    header: "Aspect_XRSession.hxx".}
proc TriggerHapticVibrationAction*(this: var Aspect_XRSession;
                                  theAction: handle[Aspect_XRAction];
                                  theParams: Aspect_XRHapticActionData) {.
    importcpp: "TriggerHapticVibrationAction", header: "Aspect_XRSession.hxx".}
proc AbortHapticVibrationAction*(this: var Aspect_XRSession;
                                theAction: handle[Aspect_XRAction]) {.
    importcpp: "AbortHapticVibrationAction", header: "Aspect_XRSession.hxx".}
proc TrackingOrigin*(this: Aspect_XRSession): Aspect_XRSessionTrackingUniverseOrigin {.
    noSideEffect, importcpp: "TrackingOrigin", header: "Aspect_XRSession.hxx".}
proc SetTrackingOrigin*(this: var Aspect_XRSession;
                       theOrigin: Aspect_XRSessionTrackingUniverseOrigin) {.
    importcpp: "SetTrackingOrigin", header: "Aspect_XRSession.hxx".}
proc GenericAction*(this: Aspect_XRSession; theDevice: Aspect_XRTrackedDeviceRole;
                   theAction: Aspect_XRGenericAction): handle[Aspect_XRAction] {.
    noSideEffect, importcpp: "GenericAction", header: "Aspect_XRSession.hxx".}
type
  Aspect_XRSessionInfoString* {.size: sizeof(cint),
                               importcpp: "Aspect_XRSession::InfoString",
                               header: "Aspect_XRSession.hxx".} = enum
    InfoString_Vendor, InfoString_Device, InfoString_Tracker,
    InfoString_SerialNumber


proc GetString*(this: Aspect_XRSession; theInfo: Aspect_XRSessionInfoString): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetString", header: "Aspect_XRSession.hxx".}