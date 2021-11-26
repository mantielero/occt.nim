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

type
  AspectOpenVRSession* {.importcpp: "Aspect_OpenVRSession",
                        header: "Aspect_OpenVRSession.hxx", bycopy.} = object of AspectXRSession ##
                                                                                          ## !
                                                                                          ## Return
                                                                                          ## TRUE
                                                                                          ## if
                                                                                          ## an
                                                                                          ## HMD
                                                                                          ## may
                                                                                          ## be
                                                                                          ## presented
                                                                                          ## on
                                                                                          ## the
                                                                                          ## system
                                                                                          ## (e.g.
                                                                                          ## to
                                                                                          ## show
                                                                                          ## VR
                                                                                          ## checkbox
                                                                                          ## in
                                                                                          ## application
                                                                                          ## GUI).
                                                                                          ##
                                                                                          ## !
                                                                                          ## This
                                                                                          ## is
                                                                                          ## fast
                                                                                          ## check,
                                                                                          ## and
                                                                                          ## even
                                                                                          ## if
                                                                                          ## it
                                                                                          ## returns
                                                                                          ## TRUE,
                                                                                          ## opening
                                                                                          ## session
                                                                                          ## may
                                                                                          ## fail.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Find
                                                                                          ## location
                                                                                          ## of
                                                                                          ## default
                                                                                          ## actions
                                                                                          ## manifest
                                                                                          ## file
                                                                                          ## (based
                                                                                          ## on
                                                                                          ## CSF_OCCTResourcePath
                                                                                          ## or
                                                                                          ## CASROOT
                                                                                          ## variables).
                                                                                          ##
                                                                                          ## !
                                                                                          ## Access
                                                                                          ## vr::IVRSystem*
                                                                                          ## -
                                                                                          ## OpenVR
                                                                                          ## session
                                                                                          ## object.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Internal
                                                                                          ## fields

  AspectOpenVRSessionbaseType* = AspectXRSession

proc getTypeName*(): cstring {.importcpp: "Aspect_OpenVRSession::get_type_name(@)",
                            header: "Aspect_OpenVRSession.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_OpenVRSession::get_type_descriptor(@)",
    header: "Aspect_OpenVRSession.hxx".}
proc dynamicType*(this: AspectOpenVRSession): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_OpenVRSession.hxx".}
proc isHmdPresent*(): bool {.importcpp: "Aspect_OpenVRSession::IsHmdPresent(@)",
                          header: "Aspect_OpenVRSession.hxx".}
proc constructAspectOpenVRSession*(): AspectOpenVRSession {.constructor,
    importcpp: "Aspect_OpenVRSession(@)", header: "Aspect_OpenVRSession.hxx".}
proc destroyAspectOpenVRSession*(this: var AspectOpenVRSession) {.
    importcpp: "#.~Aspect_OpenVRSession()", header: "Aspect_OpenVRSession.hxx".}
proc isOpen*(this: AspectOpenVRSession): bool {.noSideEffect, importcpp: "IsOpen",
    header: "Aspect_OpenVRSession.hxx".}
proc open*(this: var AspectOpenVRSession): bool {.importcpp: "Open",
    header: "Aspect_OpenVRSession.hxx".}
proc close*(this: var AspectOpenVRSession) {.importcpp: "Close",
    header: "Aspect_OpenVRSession.hxx".}
proc waitPoses*(this: var AspectOpenVRSession): bool {.importcpp: "WaitPoses",
    header: "Aspect_OpenVRSession.hxx".}
proc recommendedViewport*(this: AspectOpenVRSession): NCollectionVec2[cint] {.
    noSideEffect, importcpp: "RecommendedViewport",
    header: "Aspect_OpenVRSession.hxx".}
proc eyeToHeadTransform*(this: AspectOpenVRSession; theEye: AspectEye): NCollectionMat4[
    cdouble] {.noSideEffect, importcpp: "EyeToHeadTransform",
              header: "Aspect_OpenVRSession.hxx".}
proc projectionMatrix*(this: AspectOpenVRSession; theEye: AspectEye;
                      theZNear: cdouble; theZFar: cdouble): NCollectionMat4[cdouble] {.
    noSideEffect, importcpp: "ProjectionMatrix", header: "Aspect_OpenVRSession.hxx".}
proc hasProjectionFrustums*(this: AspectOpenVRSession): bool {.noSideEffect,
    importcpp: "HasProjectionFrustums", header: "Aspect_OpenVRSession.hxx".}
proc processEvents*(this: var AspectOpenVRSession) {.importcpp: "ProcessEvents",
    header: "Aspect_OpenVRSession.hxx".}
proc submitEye*(this: var AspectOpenVRSession; theTexture: pointer;
               theGraphicsLib: AspectGraphicsLibrary;
               theColorSpace: AspectColorSpace; theEye: AspectEye): bool {.
    importcpp: "SubmitEye", header: "Aspect_OpenVRSession.hxx".}
proc getString*(this: AspectOpenVRSession; theInfo: InfoString): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetString", header: "Aspect_OpenVRSession.hxx".}
proc namedTrackedDevice*(this: AspectOpenVRSession;
                        theDevice: AspectXRTrackedDeviceRole): cint {.noSideEffect,
    importcpp: "NamedTrackedDevice", header: "Aspect_OpenVRSession.hxx".}
proc getDigitalActionData*(this: AspectOpenVRSession;
                          theAction: Handle[AspectXRAction]): AspectXRDigitalActionData {.
    noSideEffect, importcpp: "GetDigitalActionData",
    header: "Aspect_OpenVRSession.hxx".}
proc getAnalogActionData*(this: AspectOpenVRSession;
                         theAction: Handle[AspectXRAction]): AspectXRAnalogActionData {.
    noSideEffect, importcpp: "GetAnalogActionData",
    header: "Aspect_OpenVRSession.hxx".}
proc getPoseActionDataForNextFrame*(this: AspectOpenVRSession;
                                   theAction: Handle[AspectXRAction]): AspectXRPoseActionData {.
    noSideEffect, importcpp: "GetPoseActionDataForNextFrame",
    header: "Aspect_OpenVRSession.hxx".}
proc setTrackingOrigin*(this: var AspectOpenVRSession;
                       theOrigin: TrackingUniverseOrigin) {.
    importcpp: "SetTrackingOrigin", header: "Aspect_OpenVRSession.hxx".}

























