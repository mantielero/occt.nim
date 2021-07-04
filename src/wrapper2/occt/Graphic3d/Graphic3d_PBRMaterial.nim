##  Author: Ilya Khramov
##  Copyright (c) 2019 OPEN CASCADE SAS
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

import
  ../Image/Image_PixMap, Graphic3d_BSDF, Graphic3d_Vec2, Graphic3d_Vec3,
  Graphic3d_Vec4, ../Quantity/Quantity_Color

## ! Class implementing Metallic-Roughness physically based material definition

type
  Graphic3d_PBRMaterial* {.importcpp: "Graphic3d_PBRMaterial",
                          header: "Graphic3d_PBRMaterial.hxx", bycopy.} = object ## !
                                                                            ## Creates new
                                                                            ## physically
                                                                            ## based
                                                                            ## material in
                                                                            ## Metallic-Roughness
                                                                            ## system.
                                                                            ## !
                                                                            ## 'metallic'
                                                                            ## parameter is 0 by
                                                                            ## default.
                                                                            ## !
                                                                            ## 'roughness'
                                                                            ## parameter is 1 by
                                                                            ## default.
                                                                            ## !
                                                                            ## 'color'
                                                                            ## parameter is (0, 0, 0) by
                                                                            ## default.
                                                                            ## !
                                                                            ## 'alpha'
                                                                            ## parameter is 1 by
                                                                            ## default.
                                                                            ## !
                                                                            ## 'IOR'
                                                                            ## parameter is 1.5 by
                                                                            ## default.
                                                                            ## !
                                                                            ## 'emission'
                                                                            ## parameter is (0, 0, 0) by
                                                                            ## default.
                                                                            ## ! PBR
                                                                            ## materials
                                                                            ## comparison
                                                                            ## operator.
                                                                            ## !
                                                                            ## Generates 2D look up
                                                                            ## table of
                                                                            ## scale and bias for
                                                                            ## fresnell zero
                                                                            ## coefficient.
                                                                            ## ! It is
                                                                            ## needed for
                                                                            ## calculation
                                                                            ## reflectance part of
                                                                            ## environment
                                                                            ## lighting.
                                                                            ## !
                                                                            ## @param
                                                                            ## [out]
                                                                            ## theLUT
                                                                            ## table
                                                                            ## storage
                                                                            ## (must be
                                                                            ## Image_Format_RGF).
                                                                            ## !
                                                                            ## @param [in]
                                                                            ## theIntegralSamplesCount
                                                                            ## number of
                                                                            ## importance
                                                                            ## samples in
                                                                            ## hemisphere
                                                                            ## integral
                                                                            ## calculation for
                                                                            ## every
                                                                            ## table
                                                                            ## item.
                                                                            ## !
                                                                            ## Roughness
                                                                            ## cannot be 0 in real
                                                                            ## calculations, so it
                                                                            ## returns
                                                                            ## minimal
                                                                            ## achievable
                                                                            ## level of
                                                                            ## roughness in
                                                                            ## practice
                                                                            ## !
                                                                            ## Shows how much
                                                                            ## times less
                                                                            ## samples can be used in
                                                                            ## certain
                                                                            ## roughness
                                                                            ## value
                                                                            ## specular IBL map
                                                                            ## generation
                                                                            ## ! in
                                                                            ## compare with
                                                                            ## samples
                                                                            ## number for map with
                                                                            ## roughness of 1.
                                                                            ## !
                                                                            ## Specular IBL maps with less
                                                                            ## roughness
                                                                            ## values have
                                                                            ## higher
                                                                            ## resolution but
                                                                            ## require less
                                                                            ## samples for the same
                                                                            ## quality of
                                                                            ## baking.
                                                                            ## ! So that
                                                                            ## reducing
                                                                            ## samples
                                                                            ## number is good
                                                                            ## strategy to
                                                                            ## improve
                                                                            ## performance of
                                                                            ## baking.
                                                                            ## ! The
                                                                            ## samples
                                                                            ## number for
                                                                            ## specular IBL map with
                                                                            ## roughness of 1 (the
                                                                            ## maximum
                                                                            ## possible
                                                                            ## samples
                                                                            ## number) is
                                                                            ## expected to be
                                                                            ## defined as
                                                                            ## baking
                                                                            ## parameter.
                                                                            ## !
                                                                            ## Samples
                                                                            ## number for
                                                                            ## other
                                                                            ## roughness
                                                                            ## values can be
                                                                            ## calculated by
                                                                            ## multiplication
                                                                            ## origin
                                                                            ## samples
                                                                            ## number by this
                                                                            ## factor.
                                                                            ## !
                                                                            ## @param
                                                                            ## theProbability
                                                                            ## value from 0 to 1
                                                                            ## controlling
                                                                            ## strength of
                                                                            ## samples
                                                                            ## reducing.
                                                                            ## !
                                                                            ## Bigger
                                                                            ## values
                                                                            ## result in
                                                                            ## slower
                                                                            ## reduction to
                                                                            ## provide
                                                                            ## better
                                                                            ## quality but
                                                                            ## worse
                                                                            ## performance.
                                                                            ## !
                                                                            ## Value of 1
                                                                            ## doesn't
                                                                            ## affect at all so that 1 will be
                                                                            ## returned (it can be used to
                                                                            ## disable
                                                                            ## reduction
                                                                            ## strategy).
                                                                            ## !
                                                                            ## @param
                                                                            ## theRoughness
                                                                            ## roughness
                                                                            ## value of
                                                                            ## current
                                                                            ## generated
                                                                            ## specular IBL map
                                                                            ## (from 0 to 1).
                                                                            ## !
                                                                            ## @return
                                                                            ## factor to
                                                                            ## calculate
                                                                            ## number of
                                                                            ## samples for
                                                                            ## current
                                                                            ## specular IBL map
                                                                            ## baking.
                                                                            ## ! Be
                                                                            ## aware! It has no
                                                                            ## obligation to
                                                                            ## return 1 in case of
                                                                            ## roughness of 1.
                                                                            ## ! Be
                                                                            ## aware! It
                                                                            ## produces poor
                                                                            ## quality with
                                                                            ## small
                                                                            ## number of
                                                                            ## origin
                                                                            ## samples. In that case it is
                                                                            ## recommended to be
                                                                            ## disabled.
                                                                            ## !
                                                                            ## Calculates
                                                                            ## geometry
                                                                            ## factor of
                                                                            ## Cook-Torrance BRDF
                                                                            ## using
                                                                            ## Smith
                                                                            ## formula.
    ## !< albedo color with alpha component [0, 1]
    ## !< metallic coefficient of material [0, 1]
    ## !< roughness coefficient of material [0, 1]
    ## !< light intensity emitted by material [>= 0]
    ## !< index of refraction [1, 3]


