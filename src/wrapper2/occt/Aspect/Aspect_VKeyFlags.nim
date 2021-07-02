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
