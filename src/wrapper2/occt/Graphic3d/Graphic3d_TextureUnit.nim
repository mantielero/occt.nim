type
  Graphic3dTextureUnit* {.size: sizeof(cint), importcpp: "Graphic3d_TextureUnit",
                         header: "Graphic3d_TextureUnit.hxx".} = enum
    Graphic3dTextureUnitPbrEnvironmentLUT = -3,
    Graphic3dTextureUnitPbrIblDiffuseSH = -2,
    Graphic3dTextureUnitPbrIblSpecular = -1, Graphic3dTextureUnit0,
    Graphic3dTextureUnit1, Graphic3dTextureUnit2, Graphic3dTextureUnit3,
    Graphic3dTextureUnit4, Graphic3dTextureUnit5, Graphic3dTextureUnit6,
    Graphic3dTextureUnit7, Graphic3dTextureUnit8, Graphic3dTextureUnit9,
    Graphic3dTextureUnit10, Graphic3dTextureUnit11, Graphic3dTextureUnit12,
    Graphic3dTextureUnit13, Graphic3dTextureUnit14, Graphic3dTextureUnit15,
    Graphic3dTextureUnitBaseColor = graphic3dTextureUnit0,
    Graphic3dTextureUnitEmissive = graphic3dTextureUnit1,
    Graphic3dTextureUnitOcclusion = graphic3dTextureUnit2,
    Graphic3dTextureUnitNormal = graphic3dTextureUnit3,
    Graphic3dTextureUnitMetallicRoughness = graphic3dTextureUnit4,
    Graphic3dTextureUnitEnvMap = graphic3dTextureUnit0,
    Graphic3dTextureUnitPointSprite = graphic3dTextureUnit1


const
  Graphic3dTextureUnitNB* = graphic3dTextureUnit15 + 1