proc constructGraphic3d_PBRMaterial*(): Graphic3d_PBRMaterial {.constructor,
    importcpp: "Graphic3d_PBRMaterial(@)", header: "Graphic3d_PBRMaterial.hxx".}
proc constructGraphic3d_PBRMaterial*(theBSDF: Graphic3d_BSDF): Graphic3d_PBRMaterial {.
    constructor, importcpp: "Graphic3d_PBRMaterial(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc Metallic*(this: Graphic3d_PBRMaterial): Standard_ShortReal {.noSideEffect,
    importcpp: "Metallic", header: "Graphic3d_PBRMaterial.hxx".}
proc SetMetallic*(this: var Graphic3d_PBRMaterial; theMetallic: Standard_ShortReal) {.
    importcpp: "SetMetallic", header: "Graphic3d_PBRMaterial.hxx".}
proc Roughness*(theNormalizedRoughness: Standard_ShortReal): Standard_ShortReal {.
    importcpp: "Graphic3d_PBRMaterial::Roughness(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc Roughness*(this: Graphic3d_PBRMaterial): Standard_ShortReal {.noSideEffect,
    importcpp: "Roughness", header: "Graphic3d_PBRMaterial.hxx".}
proc NormalizedRoughness*(this: Graphic3d_PBRMaterial): Standard_ShortReal {.
    noSideEffect, importcpp: "NormalizedRoughness",
    header: "Graphic3d_PBRMaterial.hxx".}
