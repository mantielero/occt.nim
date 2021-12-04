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


proc newAIS_AnimationCamera*(theAnimationName: TCollectionAsciiString;
                            theView: Handle[V3dView]): AIS_AnimationCamera {.cdecl,
    constructor, importcpp: "AIS_AnimationCamera(@)", header: "AIS_AnimationCamera.hxx".}
proc view*(this: AIS_AnimationCamera): Handle[V3dView] {.noSideEffect, cdecl,
    importcpp: "View", header: "AIS_AnimationCamera.hxx".}
proc setView*(this: var AIS_AnimationCamera; theView: Handle[V3dView]) {.cdecl,
    importcpp: "SetView", header: "AIS_AnimationCamera.hxx".}
proc cameraStart*(this: AIS_AnimationCamera): Handle[Graphic3dCamera] {.
    noSideEffect, cdecl, importcpp: "CameraStart", header: "AIS_AnimationCamera.hxx".}
proc setCameraStart*(this: var AIS_AnimationCamera;
                    theCameraStart: Handle[Graphic3dCamera]) {.cdecl,
    importcpp: "SetCameraStart", header: "AIS_AnimationCamera.hxx".}
proc cameraEnd*(this: AIS_AnimationCamera): Handle[Graphic3dCamera] {.noSideEffect,
    cdecl, importcpp: "CameraEnd", header: "AIS_AnimationCamera.hxx".}
proc setCameraEnd*(this: var AIS_AnimationCamera;
                  theCameraEnd: Handle[Graphic3dCamera]) {.cdecl,
    importcpp: "SetCameraEnd", header: "AIS_AnimationCamera.hxx".}
type
  HandleAIS_AnimationCamera* = Handle[AIS_AnimationCamera]
