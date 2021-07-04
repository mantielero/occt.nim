# 1 "/usr/include/opencascade/Aspect_VKey.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Aspect_VKey.hxx"
# 17 "/usr/include/opencascade/Aspect_VKey.hxx"
# 1 "/usr/include/opencascade/Aspect_VKeyFlags.hxx" 1
# 18 "/usr/include/opencascade/Aspect_VKeyFlags.hxx"
typedef unsigned int Aspect_VKeyFlags;


enum
{
  Aspect_VKeyFlags_NONE = 0,

  Aspect_VKeyFlags_SHIFT = 1 << 8,
  Aspect_VKeyFlags_CTRL = 1 << 9,
  Aspect_VKeyFlags_ALT = 1 << 10,
  Aspect_VKeyFlags_MENU = 1 << 11,
  Aspect_VKeyFlags_META = 1 << 12,

  Aspect_VKeyFlags_ALL = Aspect_VKeyFlags_SHIFT | Aspect_VKeyFlags_CTRL | Aspect_VKeyFlags_ALT | Aspect_VKeyFlags_MENU | Aspect_VKeyFlags_META
};


typedef unsigned int Aspect_VKeyMouse;


enum
{
  Aspect_VKeyMouse_NONE = 0,

  Aspect_VKeyMouse_LeftButton = 1 << 13,
  Aspect_VKeyMouse_MiddleButton = 1 << 14,
  Aspect_VKeyMouse_RightButton = 1 << 15,

  Aspect_VKeyMouse_MainButtons = Aspect_VKeyMouse_LeftButton | Aspect_VKeyMouse_MiddleButton | Aspect_VKeyMouse_RightButton
};
# 18 "/usr/include/opencascade/Aspect_VKey.hxx" 2


typedef unsigned int Aspect_VKey;


enum Aspect_VKeyBasic
{
  Aspect_VKey_UNKNOWN = 0,


  Aspect_VKey_A = 1,
  Aspect_VKey_B,
  Aspect_VKey_C,
  Aspect_VKey_D,
  Aspect_VKey_E,
  Aspect_VKey_F,
  Aspect_VKey_G,
  Aspect_VKey_H,
  Aspect_VKey_I,
  Aspect_VKey_J,
  Aspect_VKey_K,
  Aspect_VKey_L,
  Aspect_VKey_M,
  Aspect_VKey_N,
  Aspect_VKey_O,
  Aspect_VKey_P,
  Aspect_VKey_Q,
  Aspect_VKey_R,
  Aspect_VKey_S,
  Aspect_VKey_T,
  Aspect_VKey_U,
  Aspect_VKey_V,
  Aspect_VKey_W,
  Aspect_VKey_X,
  Aspect_VKey_Y,
  Aspect_VKey_Z,

  Aspect_VKey_0,
  Aspect_VKey_1,
  Aspect_VKey_2,
  Aspect_VKey_3,
  Aspect_VKey_4,
  Aspect_VKey_5,
  Aspect_VKey_6,
  Aspect_VKey_7,
  Aspect_VKey_8,
  Aspect_VKey_9,

  Aspect_VKey_F1,
  Aspect_VKey_F2,
  Aspect_VKey_F3,
  Aspect_VKey_F4,
  Aspect_VKey_F5,
  Aspect_VKey_F6,
  Aspect_VKey_F7,
  Aspect_VKey_F8,
  Aspect_VKey_F9,
  Aspect_VKey_F10,
  Aspect_VKey_F11,
  Aspect_VKey_F12,


  Aspect_VKey_Up,
  Aspect_VKey_Down,
  Aspect_VKey_Left,
  Aspect_VKey_Right,
  Aspect_VKey_Plus,
  Aspect_VKey_Minus,
  Aspect_VKey_Equal,
  Aspect_VKey_PageUp,
  Aspect_VKey_PageDown,
  Aspect_VKey_Home,
  Aspect_VKey_End,
  Aspect_VKey_Escape,
  Aspect_VKey_Back,
  Aspect_VKey_Enter,
  Aspect_VKey_Backspace,
  Aspect_VKey_Space,
  Aspect_VKey_Delete,
  Aspect_VKey_Tilde,
  Aspect_VKey_Tab,
  Aspect_VKey_Comma,
  Aspect_VKey_Period,
  Aspect_VKey_Semicolon,
  Aspect_VKey_Slash,
  Aspect_VKey_BracketLeft,
  Aspect_VKey_Backslash,
  Aspect_VKey_BracketRight,
  Aspect_VKey_Apostrophe,
  Aspect_VKey_Numlock,
  Aspect_VKey_Scroll,


