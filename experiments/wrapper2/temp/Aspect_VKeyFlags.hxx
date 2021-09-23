# 1 "/usr/include/opencascade/Aspect_VKeyFlags.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Aspect_VKeyFlags.hxx"
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
