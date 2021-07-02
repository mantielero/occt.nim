type
  AspectXRHapticActionData* {.importcpp: "Aspect_XRHapticActionData",
                             header: "Aspect_XRHapticActionData.hxx", bycopy.} = object
    delay* {.importc: "Delay".}: cfloat
    duration* {.importc: "Duration".}: cfloat
    frequency* {.importc: "Frequency".}: cfloat
    amplitude* {.importc: "Amplitude".}: cfloat


proc isValid*(this: AspectXRHapticActionData): bool {.noSideEffect,
    importcpp: "IsValid", header: "Aspect_XRHapticActionData.hxx".}
proc constructAspectXRHapticActionData*(): AspectXRHapticActionData {.constructor,
    importcpp: "Aspect_XRHapticActionData(@)",
    header: "Aspect_XRHapticActionData.hxx".}