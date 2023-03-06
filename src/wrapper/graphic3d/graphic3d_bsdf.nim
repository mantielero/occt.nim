import ../standard/standard_types
import graphic3d_types





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






proc newGraphic3dFresnel*(): Graphic3dFresnel {.cdecl, constructor,
    importcpp: "Graphic3d_Fresnel(@)", header: "Graphic3d_BSDF.hxx".}
proc createSchlick*(theSpecularColor: Graphic3dVec3): Graphic3dFresnel {.cdecl,
    importcpp: "Graphic3d_Fresnel::CreateSchlick(@)", header: "Graphic3d_BSDF.hxx".}
proc createConstant*(theReflection: StandardShortReal): Graphic3dFresnel {.cdecl,
    importcpp: "Graphic3d_Fresnel::CreateConstant(@)", header: "Graphic3d_BSDF.hxx".}
proc createDielectric*(theRefractionIndex: StandardShortReal): Graphic3dFresnel {.
    cdecl, importcpp: "Graphic3d_Fresnel::CreateDielectric(@)", header: "Graphic3d_BSDF.hxx".}
proc createConductor*(theRefractionIndex: StandardShortReal;
                     theAbsorptionIndex: StandardShortReal): Graphic3dFresnel {.
    cdecl, importcpp: "Graphic3d_Fresnel::CreateConductor(@)", header: "Graphic3d_BSDF.hxx".}
proc createConductor*(theRefractionIndex: Graphic3dVec3;
                     theAbsorptionIndex: Graphic3dVec3): Graphic3dFresnel {.cdecl,
    importcpp: "Graphic3d_Fresnel::CreateConductor(@)", header: "Graphic3d_BSDF.hxx".}
proc serialize*(this: Graphic3dFresnel): Graphic3dVec4 {.noSideEffect, cdecl,
    importcpp: "Serialize", header: "Graphic3d_BSDF.hxx".}
proc `==`*(this: Graphic3dFresnel; theOther: Graphic3dFresnel): bool {.noSideEffect,
    cdecl, importcpp: "(# == #)", header: "Graphic3d_BSDF.hxx".}
proc fresnelType*(this: Graphic3dFresnel): Graphic3dFresnelModel {.noSideEffect,
    cdecl, importcpp: "FresnelType", header: "Graphic3d_BSDF.hxx".}
proc dumpJson*(this: Graphic3dFresnel; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
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



proc createDiffuse*(theWeight: Graphic3dVec3): Graphic3dBSDF {.cdecl,
    importcpp: "Graphic3d_BSDF::CreateDiffuse(@)", header: "Graphic3d_BSDF.hxx".}
proc createMetallic*(theWeight: Graphic3dVec3; theFresnel: Graphic3dFresnel;
                    theRoughness: StandardShortReal): Graphic3dBSDF {.cdecl,
    importcpp: "Graphic3d_BSDF::CreateMetallic(@)", header: "Graphic3d_BSDF.hxx".}
proc createTransparent*(theWeight: Graphic3dVec3;
                       theAbsorptionColor: Graphic3dVec3;
                       theAbsorptionCoeff: StandardShortReal): Graphic3dBSDF {.
    cdecl, importcpp: "Graphic3d_BSDF::CreateTransparent(@)", header: "Graphic3d_BSDF.hxx".}
proc createGlass*(theWeight: Graphic3dVec3; theAbsorptionColor: Graphic3dVec3;
                 theAbsorptionCoeff: StandardShortReal;
                 theRefractionIndex: StandardShortReal): Graphic3dBSDF {.cdecl,
    importcpp: "Graphic3d_BSDF::CreateGlass(@)", header: "Graphic3d_BSDF.hxx".}
proc createMetallicRoughness*(thePbr: Graphic3dPBRMaterial): Graphic3dBSDF {.cdecl,
    importcpp: "Graphic3d_BSDF::CreateMetallicRoughness(@)", header: "Graphic3d_BSDF.hxx".}
proc newGraphic3dBSDF*(): Graphic3dBSDF {.cdecl, constructor,
                                       importcpp: "Graphic3d_BSDF(@)",
                                       header: "Graphic3d_BSDF.hxx".}
proc normalize*(this: var Graphic3dBSDF) {.cdecl, importcpp: "Normalize", header: "Graphic3d_BSDF.hxx".}
proc `==`*(this: Graphic3dBSDF; theOther: Graphic3dBSDF): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "Graphic3d_BSDF.hxx".}
proc dumpJson*(this: Graphic3dBSDF; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_BSDF.hxx".}


