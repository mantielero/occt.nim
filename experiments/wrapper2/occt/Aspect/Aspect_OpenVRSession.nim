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
  Aspect_XRSession

## ! OpenVR wrapper implementing Aspect_XRSession interface.

type
  Aspect_OpenVRSession* {.importcpp: "Aspect_OpenVRSession",
                         header: "Aspect_OpenVRSession.hxx", bycopy.} = object of Aspect_XRSession ##
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

  Aspect_OpenVRSessionbase_type* = Aspect_XRSession

proc get_type_name*(): cstring {.importcpp: "Aspect_OpenVRSession::get_type_name(@)",
                              header: "Aspect_OpenVRSession.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_OpenVRSession::get_type_descriptor(@)",
    header: "Aspect_OpenVRSession.hxx".}
proc DynamicType*(this: Aspect_OpenVRSession): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_OpenVRSession.hxx".}
proc IsHmdPresent*(): bool {.importcpp: "Aspect_OpenVRSession::IsHmdPresent(@)",
                          header: "Aspect_OpenVRSession.hxx".}
proc constructAspect_OpenVRSession*(): Aspect_OpenVRSession {.constructor,
    importcpp: "Aspect_OpenVRSession(@)", header: "Aspect_OpenVRSession.hxx".}
proc destroyAspect_OpenVRSession*(this: var Aspect_OpenVRSession) {.
    importcpp: "#.~Aspect_OpenVRSession()", header: "Aspect_OpenVRSession.hxx".}
proc IsOpen*(this: Aspect_OpenVRSession): bool {.noSideEffect, importcpp: "IsOpen",
    header: "Aspect_OpenVRSession.hxx".}
proc Open*(this: var Aspect_OpenVRSession): bool {.importcpp: "Open",
    header: "Aspect_OpenVRSession.hxx".}
proc Close*(this: var Aspect_OpenVRSession) {.importcpp: "Close",
    header: "Aspect_OpenVRSession.hxx".}
proc WaitPoses*(this: var Aspect_OpenVRSession): bool {.importcpp: "WaitPoses",
    header: "Aspect_OpenVRSession.hxx".}
proc RecommendedViewport*(this: Aspect_OpenVRSession): NCollection_Vec2[cint] {.
    noSideEffect, importcpp: "RecommendedViewport",
    header: "Aspect_OpenVRSession.hxx".}
proc EyeToHeadTransform*(this: Aspect_OpenVRSession; theEye: Aspect_Eye): NCollection_Mat4[
    cdouble] {.noSideEffect, importcpp: "EyeToHeadTransform",
              header: "Aspect_OpenVRSession.hxx".}
proc ProjectionMatrix*(this: Aspect_OpenVRSession; theEye: Aspect_Eye;
                      theZNear: cdouble; theZFar: cdouble): NCollection_Mat4[cdouble] {.
    noSideEffect, importcpp: "ProjectionMatrix", header: "Aspect_OpenVRSession.hxx".}
proc HasProjectionFrustums*(this: Aspect_OpenVRSession): bool {.noSideEffect,
    importcpp: "HasProjectionFrustums", header: "Aspect_OpenVRSession.hxx".}
proc ProcessEvents*(this: var Aspect_OpenVRSession) {.importcpp: "ProcessEvents",
    header: "Aspect_OpenVRSession.hxx".}
proc SubmitEye*(this: var Aspect_OpenVRSession; theTexture: pointer;
               theGraphicsLib: Aspect_GraphicsLibrary;
               theColorSpace: Aspect_ColorSpace; theEye: Aspect_Eye): bool {.
    importcpp: "SubmitEye", header: "Aspect_OpenVRSession.hxx".}
proc GetString*(this: Aspect_OpenVRSession; theInfo: InfoString): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetString", header: "Aspect_OpenVRSession.hxx".}
proc NamedTrackedDevice*(this: Aspect_OpenVRSession;
                        theDevice: Aspect_XRTrackedDeviceRole): Standard_Integer {.
    noSideEffect, importcpp: "NamedTrackedDevice",
    header: "Aspect_OpenVRSession.hxx".}
proc GetDigitalActionData*(this: Aspect_OpenVRSession;
                          theAction: handle[Aspect_XRAction]): Aspect_XRDigitalActionData {.
    noSideEffect, importcpp: "GetDigitalActionData",
    header: "Aspect_OpenVRSession.hxx".}
proc GetAnalogActionData*(this: Aspect_OpenVRSession;
                         theAction: handle[Aspect_XRAction]): Aspect_XRAnalogActionData {.
    noSideEffect, importcpp: "GetAnalogActionData",
    header: "Aspect_OpenVRSession.hxx".}
proc GetPoseActionDataForNextFrame*(this: Aspect_OpenVRSession;
                                   theAction: handle[Aspect_XRAction]): Aspect_XRPoseActionData {.
    noSideEffect, importcpp: "GetPoseActionDataForNextFrame",
    header: "Aspect_OpenVRSession.hxx".}
proc SetTrackingOrigin*(this: var Aspect_OpenVRSession;
                       theOrigin: TrackingUniverseOrigin) {.
    importcpp: "SetTrackingOrigin", header: "Aspect_OpenVRSession.hxx".}