type
  AspectXRTrackedDeviceRole* {.size: sizeof(cint),
                              importcpp: "Aspect_XRTrackedDeviceRole",
                              header: "Aspect_XRTrackedDeviceRole.hxx".} = enum
    AspectXRTrackedDeviceRoleHead, AspectXRTrackedDeviceRoleLeftHand,
    AspectXRTrackedDeviceRoleRightHand, AspectXRTrackedDeviceRoleOther


const
  AspectXRTrackedDeviceRoleNB* = aspectXRTrackedDeviceRoleOther + 1
