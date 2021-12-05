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
    aspectVKeyUNKNOWN = 0,      ##  main latin alphabet keys
    aspectVKeyA = 1, aspectVKeyB, aspectVKeyC, aspectVKeyD, aspectVKeyE, aspectVKeyF,
    aspectVKeyG, aspectVKeyH, aspectVKeyI, aspectVKeyJ, aspectVKeyK, aspectVKeyL,
    aspectVKeyM, aspectVKeyN, aspectVKeyO, aspectVKeyP, aspectVKeyQ, aspectVKeyR,
    aspectVKeyS, aspectVKeyT, aspectVKeyU, aspectVKeyV, aspectVKeyW, aspectVKeyX,
    aspectVKeyY, aspectVKeyZ, aspectVKey0, aspectVKey1, aspectVKey2, aspectVKey3,
    aspectVKey4, aspectVKey5, aspectVKey6, aspectVKey7, aspectVKey8, aspectVKey9,
    aspectVKeyF1, aspectVKeyF2, aspectVKeyF3, aspectVKeyF4, aspectVKeyF5,
    aspectVKeyF6, aspectVKeyF7, aspectVKeyF8, aspectVKeyF9, aspectVKeyF10,
    aspectVKeyF11, aspectVKeyF12, ##  standard keys
    aspectVKeyUp, aspectVKeyDown, aspectVKeyLeft, aspectVKeyRight, aspectVKeyPlus, ## !< '+'
    aspectVKeyMinus,          ## !< '-'
    aspectVKeyEqual,          ## !< '=+'
    aspectVKeyPageUp, aspectVKeyPageDown, aspectVKeyHome, aspectVKeyEnd,
    aspectVKeyEscape, aspectVKeyBack, aspectVKeyEnter, aspectVKeyBackspace,
    aspectVKeySpace, aspectVKeyDelete, aspectVKeyTilde, aspectVKeyTab, aspectVKeyComma, ## !< ','
    aspectVKeyPeriod,         ## !< '.'
    aspectVKeySemicolon,      ## !< ';:'
    aspectVKeySlash,          ## !< '/?'
    aspectVKeyBracketLeft,    ## !< '[{'
    aspectVKeyBackslash,      ## !< '\|'
    aspectVKeyBracketRight,   ## !< ']}'
    aspectVKeyApostrophe,     ## !< ''"'
    aspectVKeyNumlock,        ## !< Num Lock key
    aspectVKeyScroll,         ## !< Scroll Lock key
                     ##  numpad keys
    aspectVKeyNumpad0, aspectVKeyNumpad1, aspectVKeyNumpad2, aspectVKeyNumpad3,
    aspectVKeyNumpad4, aspectVKeyNumpad5, aspectVKeyNumpad6, aspectVKeyNumpad7,
    aspectVKeyNumpad8, aspectVKeyNumpad9, aspectVKeyNumpadMultiply, ## !< numpad '*'
    aspectVKeyNumpadAdd,      ## !< numpad '+'
    aspectVKeyNumpadSubtract, ## !< numpad '-'
    aspectVKeyNumpadDivide,   ## !< numpad '/'
                           ##  Multimedia keys
    aspectVKeyMediaNextTrack, aspectVKeyMediaPreviousTrack, aspectVKeyMediaStop,
    aspectVKeyMediaPlayPause, aspectVKeyVolumeMute, aspectVKeyVolumeDown,
    aspectVKeyVolumeUp, aspectVKeyBrowserBack, aspectVKeyBrowserForward,
    aspectVKeyBrowserRefresh, aspectVKeyBrowserStop, aspectVKeyBrowserSearch,
    aspectVKeyBrowserFavorites, aspectVKeyBrowserHome, ##  3d view keys
    aspectVKeyViewTop, aspectVKeyViewBottom, aspectVKeyViewLeft,
    aspectVKeyViewRight, aspectVKeyViewFront, aspectVKeyViewBack,
    aspectVKeyViewAxoLeftProj, aspectVKeyViewAxoRightProj, aspectVKeyViewFitAll,
    aspectVKeyViewRoll90CW, aspectVKeyViewRoll90CCW, aspectVKeyViewSwitchRotate, ##  modifier keys, @sa Aspect_VKey_ModifiersLower and Aspect_VKey_ModifiersUpper below
    aspectVKeyShift, aspectVKeyControl, aspectVKeyAlt, aspectVKeyMenu, aspectVKeyMeta, ##  virtual navigation keys, @sa Aspect_VKey_NavigationKeysLower and Aspect_VKey_NavigationKeysUpper below
    aspectVKeyNavInteract,    ## !< interact
    aspectVKeyNavForward,     ## !< go forward
    aspectVKeyNavBackward,    ## !< go backward
    aspectVKeyNavSlideLeft,   ## !< sidewalk, left
    aspectVKeyNavSlideRight,  ## !< sidewalk, right
    aspectVKeyNavSlideUp,     ## !< lift up
    aspectVKeyNavSlideDown,   ## !< fall down
    aspectVKeyNavRollCCW,     ## !< bank left  (roll counter-clockwise)
    aspectVKeyNavRollCW,      ## !< bank right (roll clockwise)
    aspectVKeyNavLookLeft,    ## !< look left  (yaw counter-clockwise)
    aspectVKeyNavLookRight,   ## !< look right (yaw clockwise)
    aspectVKeyNavLookUp,      ## !< look up    (pitch clockwise)
    aspectVKeyNavLookDown,    ## !< look down  (pitch counter-clockwise)
    aspectVKeyNavCrouch,      ## !< crouch walking
    aspectVKeyNavJump,        ## !< jump
    aspectVKeyNavThrustForward, ## !< increase continuous velocity in forward  direction
    aspectVKeyNavThrustBackward, ## !< increase continuous velocity in reversed direction
    aspectVKeyNavThrustStop,  ## !< reset continuous velocity
    aspectVKeyNavSpeedIncrease, ## !< increase navigation speed
    aspectVKeyNavSpeedDecrease ## !< decrease navigation speed


## ! Auxiliary ranges.

const
  aspectVKeyLower* = 0
  aspectVKeyModifiersLower* = aspectVKeyShift
  aspectVKeyModifiersUpper* = aspectVKeyMeta
  aspectVKeyNavigationKeysLower* = aspectVKeyNavInteract
  aspectVKeyNavigationKeysUpper* = aspectVKeyNavSpeedDecrease
  aspectVKeyUpper* = aspectVKeyNavSpeedDecrease
  aspectVKeyNB* = (aspectVKeyUpper.int - aspectVKeyLower.int + 1)
  aspectVKeyMAX* = 255

## ! Return modifier flags for specified modifier key.

proc aspectVKey2Modifier*(theKey: AspectVKey): AspectVKeyFlags {.cdecl.} =
  discard
