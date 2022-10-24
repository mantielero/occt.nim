import graphic3d_types

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



proc newGraphic3dPBRMaterial*(): Graphic3dPBRMaterial {.cdecl, constructor,
    importcpp: "Graphic3d_PBRMaterial(@)", header: "Graphic3d_PBRMaterial.hxx".}
proc newGraphic3dPBRMaterial*(theBSDF: Graphic3dBSDF): Graphic3dPBRMaterial {.cdecl,
    constructor, importcpp: "Graphic3d_PBRMaterial(@)", header: "Graphic3d_PBRMaterial.hxx".}
proc metallic*(this: Graphic3dPBRMaterial): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Metallic", header: "Graphic3d_PBRMaterial.hxx".}
proc setMetallic*(this: var Graphic3dPBRMaterial; theMetallic: StandardShortReal) {.
    cdecl, importcpp: "SetMetallic", header: "Graphic3d_PBRMaterial.hxx".}
proc roughness*(theNormalizedRoughness: StandardShortReal): StandardShortReal {.
    cdecl, importcpp: "Graphic3d_PBRMaterial::Roughness(@)", header: "Graphic3d_PBRMaterial.hxx".}
proc roughness*(this: Graphic3dPBRMaterial): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Roughness", header: "Graphic3d_PBRMaterial.hxx".}
proc normalizedRoughness*(this: Graphic3dPBRMaterial): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "NormalizedRoughness", header: "Graphic3d_PBRMaterial.hxx".}
proc setRoughness*(this: var Graphic3dPBRMaterial; theRoughness: StandardShortReal) {.
    cdecl, importcpp: "SetRoughness", header: "Graphic3d_PBRMaterial.hxx".}
proc ior*(this: Graphic3dPBRMaterial): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "IOR", header: "Graphic3d_PBRMaterial.hxx".}
proc setIOR*(this: var Graphic3dPBRMaterial; theIOR: StandardShortReal) {.cdecl,
    importcpp: "SetIOR", header: "Graphic3d_PBRMaterial.hxx".}
proc color*(this: Graphic3dPBRMaterial): QuantityColorRGBA {.noSideEffect, cdecl,
    importcpp: "Color", header: "Graphic3d_PBRMaterial.hxx".}
proc setColor*(this: var Graphic3dPBRMaterial; theColor: QuantityColorRGBA) {.cdecl,
    importcpp: "SetColor", header: "Graphic3d_PBRMaterial.hxx".}
proc setColor*(this: var Graphic3dPBRMaterial; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "Graphic3d_PBRMaterial.hxx".}
proc alpha*(this: Graphic3dPBRMaterial): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Alpha", header: "Graphic3d_PBRMaterial.hxx".}
  ## ! Modifies alpha component.
proc setAlpha*(this: var Graphic3dPBRMaterial; theAlpha: StandardShortReal) {.cdecl,
    importcpp: "SetAlpha", header: "Graphic3d_PBRMaterial.hxx".}
proc emission*(this: Graphic3dPBRMaterial): Graphic3dVec3 {.noSideEffect, cdecl,
    importcpp: "Emission", header: "Graphic3d_PBRMaterial.hxx".}
proc setEmission*(this: var Graphic3dPBRMaterial; theEmission: Graphic3dVec3) {.cdecl,
    importcpp: "SetEmission", header: "Graphic3d_PBRMaterial.hxx".}
proc setBSDF*(this: var Graphic3dPBRMaterial; theBSDF: Graphic3dBSDF) {.cdecl,
    importcpp: "SetBSDF", header: "Graphic3d_PBRMaterial.hxx".}
proc `==`*(this: Graphic3dPBRMaterial; theOther: Graphic3dPBRMaterial): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "Graphic3d_PBRMaterial.hxx".}
proc generateEnvLUT*(theLUT: Handle[ImagePixMap];
                    theNbIntegralSamples: cuint = 1024) {.cdecl,
    importcpp: "Graphic3d_PBRMaterial::GenerateEnvLUT(@)", header: "Graphic3d_PBRMaterial.hxx".}
proc roughnessFromSpecular*(theSpecular: QuantityColor; theShiness: cfloat): StandardShortReal {.
    cdecl, importcpp: "Graphic3d_PBRMaterial::RoughnessFromSpecular(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc metallicFromSpecular*(theSpecular: QuantityColor): StandardShortReal {.cdecl,
    importcpp: "Graphic3d_PBRMaterial::MetallicFromSpecular(@)", header: "Graphic3d_PBRMaterial.hxx".}
proc minRoughness*(): StandardShortReal {.cdecl, importcpp: "Graphic3d_PBRMaterial::MinRoughness(@)",
                                       header: "Graphic3d_PBRMaterial.hxx".}
proc specIBLMapSamplesFactor*(theProbability: StandardShortReal;
                             theRoughness: StandardShortReal): StandardShortReal {.
    cdecl, importcpp: "Graphic3d_PBRMaterial::SpecIBLMapSamplesFactor(@)",
    header: "Graphic3d_PBRMaterial.hxx".}
proc dumpJson*(this: Graphic3dPBRMaterial; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_PBRMaterial.hxx".}
