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

import
  Graphic3d_Vec3, Graphic3d_Vec4

discard "forward decl of Graphic3d_PBRMaterial"
type
  Graphic3d_FresnelModel* {.size: sizeof(cint),
                           importcpp: "Graphic3d_FresnelModel",
                           header: "Graphic3d_BSDF.hxx".} = enum
    Graphic3d_FM_SCHLICK = 0, Graphic3d_FM_CONSTANT = 1, Graphic3d_FM_CONDUCTOR = 2,
    Graphic3d_FM_DIELECTRIC = 3


## ! Describes Fresnel reflectance parameters.

type
  Graphic3d_Fresnel* {.importcpp: "Graphic3d_Fresnel",
                      header: "Graphic3d_BSDF.hxx", bycopy.} = object ## ! Creates uninitialized Fresnel factor.
                                                                 ## ! Returns serialized representation of Fresnel factor.
                                                                 ## ! Creates new Fresnel reflectance factor.
                                                                 ## ! Type of Fresnel approximation.
    ## ! Serialized parameters of specific approximation.


proc constructGraphic3d_Fresnel*(): Graphic3d_Fresnel {.constructor,
    importcpp: "Graphic3d_Fresnel(@)", header: "Graphic3d_BSDF.hxx".}
proc CreateSchlick*(theSpecularColor: Graphic3d_Vec3): Graphic3d_Fresnel {.
    importcpp: "Graphic3d_Fresnel::CreateSchlick(@)", header: "Graphic3d_BSDF.hxx".}
proc CreateConstant*(theReflection: Standard_ShortReal): Graphic3d_Fresnel {.
    importcpp: "Graphic3d_Fresnel::CreateConstant(@)",
    header: "Graphic3d_BSDF.hxx".}
proc CreateDielectric*(theRefractionIndex: Standard_ShortReal): Graphic3d_Fresnel {.
    importcpp: "Graphic3d_Fresnel::CreateDielectric(@)",
    header: "Graphic3d_BSDF.hxx".}
proc CreateConductor*(theRefractionIndex: Standard_ShortReal;
                     theAbsorptionIndex: Standard_ShortReal): Graphic3d_Fresnel {.
    importcpp: "Graphic3d_Fresnel::CreateConductor(@)",
    header: "Graphic3d_BSDF.hxx".}
proc CreateConductor*(theRefractionIndex: Graphic3d_Vec3;
                     theAbsorptionIndex: Graphic3d_Vec3): Graphic3d_Fresnel {.
    importcpp: "Graphic3d_Fresnel::CreateConductor(@)",
    header: "Graphic3d_BSDF.hxx".}
proc Serialize*(this: Graphic3d_Fresnel): Graphic3d_Vec4 {.noSideEffect,
    importcpp: "Serialize", header: "Graphic3d_BSDF.hxx".}
proc `==`*(this: Graphic3d_Fresnel; theOther: Graphic3d_Fresnel): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Graphic3d_BSDF.hxx".}
proc FresnelType*(this: Graphic3d_Fresnel): Graphic3d_FresnelModel {.noSideEffect,
    importcpp: "FresnelType", header: "Graphic3d_BSDF.hxx".}
proc DumpJson*(this: Graphic3d_Fresnel; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
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
  Graphic3d_BSDF* {.importcpp: "Graphic3d_BSDF", header: "Graphic3d_BSDF.hxx", bycopy.} = object ##
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
    Kc* {.importc: "Kc".}: Graphic3d_Vec4 ## ! Weight of base diffuse BRDF.
    Kd* {.importc: "Kd".}: Graphic3d_Vec3 ## ! Weight of base specular/glossy BRDF.
    Ks* {.importc: "Ks".}: Graphic3d_Vec4 ## ! Weight of base specular/glossy BTDF.
    Kt* {.importc: "Kt".}: Graphic3d_Vec3 ## ! Radiance emitted by the surface.
    Le* {.importc: "Le".}: Graphic3d_Vec3 ## ! Volume scattering color/density.
    Absorption* {.importc: "Absorption".}: Graphic3d_Vec4 ## ! Parameters of Fresnel reflectance of coat layer.
    FresnelCoat* {.importc: "FresnelCoat".}: Graphic3d_Fresnel ## ! Parameters of Fresnel reflectance of base layer.
    FresnelBase* {.importc: "FresnelBase".}: Graphic3d_Fresnel


proc CreateDiffuse*(theWeight: Graphic3d_Vec3): Graphic3d_BSDF {.
    importcpp: "Graphic3d_BSDF::CreateDiffuse(@)", header: "Graphic3d_BSDF.hxx".}
proc CreateMetallic*(theWeight: Graphic3d_Vec3; theFresnel: Graphic3d_Fresnel;
                    theRoughness: Standard_ShortReal): Graphic3d_BSDF {.
    importcpp: "Graphic3d_BSDF::CreateMetallic(@)", header: "Graphic3d_BSDF.hxx".}
proc CreateTransparent*(theWeight: Graphic3d_Vec3;
                       theAbsorptionColor: Graphic3d_Vec3;
                       theAbsorptionCoeff: Standard_ShortReal): Graphic3d_BSDF {.
    importcpp: "Graphic3d_BSDF::CreateTransparent(@)",
    header: "Graphic3d_BSDF.hxx".}
proc CreateGlass*(theWeight: Graphic3d_Vec3; theAbsorptionColor: Graphic3d_Vec3;
                 theAbsorptionCoeff: Standard_ShortReal;
                 theRefractionIndex: Standard_ShortReal): Graphic3d_BSDF {.
    importcpp: "Graphic3d_BSDF::CreateGlass(@)", header: "Graphic3d_BSDF.hxx".}
proc CreateMetallicRoughness*(thePbr: Graphic3d_PBRMaterial): Graphic3d_BSDF {.
    importcpp: "Graphic3d_BSDF::CreateMetallicRoughness(@)",
    header: "Graphic3d_BSDF.hxx".}
proc constructGraphic3d_BSDF*(): Graphic3d_BSDF {.constructor,
    importcpp: "Graphic3d_BSDF(@)", header: "Graphic3d_BSDF.hxx".}
proc Normalize*(this: var Graphic3d_BSDF) {.importcpp: "Normalize",
                                        header: "Graphic3d_BSDF.hxx".}
proc `==`*(this: Graphic3d_BSDF; theOther: Graphic3d_BSDF): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Graphic3d_BSDF.hxx".}
proc DumpJson*(this: Graphic3d_BSDF; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_BSDF.hxx".}