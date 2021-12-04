##  Copyright (c) 2017 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## ! Texture unit.

type
  Graphic3dTextureUnit* {.size: sizeof(cint), importcpp: "Graphic3d_TextureUnit",
                         header: "Graphic3d_TextureUnit.hxx".} = enum ##  value as index number
    graphic3dTextureUnitPbrEnvironmentLUT = -3, ## ! sampler2D occDiffIBLMapSHCoeffs.
                                             ## ! Diffuse (irradiance) IBL map's spherical harmonics coefficients baked for PBR from environment cubemap image.
                                             ## ! Configured as index at the end of available texture units - 2.
    graphic3dTextureUnitPbrIblDiffuseSH = -2, ## ! samplerCube occSpecIBLMap.
                                           ## ! Specular IBL (Image-Based Lighting) environment map baked for PBR from environment cubemap image.
                                           ## ! Configured as index at the end of available texture units - 1.
    graphic3dTextureUnitPbrIblSpecular = -1, graphic3dTextureUnit0,
    graphic3dTextureUnit1, graphic3dTextureUnit2, graphic3dTextureUnit3,
    graphic3dTextureUnit4, graphic3dTextureUnit5, graphic3dTextureUnit6,
    graphic3dTextureUnit7, graphic3dTextureUnit8, graphic3dTextureUnit9,
    graphic3dTextureUnit10, graphic3dTextureUnit11, graphic3dTextureUnit12,
    graphic3dTextureUnit13, graphic3dTextureUnit14, graphic3dTextureUnit15 ##  aliases
                                                                         ## ! sampler2D occSamplerBaseColor.
                                                                         ## ! RGB(A) base color of the material and alpha mask/opacity.
const
  graphic3dTextureUnitBaseColor* = graphic3dTextureUnit0.Graphic3dTextureUnit ## ! sampler2D occSamplerEmissive.
                                                        ## ! RGB emissive map controls the color and intensity of the light being emitted by the material.
  graphic3dTextureUnitEmissive* = graphic3dTextureUnit1.Graphic3dTextureUnit ## ! sampler2D occSamplerOcclusion.
                                                       ## ! Occlusion map indicating areas of indirect lighting.
                                                       ## ! Encoded into RED channel, with 1.0 meaning no occlusion (full color intensity) and 0.0 complete occlusion (black).
  graphic3dTextureUnitOcclusion* = graphic3dTextureUnit2.Graphic3dTextureUnit ## ! sampler2D occSamplerNormal.
                                                        ## ! XYZ tangent space normal map.
  graphic3dTextureUnitNormal* = graphic3dTextureUnit3.Graphic3dTextureUnit ## ! sampler2D
                                                     ## occSamplerMetallicRoughness.
                                                     ## ! Metalness + roughness of the material.
                                                     ## ! Encoded into GREEN (roughness) + BLUE (metallic) channels,
                                                     ## ! so that it can be optionally combined with occlusion texture (RED channel).
  graphic3dTextureUnitMetallicRoughness* = graphic3dTextureUnit4.Graphic3dTextureUnit ## ! samplerCube occSampler0.
                                                                ## ! Environment cubemap for background. Rendered by dedicated program and normally occupies first texture unit.
  graphic3dTextureUnitEnvMap* = graphic3dTextureUnit0.Graphic3dTextureUnit ## ! sampler2D occSamplerPointSprite.
                                                     ## ! Sprite alpha-mask or RGBA image mapped using point UV, additional to BaseColor (mapping using vertex UV).
                                                     ## ! This texture unit is set Graphic3d_TextureUnit_1, so that it can be combined with
                                                     ## Graphic3d_TextureUnit_BaseColor,
                                                     ## ! while other texture maps (normal map and others) are unexpected and unsupported for points.
                                                     ## ! Note that it can be overridden to Graphic3d_TextureUnit_0 for FFP fallback on hardware without multi-texturing.
  graphic3dTextureUnitPointSprite* = graphic3dTextureUnit1.Graphic3dTextureUnit ## ! sampler2D occEnvLUT.
                                                         ## ! Lookup table for approximated PBR environment lighting.
                                                         ## ! Configured as index at the end of available texture units - 3.
  graphic3dTextureUnitNB* = (graphic3dTextureUnit15.int + 1)#.Graphic3dTextureUnit
