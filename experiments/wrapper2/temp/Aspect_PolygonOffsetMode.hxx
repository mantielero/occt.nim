# 1 "/usr/include/opencascade/Aspect_PolygonOffsetMode.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Aspect_PolygonOffsetMode.hxx"
# 21 "/usr/include/opencascade/Aspect_PolygonOffsetMode.hxx"
typedef enum
{
  Aspect_POM_Off = 0x00,
  Aspect_POM_Fill = 0x01,
  Aspect_POM_Line = 0x02,
  Aspect_POM_Point = 0x04,
  Aspect_POM_All = Aspect_POM_Fill | Aspect_POM_Line | Aspect_POM_Point,
  Aspect_POM_None = 0x08,
  Aspect_POM_Mask = Aspect_POM_All | Aspect_POM_None
} Aspect_PolygonOffsetMode;
