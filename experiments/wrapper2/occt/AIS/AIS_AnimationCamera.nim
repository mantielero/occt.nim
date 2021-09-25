##  Created by: Anastasia BORISOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

discard "forward decl of Graphic3d_Camera"
discard "forward decl of V3d_View"
type
  AIS_AnimationCamera* {.importcpp: "AIS_AnimationCamera",
                        header: "AIS_AnimationCamera.hxx", bycopy.} = object of AIS_Animation ##
                                                                                       ## !
                                                                                       ## Main
                                                                                       ## constructor.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Update
                                                                                       ## the
                                                                                       ## progress.
    ## !< view to setup camera
    ## !< starting camera position
    ## !< end camera position

  AIS_AnimationCamerabaseType* = AIS_Animation

proc getTypeName*(): cstring {.importcpp: "AIS_AnimationCamera::get_type_name(@)",
                            header: "AIS_AnimationCamera.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_AnimationCamera::get_type_descriptor(@)",
    header: "AIS_AnimationCamera.hxx".}
proc dynamicType*(this: AIS_AnimationCamera): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_AnimationCamera.hxx".}
proc constructAIS_AnimationCamera*(theAnimationName: TCollectionAsciiString;
                                  theView: Handle[V3dView]): AIS_AnimationCamera {.
    constructor, importcpp: "AIS_AnimationCamera(@)",
    header: "AIS_AnimationCamera.hxx".}
proc view*(this: AIS_AnimationCamera): Handle[V3dView] {.noSideEffect,
    importcpp: "View", header: "AIS_AnimationCamera.hxx".}
proc setView*(this: var AIS_AnimationCamera; theView: Handle[V3dView]) {.
    importcpp: "SetView", header: "AIS_AnimationCamera.hxx".}
proc cameraStart*(this: AIS_AnimationCamera): Handle[Graphic3dCamera] {.
    noSideEffect, importcpp: "CameraStart", header: "AIS_AnimationCamera.hxx".}
proc setCameraStart*(this: var AIS_AnimationCamera;
                    theCameraStart: Handle[Graphic3dCamera]) {.
    importcpp: "SetCameraStart", header: "AIS_AnimationCamera.hxx".}
proc cameraEnd*(this: AIS_AnimationCamera): Handle[Graphic3dCamera] {.noSideEffect,
    importcpp: "CameraEnd", header: "AIS_AnimationCamera.hxx".}
proc setCameraEnd*(this: var AIS_AnimationCamera;
                  theCameraEnd: Handle[Graphic3dCamera]) {.
    importcpp: "SetCameraEnd", header: "AIS_AnimationCamera.hxx".}
discard "forward decl of AIS_AnimationCamera"
type
  HandleAIS_AnimationCamera* = Handle[AIS_AnimationCamera]

