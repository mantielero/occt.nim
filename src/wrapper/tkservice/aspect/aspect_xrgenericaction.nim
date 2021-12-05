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
    aspectXRGenericActionIsHeadsetOn, ## !< headset is on/off head
    aspectXRGenericActionInputAppMenu, ## !< application menu button pressed/released
    aspectXRGenericActionInputSysMenu, ## !< system menu button pressed/released
    aspectXRGenericActionInputTriggerPull, ## !< trigger squeezing [0..1], 1 to click
    aspectXRGenericActionInputTriggerClick, ## !< trigger clicked/released
    aspectXRGenericActionInputGripClick, ## !< grip state on/off
    aspectXRGenericActionInputTrackPadPosition, ## !< trackpad 2D position [-1,+1] with X and Y axes
    aspectXRGenericActionInputTrackPadTouch, ## !< trackpad touched/untouched
    aspectXRGenericActionInputTrackPadClick, ## !< trackpad clicked/released
    aspectXRGenericActionInputThumbstickPosition, ## !< thumbstick 2D position [-1,+1] with X and Y axes
    aspectXRGenericActionInputThumbstickTouch, ## !< thumbstick touched/untouched
    aspectXRGenericActionInputThumbstickClick, ## !< thumbstick clicked/released
    aspectXRGenericActionInputPoseBase, ## !< base position of hand
    aspectXRGenericActionInputPoseFront, ## !< front position of hand
    aspectXRGenericActionInputPoseHandGrip, ## !< position of main handgrip
    aspectXRGenericActionInputPoseFingerTip, ## !< position of main fingertip
    aspectXRGenericActionOutputHaptic ## !< haptic output (vibration)


const
  AspectXRGenericActionNB* = aspectXRGenericActionOutputHaptic.int + 1
