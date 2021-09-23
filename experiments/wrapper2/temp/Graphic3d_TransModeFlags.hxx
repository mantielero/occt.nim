# 1 "/usr/include/opencascade/Graphic3d_TransModeFlags.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Graphic3d_TransModeFlags.hxx"
# 20 "/usr/include/opencascade/Graphic3d_TransModeFlags.hxx"
enum Graphic3d_TransModeFlags
{
  Graphic3d_TMF_None = 0x0000,
  Graphic3d_TMF_ZoomPers = 0x0002,
  Graphic3d_TMF_RotatePers = 0x0008,
  Graphic3d_TMF_TriedronPers = 0x0020,
  Graphic3d_TMF_2d = 0x0040,
  Graphic3d_TMF_ZoomRotatePers = Graphic3d_TMF_ZoomPers
                               | Graphic3d_TMF_RotatePers
};
