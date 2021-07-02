type
  AspectXRGenericAction* {.size: sizeof(cint), importcpp: "Aspect_XRGenericAction",
                          header: "Aspect_XRGenericAction.hxx".} = enum
    AspectXRGenericActionIsHeadsetOn, AspectXRGenericActionInputAppMenu,
    AspectXRGenericActionInputSysMenu, AspectXRGenericActionInputTriggerPull,
    AspectXRGenericActionInputTriggerClick, AspectXRGenericActionInputGripClick,
    AspectXRGenericActionInputTrackPadPosition,
    AspectXRGenericActionInputTrackPadTouch,
    AspectXRGenericActionInputTrackPadClick,
    AspectXRGenericActionInputThumbstickPosition,
    AspectXRGenericActionInputThumbstickTouch,
    AspectXRGenericActionInputThumbstickClick,
    AspectXRGenericActionInputPoseBase, AspectXRGenericActionInputPoseFront,
    AspectXRGenericActionInputPoseHandGrip,
    AspectXRGenericActionInputPoseFingerTip, AspectXRGenericActionOutputHaptic


const
  AspectXRGenericActionNB* = aspectXRGenericActionOutputHaptic + 1