proc SetRoughness*(this: var Graphic3d_PBRMaterial; theRoughness: Standard_ShortReal) {.
    importcpp: "SetRoughness", header: "Graphic3d_PBRMaterial.hxx".}
proc IOR*(this: Graphic3d_PBRMaterial): Standard_ShortReal {.noSideEffect,
    importcpp: "IOR", header: "Graphic3d_PBRMaterial.hxx".}
proc SetIOR*(this: var Graphic3d_PBRMaterial; theIOR: Standard_ShortReal) {.
    importcpp: "SetIOR", header: "Graphic3d_PBRMaterial.hxx".}
proc Color*(this: Graphic3d_PBRMaterial): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_PBRMaterial.hxx".}
proc SetColor*(this: var Graphic3d_PBRMaterial; theColor: Quantity_ColorRGBA) {.
    importcpp: "SetColor", header: "Graphic3d_PBRMaterial.hxx".}
proc SetColor*(this: var Graphic3d_PBRMaterial; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Graphic3d_PBRMaterial.hxx".}
proc Alpha*(this: Graphic3d_PBRMaterial): Standard_ShortReal {.noSideEffect,
    importcpp: "Alpha", header: "Graphic3d_PBRMaterial.hxx".}
  ## ! Modifies alpha component.
proc SetAlpha*(this: var Graphic3d_PBRMaterial; theAlpha: Standard_ShortReal) {.
    importcpp: "SetAlpha", header: "Graphic3d_PBRMaterial.hxx".}
proc Emission*(this: Graphic3d_PBRMaterial): Graphic3d_Vec3 {.noSideEffect,
    importcpp: "Emission", header: "Graphic3d_PBRMaterial.hxx".}
proc SetEmission*(this: var Graphic3d_PBRMaterial; theEmission: Graphic3d_Vec3) {.
    importcpp: "SetEmission", header: "Graphic3d_PBRMaterial.hxx".}
proc SetBSDF*(this: var Graphic3d_PBRMaterial; theBSDF: Graphic3d_BSDF) {.
    importcpp: "SetBSDF", header: "Graphic3d_PBRMaterial.hxx".}
proc `==`*(this: Graphic3d_PBRMaterial; theOther: Graphic3d_PBRMaterial): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "Graphic3d_PBRMaterial.hxx".}
proc GenerateEnvLUT*(theLUT: handle[Image_PixMap];
                    theNbIntegralSamples: cuint = 1024) {.
    importcpp: "Graphic3d_PBRMaterial::GenerateEnvLUT(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc RoughnessFromSpecular*(theSpecular: Quantity_Color; theShiness: Standard_Real): Standard_ShortReal {.
    importcpp: "Graphic3d_PBRMaterial::RoughnessFromSpecular(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc MetallicFromSpecular*(theSpecular: Quantity_Color): Standard_ShortReal {.
    importcpp: "Graphic3d_PBRMaterial::MetallicFromSpecular(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc MinRoughness*(): Standard_ShortReal {.importcpp: "Graphic3d_PBRMaterial::MinRoughness(@)",
                                        header: "Graphic3d_PBRMaterial.hxx".}
proc SpecIBLMapSamplesFactor*(theProbability: Standard_ShortReal;
                             theRoughness: Standard_ShortReal): Standard_ShortReal {.
    importcpp: "Graphic3d_PBRMaterial::SpecIBLMapSamplesFactor(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc DumpJson*(this: Graphic3d_PBRMaterial; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_PBRMaterial.hxx".}