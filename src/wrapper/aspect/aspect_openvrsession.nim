import ../tcollection/tcollection_types
import ../standard/standard_types
import aspect_types
import ../ncollection/ncollection_types





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

## ! OpenVR wrapper implementing Aspect_XRSession interface.



proc isHmdPresent*(): bool {.cdecl,
                          importcpp: "Aspect_OpenVRSession::IsHmdPresent(@)",
                          .}
proc newAspectOpenVRSession*(): AspectOpenVRSession {.cdecl, constructor,
    importcpp: "Aspect_OpenVRSession(@)".}
proc destroyAspectOpenVRSession*(this: var AspectOpenVRSession) {.cdecl,
    importcpp: "#.~Aspect_OpenVRSession()".}
proc isOpen*(this: AspectOpenVRSession): bool {.noSideEffect, cdecl,
    importcpp: "IsOpen".}
proc open*(this: var AspectOpenVRSession): bool {.cdecl, importcpp: "Open",
    .}
proc close*(this: var AspectOpenVRSession) {.cdecl, importcpp: "Close",
    .}
proc waitPoses*(this: var AspectOpenVRSession): bool {.cdecl, importcpp: "WaitPoses",
    .}
proc recommendedViewport*(this: AspectOpenVRSession): NCollectionVec2[cint] {.
    noSideEffect, cdecl, importcpp: "RecommendedViewport".}
proc eyeToHeadTransform*(this: AspectOpenVRSession; theEye: AspectEye): NCollectionMat4[
    cdouble] {.noSideEffect, cdecl, importcpp: "EyeToHeadTransform",
              .}
proc projectionMatrix*(this: AspectOpenVRSession; theEye: AspectEye;
                      theZNear: cdouble; theZFar: cdouble): NCollectionMat4[cdouble] {.
    noSideEffect, cdecl, importcpp: "ProjectionMatrix".}
proc hasProjectionFrustums*(this: AspectOpenVRSession): bool {.noSideEffect, cdecl,
    importcpp: "HasProjectionFrustums".}
proc processEvents*(this: var AspectOpenVRSession) {.cdecl,
    importcpp: "ProcessEvents".}
proc submitEye*(this: var AspectOpenVRSession; theTexture: pointer;
               theGraphicsLib: AspectGraphicsLibrary;
               theColorSpace: AspectColorSpace; theEye: AspectEye): bool {.cdecl,
    importcpp: "SubmitEye".}
proc getString*(this: AspectOpenVRSession; theInfo: InfoString): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetString".}
proc namedTrackedDevice*(this: AspectOpenVRSession;
                        theDevice: AspectXRTrackedDeviceRole): cint {.noSideEffect,
    cdecl, importcpp: "NamedTrackedDevice".}
proc getDigitalActionData*(this: AspectOpenVRSession;
                          theAction: Handle[AspectXRAction]): AspectXRDigitalActionData {.
    noSideEffect, cdecl, importcpp: "GetDigitalActionData".}
proc getAnalogActionData*(this: AspectOpenVRSession;
                         theAction: Handle[AspectXRAction]): AspectXRAnalogActionData {.
    noSideEffect, cdecl, importcpp: "GetAnalogActionData".}
proc getPoseActionDataForNextFrame*(this: AspectOpenVRSession;
                                   theAction: Handle[AspectXRAction]): AspectXRPoseActionData {.
    noSideEffect, cdecl, importcpp: "GetPoseActionDataForNextFrame",
    .}
proc setTrackingOrigin*(this: var AspectOpenVRSession;
                       theOrigin: TrackingUniverseOrigin) {.cdecl,
    importcpp: "SetTrackingOrigin".}


