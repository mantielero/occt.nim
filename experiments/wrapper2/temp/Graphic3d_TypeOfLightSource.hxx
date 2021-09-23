# 1 "/usr/include/opencascade/Graphic3d_TypeOfLightSource.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Graphic3d_TypeOfLightSource.hxx"
# 21 "/usr/include/opencascade/Graphic3d_TypeOfLightSource.hxx"
enum Graphic3d_TypeOfLightSource
{
  Graphic3d_TOLS_AMBIENT,
  Graphic3d_TOLS_DIRECTIONAL,
  Graphic3d_TOLS_POSITIONAL,
  Graphic3d_TOLS_SPOT,

  V3d_AMBIENT = Graphic3d_TOLS_AMBIENT,
  V3d_DIRECTIONAL = Graphic3d_TOLS_DIRECTIONAL,
  V3d_POSITIONAL = Graphic3d_TOLS_POSITIONAL,
  V3d_SPOT = Graphic3d_TOLS_SPOT
};

enum
{

  Graphic3d_TypeOfLightSource_NB = Graphic3d_TOLS_SPOT + 1
};
