##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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

## ! Define virtual key as integer number to allow extensions.

type
  AspectVKey* = cuint

## ! Enumeration defining virtual keys irrelevant to current keyboard layout for simplified hot-keys management logic.

type
  AspectVKeyBasic* {.size: sizeof(cint), importcpp: "Aspect_VKeyBasic",
                    header: "Aspect_VKey.hxx".} = enum
    AspectVKeyUNKNOWN = 0,      ##  main latin alphabet keys
    AspectVKeyA = 1, AspectVKeyB, AspectVKeyC, AspectVKeyD, AspectVKeyE, AspectVKeyF,
    AspectVKeyG, AspectVKeyH, AspectVKeyI, AspectVKeyJ, AspectVKeyK, AspectVKeyL,
    AspectVKeyM, AspectVKeyN, AspectVKeyO, AspectVKeyP, AspectVKeyQ, AspectVKeyR,
    AspectVKeyS, AspectVKeyT, AspectVKeyU, AspectVKeyV, AspectVKeyW, AspectVKeyX,
    AspectVKeyY, AspectVKeyZ, AspectVKey0, AspectVKey1, AspectVKey2, AspectVKey3,
    AspectVKey4, AspectVKey5, AspectVKey6, AspectVKey7, AspectVKey8, AspectVKey9,
    AspectVKeyF1, AspectVKeyF2, AspectVKeyF3, AspectVKeyF4, AspectVKeyF5,
    AspectVKeyF6, AspectVKeyF7, AspectVKeyF8, AspectVKeyF9, AspectVKeyF10,
    AspectVKeyF11, AspectVKeyF12, ##  standard keys
    AspectVKeyUp, AspectVKeyDown, AspectVKeyLeft, AspectVKeyRight, AspectVKeyPlus, ## !< '+'
    AspectVKeyMinus,          ## !< '-'
    AspectVKeyEqual,          ## !< '=+'
    AspectVKeyPageUp, AspectVKeyPageDown, AspectVKeyHome, AspectVKeyEnd,
    AspectVKeyEscape, AspectVKeyBack, AspectVKeyEnter, AspectVKeyBackspace,
    AspectVKeySpace, AspectVKeyDelete, AspectVKeyTilde, AspectVKeyTab, AspectVKeyComma, ## !< ','
    AspectVKeyPeriod,         ## !< '.'
    AspectVKeySemicolon,      ## !< ';:'
    AspectVKeySlash,          ## !< '/?'
    AspectVKeyBracketLeft,    ## !< '[{'
    AspectVKeyBackslash,      ## !< '\|'
    AspectVKeyBracketRight,   ## !< ']}'
    AspectVKeyApostrophe,     ## !< ''"'
    AspectVKeyNumlock,        ## !< Num Lock key
    AspectVKeyScroll,         ## !< Scroll Lock key
                     ##  numpad keys
    AspectVKeyNumpad0, AspectVKeyNumpad1, AspectVKeyNumpad2, AspectVKeyNumpad3,
    AspectVKeyNumpad4, AspectVKeyNumpad5, AspectVKeyNumpad6, AspectVKeyNumpad7,
    AspectVKeyNumpad8, AspectVKeyNumpad9, AspectVKeyNumpadMultiply, ## !< numpad '*'
    AspectVKeyNumpadAdd,      ## !< numpad '+'
    AspectVKeyNumpadSubtract, ## !< numpad '-'
    AspectVKeyNumpadDivide,   ## !< numpad '/'
                           ##  Multimedia keys
    AspectVKeyMediaNextTrack, AspectVKeyMediaPreviousTrack, AspectVKeyMediaStop,
    AspectVKeyMediaPlayPause, AspectVKeyVolumeMute, AspectVKeyVolumeDown,
    AspectVKeyVolumeUp, AspectVKeyBrowserBack, AspectVKeyBrowserForward,
    AspectVKeyBrowserRefresh, AspectVKeyBrowserStop, AspectVKeyBrowserSearch,
    AspectVKeyBrowserFavorites, AspectVKeyBrowserHome, ##  3d view keys
    AspectVKeyViewTop, AspectVKeyViewBottom, AspectVKeyViewLeft,
    AspectVKeyViewRight, AspectVKeyViewFront, AspectVKeyViewBack,
    AspectVKeyViewAxoLeftProj, AspectVKeyViewAxoRightProj, AspectVKeyViewFitAll,
    AspectVKeyViewRoll90CW, AspectVKeyViewRoll90CCW, AspectVKeyViewSwitchRotate, ##  modifier keys, @sa Aspect_VKey_ModifiersLower and Aspect_VKey_ModifiersUpper below
    AspectVKeyShift, AspectVKeyControl, AspectVKeyAlt, AspectVKeyMenu, AspectVKeyMeta, ##  virtual navigation keys, @sa Aspect_VKey_NavigationKeysLower and Aspect_VKey_NavigationKeysUpper below
    AspectVKeyNavInteract,    ## !< interact
    AspectVKeyNavForward,     ## !< go forward
    AspectVKeyNavBackward,    ## !< go backward
    AspectVKeyNavSlideLeft,   ## !< sidewalk, left
    AspectVKeyNavSlideRight,  ## !< sidewalk, right
    AspectVKeyNavSlideUp,     ## !< lift up
    AspectVKeyNavSlideDown,   ## !< fall down
    AspectVKeyNavRollCCW,     ## !< bank left  (roll counter-clockwise)
    AspectVKeyNavRollCW,      ## !< bank right (roll clockwise)
    AspectVKeyNavLookLeft,    ## !< look left  (yaw counter-clockwise)
    AspectVKeyNavLookRight,   ## !< look right (yaw clockwise)
    AspectVKeyNavLookUp,      ## !< look up    (pitch clockwise)
    AspectVKeyNavLookDown,    ## !< look down  (pitch counter-clockwise)
    AspectVKeyNavCrouch,      ## !< crouch walking
    AspectVKeyNavJump,        ## !< jump
    AspectVKeyNavThrustForward, ## !< increase continuous velocity in forward  direction
    AspectVKeyNavThrustBackward, ## !< increase continuous velocity in reversed direction
    AspectVKeyNavThrustStop,  ## !< reset continuous velocity
    AspectVKeyNavSpeedIncrease, ## !< increase navigation speed
    AspectVKeyNavSpeedDecrease ## !< decrease navigation speed


## ! Auxiliary ranges.

const
  AspectVKeyLower* = 0
  AspectVKeyModifiersLower* = aspectVKeyShift
  AspectVKeyModifiersUpper* = aspectVKeyMeta
  AspectVKeyNavigationKeysLower* = aspectVKeyNavInteract
  AspectVKeyNavigationKeysUpper* = aspectVKeyNavSpeedDecrease
  AspectVKeyUpper* = aspectVKeyNavSpeedDecrease
  AspectVKeyNB* = AspectVKeyUpper - AspectVKeyLower + 1
  AspectVKeyMAX* = 255

## ! Return modifier flags for specified modifier key.

proc aspectVKey2Modifier*(theKey: AspectVKey): AspectVKeyFlags =
  discard


























