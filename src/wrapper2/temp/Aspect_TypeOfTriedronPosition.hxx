# 1 "/usr/include/opencascade/Aspect_TypeOfTriedronPosition.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Aspect_TypeOfTriedronPosition.hxx"
# 21 "/usr/include/opencascade/Aspect_TypeOfTriedronPosition.hxx"
enum Aspect_TypeOfTriedronPosition
{
  Aspect_TOTP_CENTER = 0x0000,
  Aspect_TOTP_TOP = 0x0001,
  Aspect_TOTP_BOTTOM = 0x0002,
  Aspect_TOTP_LEFT = 0x0004,
  Aspect_TOTP_RIGHT = 0x0008,
  Aspect_TOTP_LEFT_LOWER = Aspect_TOTP_BOTTOM
                          | Aspect_TOTP_LEFT,
  Aspect_TOTP_LEFT_UPPER = Aspect_TOTP_TOP
                          | Aspect_TOTP_LEFT,
  Aspect_TOTP_RIGHT_LOWER = Aspect_TOTP_BOTTOM
                          | Aspect_TOTP_RIGHT,
  Aspect_TOTP_RIGHT_UPPER = Aspect_TOTP_TOP
                          | Aspect_TOTP_RIGHT,

};
