




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



const
  aspectVKeyFlagsNONE* = 0      ##  reserve first 8 bits to combine value with Aspect_VKey
  aspectVKeyFlagsSHIFT* = 1 shl 8 ## !< Aspect_VKey_Shift
  aspectVKeyFlagsCTRL* = 1 shl 9  ## !< Aspect_VKey_Control
  aspectVKeyFlagsALT* = 1 shl 10  ## !< Aspect_VKey_Alt
  aspectVKeyFlagsMENU* = 1 shl 11 ## !< Aspect_VKey_Menu
  aspectVKeyFlagsMETA* = 1 shl 12 ## !< Aspect_VKey_Meta
  aspectVKeyFlagsALL* = aspectVKeyFlagsSHIFT or aspectVKeyFlagsCTRL or
      aspectVKeyFlagsALT or aspectVKeyFlagsMENU or aspectVKeyFlagsMETA

## ! Mouse buttons, for combining with Aspect_VKey and Aspect_VKeyFlags.



const
  AspectVKeyMouseNONE* = 0      ## !< no buttons
  AspectVKeyMouseLeftButton* = 1 shl 13 ## !< mouse left   button
  AspectVKeyMouseMiddleButton* = 1 shl 14 ## !< mouse middle button (scroll)
  AspectVKeyMouseRightButton* = 1 shl 15 ## !< mouse right  button
  AspectVKeyMouseMainButtons* = AspectVKeyMouseLeftButton or
      AspectVKeyMouseMiddleButton or AspectVKeyMouseRightButton



