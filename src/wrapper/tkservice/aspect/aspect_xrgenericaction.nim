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

## ! Generic XR action.

type
  AspectXRGenericAction* {.size: sizeof(cint), importcpp: "Aspect_XRGenericAction",
                          header: "Aspect_XRGenericAction.hxx".} = enum
    AspectXRGenericActionIsHeadsetOn, ## !< headset is on/off head
    AspectXRGenericActionInputAppMenu, ## !< application menu button pressed/released
    AspectXRGenericActionInputSysMenu, ## !< system menu button pressed/released
    AspectXRGenericActionInputTriggerPull, ## !< trigger squeezing [0..1], 1 to click
    AspectXRGenericActionInputTriggerClick, ## !< trigger clicked/released
    AspectXRGenericActionInputGripClick, ## !< grip state on/off
    AspectXRGenericActionInputTrackPadPosition, ## !< trackpad 2D position [-1,+1] with X and Y axes
    AspectXRGenericActionInputTrackPadTouch, ## !< trackpad touched/untouched
    AspectXRGenericActionInputTrackPadClick, ## !< trackpad clicked/released
    AspectXRGenericActionInputThumbstickPosition, ## !< thumbstick 2D position [-1,+1] with X and Y axes
    AspectXRGenericActionInputThumbstickTouch, ## !< thumbstick touched/untouched
    AspectXRGenericActionInputThumbstickClick, ## !< thumbstick clicked/released
    AspectXRGenericActionInputPoseBase, ## !< base position of hand
    AspectXRGenericActionInputPoseFront, ## !< front position of hand
    AspectXRGenericActionInputPoseHandGrip, ## !< position of main handgrip
    AspectXRGenericActionInputPoseFingerTip, ## !< position of main fingertip
    AspectXRGenericActionOutputHaptic ## !< haptic output (vibration)


const
  AspectXRGenericActionNB* = aspectXRGenericActionOutputHaptic + 1
