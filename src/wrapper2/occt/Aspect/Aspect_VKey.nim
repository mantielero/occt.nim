type
  AspectVKeyFlags* = cuint

const
  AspectVKeyFlagsNONE* = 0
  AspectVKeyFlagsSHIFT* = 1 shl 8
  AspectVKeyFlagsCTRL* = 1 shl 9
  AspectVKeyFlagsALT* = 1 shl 10
  AspectVKeyFlagsMENU* = 1 shl 11
  AspectVKeyFlagsMETA* = 1 shl 12
  AspectVKeyFlagsALL* = AspectVKeyFlagsSHIFT or AspectVKeyFlagsCTRL or
      AspectVKeyFlagsALT or AspectVKeyFlagsMENU or AspectVKeyFlagsMETA

type
  AspectVKeyMouse* = cuint

const
  AspectVKeyMouseNONE* = 0
  AspectVKeyMouseLeftButton* = 1 shl 13
  AspectVKeyMouseMiddleButton* = 1 shl 14
  AspectVKeyMouseRightButton* = 1 shl 15
  AspectVKeyMouseMainButtons* = AspectVKeyMouseLeftButton or
      AspectVKeyMouseMiddleButton or AspectVKeyMouseRightButton

type
  AspectVKey* = cuint
  AspectVKeyBasic* {.size: sizeof(cint), importcpp: "Aspect_VKeyBasic",
                    header: "Aspect_VKey.hxx".} = enum
    AspectVKeyUNKNOWN = 0, AspectVKeyA = 1, AspectVKeyB, AspectVKeyC, AspectVKeyD,
    AspectVKeyE, AspectVKeyF, AspectVKeyG, AspectVKeyH, AspectVKeyI, AspectVKeyJ,
    AspectVKeyK, AspectVKeyL, AspectVKeyM, AspectVKeyN, AspectVKeyO, AspectVKeyP,
    AspectVKeyQ, AspectVKeyR, AspectVKeyS, AspectVKeyT, AspectVKeyU, AspectVKeyV,
    AspectVKeyW, AspectVKeyX, AspectVKeyY, AspectVKeyZ, AspectVKey0, AspectVKey1,
    AspectVKey2, AspectVKey3, AspectVKey4, AspectVKey5, AspectVKey6, AspectVKey7,
    AspectVKey8, AspectVKey9, AspectVKeyF1, AspectVKeyF2, AspectVKeyF3, AspectVKeyF4,
    AspectVKeyF5, AspectVKeyF6, AspectVKeyF7, AspectVKeyF8, AspectVKeyF9,
    AspectVKeyF10, AspectVKeyF11, AspectVKeyF12, AspectVKeyUp, AspectVKeyDown,
    AspectVKeyLeft, AspectVKeyRight, AspectVKeyPlus, AspectVKeyMinus,
    AspectVKeyEqual, AspectVKeyPageUp, AspectVKeyPageDown, AspectVKeyHome,
    AspectVKeyEnd, AspectVKeyEscape, AspectVKeyBack, AspectVKeyEnter,
    AspectVKeyBackspace, AspectVKeySpace, AspectVKeyDelete, AspectVKeyTilde,
    AspectVKeyTab, AspectVKeyComma, AspectVKeyPeriod, AspectVKeySemicolon,
    AspectVKeySlash, AspectVKeyBracketLeft, AspectVKeyBackslash,
    AspectVKeyBracketRight, AspectVKeyApostrophe, AspectVKeyNumlock,
    AspectVKeyScroll, AspectVKeyNumpad0, AspectVKeyNumpad1, AspectVKeyNumpad2,
    AspectVKeyNumpad3, AspectVKeyNumpad4, AspectVKeyNumpad5, AspectVKeyNumpad6,
    AspectVKeyNumpad7, AspectVKeyNumpad8, AspectVKeyNumpad9,
    AspectVKeyNumpadMultiply, AspectVKeyNumpadAdd, AspectVKeyNumpadSubtract,
    AspectVKeyNumpadDivide, AspectVKeyMediaNextTrack,
    AspectVKeyMediaPreviousTrack, AspectVKeyMediaStop, AspectVKeyMediaPlayPause,
    AspectVKeyVolumeMute, AspectVKeyVolumeDown, AspectVKeyVolumeUp,
    AspectVKeyBrowserBack, AspectVKeyBrowserForward, AspectVKeyBrowserRefresh,
    AspectVKeyBrowserStop, AspectVKeyBrowserSearch, AspectVKeyBrowserFavorites,
    AspectVKeyBrowserHome, AspectVKeyViewTop, AspectVKeyViewBottom,
    AspectVKeyViewLeft, AspectVKeyViewRight, AspectVKeyViewFront,
    AspectVKeyViewBack, AspectVKeyViewAxoLeftProj, AspectVKeyViewAxoRightProj,
    AspectVKeyViewFitAll, AspectVKeyViewRoll90CW, AspectVKeyViewRoll90CCW,
    AspectVKeyViewSwitchRotate, AspectVKeyShift, AspectVKeyControl, AspectVKeyAlt,
    AspectVKeyMenu, AspectVKeyMeta, AspectVKeyNavInteract, AspectVKeyNavForward,
    AspectVKeyNavBackward, AspectVKeyNavSlideLeft, AspectVKeyNavSlideRight,
    AspectVKeyNavSlideUp, AspectVKeyNavSlideDown, AspectVKeyNavRollCCW,
    AspectVKeyNavRollCW, AspectVKeyNavLookLeft, AspectVKeyNavLookRight,
    AspectVKeyNavLookUp, AspectVKeyNavLookDown, AspectVKeyNavCrouch,
    AspectVKeyNavJump, AspectVKeyNavThrustForward, AspectVKeyNavThrustBackward,
    AspectVKeyNavThrustStop, AspectVKeyNavSpeedIncrease,
    AspectVKeyNavSpeedDecrease


const
  AspectVKeyLower* = 0
  AspectVKeyModifiersLower* = aspectVKeyShift
  AspectVKeyModifiersUpper* = aspectVKeyMeta
  AspectVKeyNavigationKeysLower* = aspectVKeyNavInteract
  AspectVKeyNavigationKeysUpper* = aspectVKeyNavSpeedDecrease
  AspectVKeyUpper* = aspectVKeyNavSpeedDecrease
  AspectVKeyNB* = AspectVKeyUpper - AspectVKeyLower + 1
  AspectVKeyMAX* = 255

proc aspectVKey2Modifier*(theKey: AspectVKey): AspectVKeyFlags =
  discard
