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

## ! Class implementing Metallic-Roughness physically based material definition

type
  Graphic3dPBRMaterial* {.importcpp: "Graphic3d_PBRMaterial",
                         header: "Graphic3d_PBRMaterial.hxx", bycopy.} = object ## !
                                                                           ## Creates new
                                                                           ## physically based
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
                                                                           ## ! 'IOR'
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
                                                                           ## Generates 2D look up table of scale and bias for
                                                                           ## fresnell zero
                                                                           ## coefficient.
                                                                           ## ! It is
                                                                           ## needed for
                                                                           ## calculation
                                                                           ## reflectance part of
                                                                           ## environment
                                                                           ## lighting.
                                                                           ## !
                                                                           ## @param [out]
                                                                           ## theLUT table
                                                                           ## storage (must be
                                                                           ## Image_Format_RGF).
                                                                           ## !
                                                                           ## @param [in]
                                                                           ## theIntegralSamplesCount
                                                                           ## number of
                                                                           ## importance
                                                                           ## samples in
                                                                           ## hemisphere
                                                                           ## integral
                                                                           ## calculation for every table item.
                                                                           ## !
                                                                           ## Roughness
                                                                           ## cannot be 0 in real
                                                                           ## calculations, so it
                                                                           ## returns
                                                                           ## minimal
                                                                           ## achievable level of
                                                                           ## roughness in
                                                                           ## practice
                                                                           ## ! Shows how much times less
                                                                           ## samples can be used in
                                                                           ## certain
                                                                           ## roughness value
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
                                                                           ## number for other
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
                                                                           ## theProbability value from 0 to 1
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
                                                                           ## quality but worse
                                                                           ## performance.
                                                                           ## ! Value of 1
                                                                           ## doesn't
                                                                           ## affect at all so that 1 will be
                                                                           ## returned (it can be used to
                                                                           ## disable
                                                                           ## reduction
                                                                           ## strategy).
                                                                           ## !
                                                                           ## @param
                                                                           ## theRoughness
                                                                           ## roughness value of
                                                                           ## current
                                                                           ## generated
                                                                           ## specular IBL map (from 0 to 1).
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
                                                                           ## quality with small
                                                                           ## number of
                                                                           ## origin
                                                                           ## samples. In that case it is
                                                                           ## recommended to be
                                                                           ## disabled.
                                                                           ## !
                                                                           ## Calculates
                                                                           ## geometry
                                                                           ## factor of
                                                                           ## Cook-Torrance BRDF using Smith
                                                                           ## formula.
    ## !< albedo color with alpha component [0, 1]
    ## !< metallic coefficient of material [0, 1]
    ## !< roughness coefficient of material [0, 1]
    ## !< light intensity emitted by material [>= 0]
    ## !< index of refraction [1, 3]


proc constructGraphic3dPBRMaterial*(): Graphic3dPBRMaterial {.constructor,
    importcpp: "Graphic3d_PBRMaterial(@)", header: "Graphic3d_PBRMaterial.hxx".}
proc constructGraphic3dPBRMaterial*(theBSDF: Graphic3dBSDF): Graphic3dPBRMaterial {.
    constructor, importcpp: "Graphic3d_PBRMaterial(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc metallic*(this: Graphic3dPBRMaterial): StandardShortReal {.noSideEffect,
    importcpp: "Metallic", header: "Graphic3d_PBRMaterial.hxx".}
proc setMetallic*(this: var Graphic3dPBRMaterial; theMetallic: StandardShortReal) {.
    importcpp: "SetMetallic", header: "Graphic3d_PBRMaterial.hxx".}
proc roughness*(theNormalizedRoughness: StandardShortReal): StandardShortReal {.
    importcpp: "Graphic3d_PBRMaterial::Roughness(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc roughness*(this: Graphic3dPBRMaterial): StandardShortReal {.noSideEffect,
    importcpp: "Roughness", header: "Graphic3d_PBRMaterial.hxx".}
proc normalizedRoughness*(this: Graphic3dPBRMaterial): StandardShortReal {.
    noSideEffect, importcpp: "NormalizedRoughness",
    header: "Graphic3d_PBRMaterial.hxx".}
proc setRoughness*(this: var Graphic3dPBRMaterial; theRoughness: StandardShortReal) {.
    importcpp: "SetRoughness", header: "Graphic3d_PBRMaterial.hxx".}
proc ior*(this: Graphic3dPBRMaterial): StandardShortReal {.noSideEffect,
    importcpp: "IOR", header: "Graphic3d_PBRMaterial.hxx".}
proc setIOR*(this: var Graphic3dPBRMaterial; theIOR: StandardShortReal) {.
    importcpp: "SetIOR", header: "Graphic3d_PBRMaterial.hxx".}
proc color*(this: Graphic3dPBRMaterial): QuantityColorRGBA {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_PBRMaterial.hxx".}
proc setColor*(this: var Graphic3dPBRMaterial; theColor: QuantityColorRGBA) {.
    importcpp: "SetColor", header: "Graphic3d_PBRMaterial.hxx".}
proc setColor*(this: var Graphic3dPBRMaterial; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "Graphic3d_PBRMaterial.hxx".}
proc alpha*(this: Graphic3dPBRMaterial): StandardShortReal {.noSideEffect,
    importcpp: "Alpha", header: "Graphic3d_PBRMaterial.hxx".}
  ## ! Modifies alpha component.
proc setAlpha*(this: var Graphic3dPBRMaterial; theAlpha: StandardShortReal) {.
    importcpp: "SetAlpha", header: "Graphic3d_PBRMaterial.hxx".}
proc emission*(this: Graphic3dPBRMaterial): Graphic3dVec3 {.noSideEffect,
    importcpp: "Emission", header: "Graphic3d_PBRMaterial.hxx".}
proc setEmission*(this: var Graphic3dPBRMaterial; theEmission: Graphic3dVec3) {.
    importcpp: "SetEmission", header: "Graphic3d_PBRMaterial.hxx".}
proc setBSDF*(this: var Graphic3dPBRMaterial; theBSDF: Graphic3dBSDF) {.
    importcpp: "SetBSDF", header: "Graphic3d_PBRMaterial.hxx".}
proc `==`*(this: Graphic3dPBRMaterial; theOther: Graphic3dPBRMaterial): bool {.
    noSideEffect, importcpp: "(# == #)", header: "Graphic3d_PBRMaterial.hxx".}
proc generateEnvLUT*(theLUT: Handle[ImagePixMap];
                    theNbIntegralSamples: cuint = 1024) {.
    importcpp: "Graphic3d_PBRMaterial::GenerateEnvLUT(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc roughnessFromSpecular*(theSpecular: QuantityColor; theShiness: float): StandardShortReal {.
    importcpp: "Graphic3d_PBRMaterial::RoughnessFromSpecular(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc metallicFromSpecular*(theSpecular: QuantityColor): StandardShortReal {.
    importcpp: "Graphic3d_PBRMaterial::MetallicFromSpecular(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc minRoughness*(): StandardShortReal {.importcpp: "Graphic3d_PBRMaterial::MinRoughness(@)",
                                       header: "Graphic3d_PBRMaterial.hxx".}
proc specIBLMapSamplesFactor*(theProbability: StandardShortReal;
                             theRoughness: StandardShortReal): StandardShortReal {.
    importcpp: "Graphic3d_PBRMaterial::SpecIBLMapSamplesFactor(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc dumpJson*(this: Graphic3dPBRMaterial; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Graphic3d_PBRMaterial.hxx".}
