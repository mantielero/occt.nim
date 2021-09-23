# 1 "/usr/include/opencascade/Graphic3d_CappingFlags.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Graphic3d_CappingFlags.hxx"
# 19 "/usr/include/opencascade/Graphic3d_CappingFlags.hxx"
enum Graphic3d_CappingFlags
{
  Graphic3d_CappingFlags_None = 0x0000,
  Graphic3d_CappingFlags_ObjectMaterial = 0x0001,
  Graphic3d_CappingFlags_ObjectTexture = 0x0002,
  Graphic3d_CappingFlags_ObjectShader = 0x0008,
  Graphic3d_CappingFlags_ObjectAspect =
    Graphic3d_CappingFlags_ObjectMaterial | Graphic3d_CappingFlags_ObjectTexture | Graphic3d_CappingFlags_ObjectShader
};
