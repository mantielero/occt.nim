# 1 "/usr/include/opencascade/Graphic3d_TextureSetBits.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Graphic3d_TextureSetBits.hxx"
# 17 "/usr/include/opencascade/Graphic3d_TextureSetBits.hxx"
# 1 "/usr/include/opencascade/Graphic3d_TextureUnit.hxx" 1
# 18 "/usr/include/opencascade/Graphic3d_TextureUnit.hxx"
enum Graphic3d_TextureUnit
{

  Graphic3d_TextureUnit_0,
  Graphic3d_TextureUnit_1,
  Graphic3d_TextureUnit_2,
  Graphic3d_TextureUnit_3,
  Graphic3d_TextureUnit_4,
  Graphic3d_TextureUnit_5,
  Graphic3d_TextureUnit_6,
  Graphic3d_TextureUnit_7,
  Graphic3d_TextureUnit_8,
  Graphic3d_TextureUnit_9,
  Graphic3d_TextureUnit_10,
  Graphic3d_TextureUnit_11,
  Graphic3d_TextureUnit_12,
  Graphic3d_TextureUnit_13,
  Graphic3d_TextureUnit_14,
  Graphic3d_TextureUnit_15,





  Graphic3d_TextureUnit_BaseColor = Graphic3d_TextureUnit_0,


  Graphic3d_TextureUnit_Emissive = Graphic3d_TextureUnit_1,



  Graphic3d_TextureUnit_Occlusion = Graphic3d_TextureUnit_2,


  Graphic3d_TextureUnit_Normal = Graphic3d_TextureUnit_3,




  Graphic3d_TextureUnit_MetallicRoughness = Graphic3d_TextureUnit_4,



  Graphic3d_TextureUnit_EnvMap = Graphic3d_TextureUnit_0,






  Graphic3d_TextureUnit_PointSprite = Graphic3d_TextureUnit_1,




  Graphic3d_TextureUnit_PbrEnvironmentLUT = -3,



  Graphic3d_TextureUnit_PbrIblDiffuseSH = -2,



  Graphic3d_TextureUnit_PbrIblSpecular = -1,
};
enum
{
  Graphic3d_TextureUnit_NB = Graphic3d_TextureUnit_15 + 1,
};
# 18 "/usr/include/opencascade/Graphic3d_TextureSetBits.hxx" 2


enum Graphic3d_TextureSetBits
{
  Graphic3d_TextureSetBits_NONE = 0,
  Graphic3d_TextureSetBits_BaseColor = (unsigned int )(1 << int(Graphic3d_TextureUnit_BaseColor)),
  Graphic3d_TextureSetBits_Emissive = (unsigned int )(1 << int(Graphic3d_TextureUnit_Emissive)),
  Graphic3d_TextureSetBits_Occlusion = (unsigned int )(1 << int(Graphic3d_TextureUnit_Occlusion)),
  Graphic3d_TextureSetBits_Normal = (unsigned int )(1 << int(Graphic3d_TextureUnit_Normal)),
  Graphic3d_TextureSetBits_MetallicRoughness = (unsigned int )(1 << int(Graphic3d_TextureUnit_MetallicRoughness)),
};
