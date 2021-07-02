type
  AspectXRActionType* {.size: sizeof(cint), importcpp: "Aspect_XRActionType",
                       header: "Aspect_XRActionType.hxx".} = enum
    AspectXRActionTypeInputDigital, AspectXRActionTypeInputAnalog,
    AspectXRActionTypeInputPose, AspectXRActionTypeInputSkeletal,
    AspectXRActionTypeOutputHaptic

