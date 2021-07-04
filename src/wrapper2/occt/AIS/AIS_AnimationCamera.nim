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

import
  AIS_Animation

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

  AIS_AnimationCamerabase_type* = AIS_Animation

proc get_type_name*(): cstring {.importcpp: "AIS_AnimationCamera::get_type_name(@)",
                              header: "AIS_AnimationCamera.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_AnimationCamera::get_type_descriptor(@)",
    header: "AIS_AnimationCamera.hxx".}
proc DynamicType*(this: AIS_AnimationCamera): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_AnimationCamera.hxx".}
proc constructAIS_AnimationCamera*(theAnimationName: TCollection_AsciiString;
                                  theView: handle[V3d_View]): AIS_AnimationCamera {.
    constructor, importcpp: "AIS_AnimationCamera(@)",
    header: "AIS_AnimationCamera.hxx".}
proc View*(this: AIS_AnimationCamera): handle[V3d_View] {.noSideEffect,
    importcpp: "View", header: "AIS_AnimationCamera.hxx".}
proc SetView*(this: var AIS_AnimationCamera; theView: handle[V3d_View]) {.
    importcpp: "SetView", header: "AIS_AnimationCamera.hxx".}
proc CameraStart*(this: AIS_AnimationCamera): handle[Graphic3d_Camera] {.
    noSideEffect, importcpp: "CameraStart", header: "AIS_AnimationCamera.hxx".}
proc SetCameraStart*(this: var AIS_AnimationCamera;
                    theCameraStart: handle[Graphic3d_Camera]) {.
    importcpp: "SetCameraStart", header: "AIS_AnimationCamera.hxx".}
proc CameraEnd*(this: AIS_AnimationCamera): handle[Graphic3d_Camera] {.noSideEffect,
    importcpp: "CameraEnd", header: "AIS_AnimationCamera.hxx".}
proc SetCameraEnd*(this: var AIS_AnimationCamera;
                  theCameraEnd: handle[Graphic3d_Camera]) {.
    importcpp: "SetCameraEnd", header: "AIS_AnimationCamera.hxx".}
discard "forward decl of AIS_AnimationCamera"
type
  Handle_AIS_AnimationCamera* = handle[AIS_AnimationCamera]
