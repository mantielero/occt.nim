type
  AspectTypeOfTriedronPosition* {.size: sizeof(cint),
                                 importcpp: "Aspect_TypeOfTriedronPosition",
                                 header: "Aspect_TypeOfTriedronPosition.hxx".} = enum
    AspectTOTP_CENTER = 0x0000, AspectTOTP_TOP = 0x0001, AspectTOTP_BOTTOM = 0x0002,
    AspectTOTP_LEFT = 0x0004, AspectTOTP_RIGHT = 0x0008,
    AspectTOTP_LEFT_LOWER = aspectTOTP_BOTTOM or aspectTOTP_LEFT,
    AspectTOTP_LEFT_UPPER = aspectTOTP_TOP or aspectTOTP_LEFT,
    AspectTOTP_RIGHT_LOWER = aspectTOTP_BOTTOM or aspectTOTP_RIGHT,
    AspectTOTP_RIGHT_UPPER = aspectTOTP_TOP or aspectTOTP_RIGHT