  Aspect_VKey_Numpad0,
  Aspect_VKey_Numpad1,
  Aspect_VKey_Numpad2,
  Aspect_VKey_Numpad3,
  Aspect_VKey_Numpad4,
  Aspect_VKey_Numpad5,
  Aspect_VKey_Numpad6,
  Aspect_VKey_Numpad7,
  Aspect_VKey_Numpad8,
  Aspect_VKey_Numpad9,
  Aspect_VKey_NumpadMultiply,
  Aspect_VKey_NumpadAdd,
  Aspect_VKey_NumpadSubtract,
  Aspect_VKey_NumpadDivide,


  Aspect_VKey_MediaNextTrack,
  Aspect_VKey_MediaPreviousTrack,
  Aspect_VKey_MediaStop,
  Aspect_VKey_MediaPlayPause,
  Aspect_VKey_VolumeMute,
  Aspect_VKey_VolumeDown,
  Aspect_VKey_VolumeUp,
  Aspect_VKey_BrowserBack,
  Aspect_VKey_BrowserForward,
  Aspect_VKey_BrowserRefresh,
  Aspect_VKey_BrowserStop,
  Aspect_VKey_BrowserSearch,
  Aspect_VKey_BrowserFavorites,
  Aspect_VKey_BrowserHome,


  Aspect_VKey_ViewTop,
  Aspect_VKey_ViewBottom,
  Aspect_VKey_ViewLeft,
  Aspect_VKey_ViewRight,
  Aspect_VKey_ViewFront,
  Aspect_VKey_ViewBack,
  Aspect_VKey_ViewAxoLeftProj,
  Aspect_VKey_ViewAxoRightProj,
  Aspect_VKey_ViewFitAll,
  Aspect_VKey_ViewRoll90CW,
  Aspect_VKey_ViewRoll90CCW,
  Aspect_VKey_ViewSwitchRotate,


  Aspect_VKey_Shift,
  Aspect_VKey_Control,
  Aspect_VKey_Alt,
  Aspect_VKey_Menu,
  Aspect_VKey_Meta,


  Aspect_VKey_NavInteract,
  Aspect_VKey_NavForward,
  Aspect_VKey_NavBackward,
  Aspect_VKey_NavSlideLeft,
  Aspect_VKey_NavSlideRight,
  Aspect_VKey_NavSlideUp,
  Aspect_VKey_NavSlideDown,
  Aspect_VKey_NavRollCCW,
  Aspect_VKey_NavRollCW,
  Aspect_VKey_NavLookLeft,
  Aspect_VKey_NavLookRight,
  Aspect_VKey_NavLookUp,
  Aspect_VKey_NavLookDown,
  Aspect_VKey_NavCrouch,
  Aspect_VKey_NavJump,
  Aspect_VKey_NavThrustForward,
  Aspect_VKey_NavThrustBackward,
  Aspect_VKey_NavThrustStop,
  Aspect_VKey_NavSpeedIncrease,
  Aspect_VKey_NavSpeedDecrease,
};


enum
{
  Aspect_VKey_Lower = 0,
  Aspect_VKey_ModifiersLower = Aspect_VKey_Shift,
  Aspect_VKey_ModifiersUpper = Aspect_VKey_Meta,
  Aspect_VKey_NavigationKeysLower = Aspect_VKey_NavInteract,
  Aspect_VKey_NavigationKeysUpper = Aspect_VKey_NavSpeedDecrease,
  Aspect_VKey_Upper = Aspect_VKey_NavSpeedDecrease,
  Aspect_VKey_NB = Aspect_VKey_Upper - Aspect_VKey_Lower + 1,
  Aspect_VKey_MAX = 255
};


inline Aspect_VKeyFlags Aspect_VKey2Modifier (Aspect_VKey theKey)
{
  switch (theKey)
  {
    case Aspect_VKey_Shift: return Aspect_VKeyFlags_SHIFT;
    case Aspect_VKey_Control: return Aspect_VKeyFlags_CTRL;
    case Aspect_VKey_Alt: return Aspect_VKeyFlags_ALT;
    case Aspect_VKey_Menu: return Aspect_VKeyFlags_MENU;
    case Aspect_VKey_Meta: return Aspect_VKeyFlags_META;
    default: return 0;
  }
}
