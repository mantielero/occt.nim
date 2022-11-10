import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import aspect_types
import ../../tkernel/ncollection/ncollection_types





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
                          header: "Aspect_OpenVRSession.hxx".}
proc newAspectOpenVRSession*(): AspectOpenVRSession {.cdecl, constructor,
    importcpp: "Aspect_OpenVRSession(@)", header: "Aspect_OpenVRSession.hxx".}
proc destroyAspectOpenVRSession*(this: var AspectOpenVRSession) {.cdecl,
    importcpp: "#.~Aspect_OpenVRSession()", header: "Aspect_OpenVRSession.hxx".}
proc isOpen*(this: AspectOpenVRSession): bool {.noSideEffect, cdecl,
    importcpp: "IsOpen", header: "Aspect_OpenVRSession.hxx".}
proc open*(this: var AspectOpenVRSession): bool {.cdecl, importcpp: "Open",
    header: "Aspect_OpenVRSession.hxx".}
proc close*(this: var AspectOpenVRSession) {.cdecl, importcpp: "Close",
    header: "Aspect_OpenVRSession.hxx".}
proc waitPoses*(this: var AspectOpenVRSession): bool {.cdecl, importcpp: "WaitPoses",
    header: "Aspect_OpenVRSession.hxx".}
proc recommendedViewport*(this: AspectOpenVRSession): NCollectionVec2[cint] {.
    noSideEffect, cdecl, importcpp: "RecommendedViewport", header: "Aspect_OpenVRSession.hxx".}
proc eyeToHeadTransform*(this: AspectOpenVRSession; theEye: AspectEye): NCollectionMat4[
    cdouble] {.noSideEffect, cdecl, importcpp: "EyeToHeadTransform",
              header: "Aspect_OpenVRSession.hxx".}
proc projectionMatrix*(this: AspectOpenVRSession; theEye: AspectEye;
                      theZNear: cdouble; theZFar: cdouble): NCollectionMat4[cdouble] {.
    noSideEffect, cdecl, importcpp: "ProjectionMatrix", header: "Aspect_OpenVRSession.hxx".}
proc hasProjectionFrustums*(this: AspectOpenVRSession): bool {.noSideEffect, cdecl,
    importcpp: "HasProjectionFrustums", header: "Aspect_OpenVRSession.hxx".}
proc processEvents*(this: var AspectOpenVRSession) {.cdecl,
    importcpp: "ProcessEvents", header: "Aspect_OpenVRSession.hxx".}
proc submitEye*(this: var AspectOpenVRSession; theTexture: pointer;
               theGraphicsLib: AspectGraphicsLibrary;
               theColorSpace: AspectColorSpace; theEye: AspectEye): bool {.cdecl,
    importcpp: "SubmitEye", header: "Aspect_OpenVRSession.hxx".}
proc getString*(this: AspectOpenVRSession; theInfo: InfoString): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetString", header: "Aspect_OpenVRSession.hxx".}
proc namedTrackedDevice*(this: AspectOpenVRSession;
                        theDevice: AspectXRTrackedDeviceRole): cint {.noSideEffect,
    cdecl, importcpp: "NamedTrackedDevice", header: "Aspect_OpenVRSession.hxx".}
proc getDigitalActionData*(this: AspectOpenVRSession;
                          theAction: Handle[AspectXRAction]): AspectXRDigitalActionData {.
    noSideEffect, cdecl, importcpp: "GetDigitalActionData", header: "Aspect_OpenVRSession.hxx".}
proc getAnalogActionData*(this: AspectOpenVRSession;
                         theAction: Handle[AspectXRAction]): AspectXRAnalogActionData {.
    noSideEffect, cdecl, importcpp: "GetAnalogActionData", header: "Aspect_OpenVRSession.hxx".}
proc getPoseActionDataForNextFrame*(this: AspectOpenVRSession;
                                   theAction: Handle[AspectXRAction]): AspectXRPoseActionData {.
    noSideEffect, cdecl, importcpp: "GetPoseActionDataForNextFrame",
    header: "Aspect_OpenVRSession.hxx".}
proc setTrackingOrigin*(this: var AspectOpenVRSession;
                       theOrigin: TrackingUniverseOrigin) {.cdecl,
    importcpp: "SetTrackingOrigin", header: "Aspect_OpenVRSession.hxx".}


