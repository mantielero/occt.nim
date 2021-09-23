# 1 "/usr/include/opencascade/Graphic3d_TypeOfShaderObject.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Graphic3d_TypeOfShaderObject.hxx"
# 20 "/usr/include/opencascade/Graphic3d_TypeOfShaderObject.hxx"
enum Graphic3d_TypeOfShaderObject
{

  Graphic3d_TOS_VERTEX = 0x01,
  Graphic3d_TOS_TESS_CONTROL = 0x02,
  Graphic3d_TOS_TESS_EVALUATION = 0x04,
  Graphic3d_TOS_GEOMETRY = 0x08,
  Graphic3d_TOS_FRAGMENT = 0x10,

  Graphic3d_TOS_COMPUTE = 0x20
};
