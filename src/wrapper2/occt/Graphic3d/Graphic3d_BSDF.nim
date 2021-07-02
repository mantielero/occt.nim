##  Created on: 2015-01-15
##  Created by: Danila ULYANOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

discard "forward decl of Graphic3d_PBRMaterial"
type
  Graphic3dFresnelModel* {.size: sizeof(cint), importcpp: "Graphic3d_FresnelModel",
                          header: "Graphic3d_BSDF.hxx".} = enum
    Graphic3dFM_SCHLICK = 0, Graphic3dFM_CONSTANT = 1, Graphic3dFM_CONDUCTOR = 2,
    Graphic3dFM_DIELECTRIC = 3


## ! Describes Fresnel reflectance parameters.

type
  Graphic3dFresnel* {.importcpp: "Graphic3d_Fresnel", header: "Graphic3d_BSDF.hxx",
                     bycopy.} = object ## ! Creates uninitialized Fresnel factor.
                                    ## ! Returns serialized representation of Fresnel factor.
                                    ## ! Creates new Fresnel reflectance factor.
                                    ## ! Type of Fresnel approximation.
    ## ! Serialized parameters of specific approximation.


proc constructGraphic3dFresnel*(): Graphic3dFresnel {.constructor,
    importcpp: "Graphic3d_Fresnel(@)", header: "Graphic3d_BSDF.hxx".}
proc createSchlick*(theSpecularColor: Graphic3dVec3): Graphic3dFresnel {.
    importcpp: "Graphic3d_Fresnel::CreateSchlick(@)", header: "Graphic3d_BSDF.hxx".}
proc createConstant*(theReflection: StandardShortReal): Graphic3dFresnel {.
    importcpp: "Graphic3d_Fresnel::CreateConstant(@)",
    header: "Graphic3d_BSDF.hxx".}
proc createDielectric*(theRefractionIndex: StandardShortReal): Graphic3dFresnel {.
    importcpp: "Graphic3d_Fresnel::CreateDielectric(@)",
    header: "Graphic3d_BSDF.hxx".}
proc createConductor*(theRefractionIndex: StandardShortReal;
                     theAbsorptionIndex: StandardShortReal): Graphic3dFresnel {.
    importcpp: "Graphic3d_Fresnel::CreateConductor(@)",
    header: "Graphic3d_BSDF.hxx".}
proc createConductor*(theRefractionIndex: Graphic3dVec3;
                     theAbsorptionIndex: Graphic3dVec3): Graphic3dFresnel {.
    importcpp: "Graphic3d_Fresnel::CreateConductor(@)",
    header: "Graphic3d_BSDF.hxx".}
proc serialize*(this: Graphic3dFresnel): Graphic3dVec4 {.noSideEffect,
    importcpp: "Serialize", header: "Graphic3d_BSDF.hxx".}
proc `==`*(this: Graphic3dFresnel; theOther: Graphic3dFresnel): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Graphic3d_BSDF.hxx".}
proc fresnelType*(this: Graphic3dFresnel): Graphic3dFresnelModel {.noSideEffect,
    importcpp: "FresnelType", header: "Graphic3d_BSDF.hxx".}
proc dumpJson*(this: Graphic3dFresnel; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_BSDF.hxx".}
## ! Describes material's BSDF (Bidirectional Scattering Distribution Function) used
## ! for physically-based rendering (in path tracing engine). BSDF is represented as
## ! weighted mixture of basic BRDFs/BTDFs (Bidirectional Reflectance (Transmittance)
## ! Distribution Functions).
## !
## ! NOTE: OCCT uses two-layer material model. We have base diffuse, glossy, or transmissive
## ! layer, covered by one glossy/specular coat. In the current model, the layers themselves
## ! have no thickness; they can simply reflect light or transmits it to the layer under it.
## ! We use actual BRDF model only for direct reflection by the coat layer. For transmission
## ! through this layer, we approximate it as a flat specular surface.

type
  Graphic3dBSDF* {.importcpp: "Graphic3d_BSDF", header: "Graphic3d_BSDF.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Weight
                                                                                        ## of
                                                                                        ## coat
                                                                                        ## specular/glossy
                                                                                        ## BRDF.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## BSDF
                                                                                        ## describing
                                                                                        ## diffuse
                                                                                        ## (Lambertian)
                                                                                        ## surface.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## uninitialized
                                                                                        ## BSDF.
    kc* {.importc: "Kc".}: Graphic3dVec4 ## ! Weight of base diffuse BRDF.
    kd* {.importc: "Kd".}: Graphic3dVec3 ## ! Weight of base specular/glossy BRDF.
    ks* {.importc: "Ks".}: Graphic3dVec4 ## ! Weight of base specular/glossy BTDF.
    kt* {.importc: "Kt".}: Graphic3dVec3 ## ! Radiance emitted by the surface.
    le* {.importc: "Le".}: Graphic3dVec3 ## ! Volume scattering color/density.
    absorption* {.importc: "Absorption".}: Graphic3dVec4 ## ! Parameters of Fresnel reflectance of coat layer.
    fresnelCoat* {.importc: "FresnelCoat".}: Graphic3dFresnel ## ! Parameters of Fresnel reflectance of base layer.
    fresnelBase* {.importc: "FresnelBase".}: Graphic3dFresnel


proc createDiffuse*(theWeight: Graphic3dVec3): Graphic3dBSDF {.
    importcpp: "Graphic3d_BSDF::CreateDiffuse(@)", header: "Graphic3d_BSDF.hxx".}
proc createMetallic*(theWeight: Graphic3dVec3; theFresnel: Graphic3dFresnel;
                    theRoughness: StandardShortReal): Graphic3dBSDF {.
    importcpp: "Graphic3d_BSDF::CreateMetallic(@)", header: "Graphic3d_BSDF.hxx".}
proc createTransparent*(theWeight: Graphic3dVec3;
                       theAbsorptionColor: Graphic3dVec3;
                       theAbsorptionCoeff: StandardShortReal): Graphic3dBSDF {.
    importcpp: "Graphic3d_BSDF::CreateTransparent(@)",
    header: "Graphic3d_BSDF.hxx".}
proc createGlass*(theWeight: Graphic3dVec3; theAbsorptionColor: Graphic3dVec3;
                 theAbsorptionCoeff: StandardShortReal;
                 theRefractionIndex: StandardShortReal): Graphic3dBSDF {.
    importcpp: "Graphic3d_BSDF::CreateGlass(@)", header: "Graphic3d_BSDF.hxx".}
proc createMetallicRoughness*(thePbr: Graphic3dPBRMaterial): Graphic3dBSDF {.
    importcpp: "Graphic3d_BSDF::CreateMetallicRoughness(@)",
    header: "Graphic3d_BSDF.hxx".}
proc constructGraphic3dBSDF*(): Graphic3dBSDF {.constructor,
    importcpp: "Graphic3d_BSDF(@)", header: "Graphic3d_BSDF.hxx".}
proc normalize*(this: var Graphic3dBSDF) {.importcpp: "Normalize",
                                       header: "Graphic3d_BSDF.hxx".}
proc `==`*(this: Graphic3dBSDF; theOther: Graphic3dBSDF): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Graphic3d_BSDF.hxx".}
proc dumpJson*(this: Graphic3dBSDF; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_BSDF.hxx".}

