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

## ! Key modifier, for combining with general key from Aspect_VKey.

type
  AspectVKeyFlags* = cuint

## ! Key modifier, for combining with general key from Aspect_VKey.

const
  AspectVKeyFlagsNONE* = 0      ##  reserve first 8 bits to combine value with Aspect_VKey
  AspectVKeyFlagsSHIFT* = 1 shl 8 ## !< Aspect_VKey_Shift
  AspectVKeyFlagsCTRL* = 1 shl 9  ## !< Aspect_VKey_Control
  AspectVKeyFlagsALT* = 1 shl 10  ## !< Aspect_VKey_Alt
  AspectVKeyFlagsMENU* = 1 shl 11 ## !< Aspect_VKey_Menu
  AspectVKeyFlagsMETA* = 1 shl 12 ## !< Aspect_VKey_Meta
  AspectVKeyFlagsALL* = AspectVKeyFlagsSHIFT or AspectVKeyFlagsCTRL or
      AspectVKeyFlagsALT or AspectVKeyFlagsMENU or AspectVKeyFlagsMETA

## ! Mouse buttons, for combining with Aspect_VKey and Aspect_VKeyFlags.

type
  AspectVKeyMouse* = cuint

## ! Mouse button bitmask

const
  AspectVKeyMouseNONE* = 0      ## !< no buttons
  AspectVKeyMouseLeftButton* = 1 shl 13 ## !< mouse left   button
  AspectVKeyMouseMiddleButton* = 1 shl 14 ## !< mouse middle button (scroll)
  AspectVKeyMouseRightButton* = 1 shl 15 ## !< mouse right  button
  AspectVKeyMouseMainButtons* = AspectVKeyMouseLeftButton or
      AspectVKeyMouseMiddleButton or AspectVKeyMouseRightButton
