import graphic3d_types

##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

## ! This class allows the definition of the type of a surface.
## ! Aspect attributes of a 3d face.
## ! Keywords: Material, FillArea, Shininess, Ambient, Color, Diffuse,
## ! Specular, Transparency, Emissive, ReflectionMode,
## ! BackFace, FrontFace, Reflection, Absorbtion



proc numberOfMaterials*(): cint {.cdecl, importcpp: "Graphic3d_MaterialAspect::NumberOfMaterials(@)",
                               header: "Graphic3d_MaterialAspect.hxx".}
proc materialName*(theRank: cint): cstring {.cdecl,
    importcpp: "Graphic3d_MaterialAspect::MaterialName(@)", header: "Graphic3d_MaterialAspect.hxx".}
proc materialType*(theRank: cint): Graphic3dTypeOfMaterial {.cdecl,
    importcpp: "Graphic3d_MaterialAspect::MaterialType(@)", header: "Graphic3d_MaterialAspect.hxx".}
proc materialFromName*(theName: cstring; theMat: var Graphic3dNameOfMaterial): bool {.
    cdecl, importcpp: "Graphic3d_MaterialAspect::MaterialFromName(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc materialFromName*(theName: cstring): Graphic3dNameOfMaterial {.cdecl,
    importcpp: "Graphic3d_MaterialAspect::MaterialFromName(@)", header: "Graphic3d_MaterialAspect.hxx".}
proc newGraphic3dMaterialAspect*(): Graphic3dMaterialAspect {.cdecl, constructor,
    importcpp: "Graphic3d_MaterialAspect(@)", header: "Graphic3d_MaterialAspect.hxx".}
proc newGraphic3dMaterialAspect*(theName: Graphic3dNameOfMaterial): Graphic3dMaterialAspect {.
    cdecl, constructor, importcpp: "Graphic3d_MaterialAspect(@)", header: "Graphic3d_MaterialAspect.hxx".}
proc name*(this: Graphic3dMaterialAspect): Graphic3dNameOfMaterial {.noSideEffect,
    cdecl, importcpp: "Name", header: "Graphic3d_MaterialAspect.hxx".}
proc requestedName*(this: Graphic3dMaterialAspect): Graphic3dNameOfMaterial {.
    noSideEffect, cdecl, importcpp: "RequestedName", header: "Graphic3d_MaterialAspect.hxx".}
proc stringName*(this: Graphic3dMaterialAspect): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "StringName", header: "Graphic3d_MaterialAspect.hxx".}
proc materialName*(this: Graphic3dMaterialAspect): cstring {.noSideEffect, cdecl,
    importcpp: "MaterialName", header: "Graphic3d_MaterialAspect.hxx".}
proc setMaterialName*(this: var Graphic3dMaterialAspect;
                     theName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetMaterialName", header: "Graphic3d_MaterialAspect.hxx".}
proc reset*(this: var Graphic3dMaterialAspect) {.cdecl, importcpp: "Reset",
    header: "Graphic3d_MaterialAspect.hxx".}
proc color*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect, cdecl,
    importcpp: "Color", header: "Graphic3d_MaterialAspect.hxx".}
proc setColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "Graphic3d_MaterialAspect.hxx".}
proc transparency*(this: Graphic3dMaterialAspect): StandardShortReal {.noSideEffect,
    cdecl, importcpp: "Transparency", header: "Graphic3d_MaterialAspect.hxx".}
proc alpha*(this: Graphic3dMaterialAspect): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Alpha", header: "Graphic3d_MaterialAspect.hxx".}
proc setTransparency*(this: var Graphic3dMaterialAspect; theValue: StandardShortReal) {.
    cdecl, importcpp: "SetTransparency", header: "Graphic3d_MaterialAspect.hxx".}
proc setAlpha*(this: var Graphic3dMaterialAspect; theValue: StandardShortReal) {.
    cdecl, importcpp: "SetAlpha", header: "Graphic3d_MaterialAspect.hxx".}
proc ambientColor*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect,
    cdecl, importcpp: "AmbientColor", header: "Graphic3d_MaterialAspect.hxx".}
proc setAmbientColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.
    cdecl, importcpp: "SetAmbientColor", header: "Graphic3d_MaterialAspect.hxx".}
proc diffuseColor*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect,
    cdecl, importcpp: "DiffuseColor", header: "Graphic3d_MaterialAspect.hxx".}
proc setDiffuseColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.
    cdecl, importcpp: "SetDiffuseColor", header: "Graphic3d_MaterialAspect.hxx".}
proc specularColor*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect,
    cdecl, importcpp: "SpecularColor", header: "Graphic3d_MaterialAspect.hxx".}
proc setSpecularColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.
    cdecl, importcpp: "SetSpecularColor", header: "Graphic3d_MaterialAspect.hxx".}
proc emissiveColor*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect,
    cdecl, importcpp: "EmissiveColor", header: "Graphic3d_MaterialAspect.hxx".}
proc setEmissiveColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.
    cdecl, importcpp: "SetEmissiveColor", header: "Graphic3d_MaterialAspect.hxx".}
proc shininess*(this: Graphic3dMaterialAspect): StandardShortReal {.noSideEffect,
    cdecl, importcpp: "Shininess", header: "Graphic3d_MaterialAspect.hxx".}
proc setShininess*(this: var Graphic3dMaterialAspect; theValue: StandardShortReal) {.
    cdecl, importcpp: "SetShininess", header: "Graphic3d_MaterialAspect.hxx".}
proc increaseShine*(this: var Graphic3dMaterialAspect; theDelta: StandardShortReal) {.
    cdecl, importcpp: "IncreaseShine", header: "Graphic3d_MaterialAspect.hxx".}
proc refractionIndex*(this: Graphic3dMaterialAspect): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "RefractionIndex", header: "Graphic3d_MaterialAspect.hxx".}
proc setRefractionIndex*(this: var Graphic3dMaterialAspect;
                        theValue: StandardShortReal) {.cdecl,
    importcpp: "SetRefractionIndex", header: "Graphic3d_MaterialAspect.hxx".}
proc bsdf*(this: Graphic3dMaterialAspect): Graphic3dBSDF {.noSideEffect, cdecl,
    importcpp: "BSDF", header: "Graphic3d_MaterialAspect.hxx".}
proc setBSDF*(this: var Graphic3dMaterialAspect; theBSDF: Graphic3dBSDF) {.cdecl,
    importcpp: "SetBSDF", header: "Graphic3d_MaterialAspect.hxx".}
proc pBRMaterial*(this: Graphic3dMaterialAspect): Graphic3dPBRMaterial {.
    noSideEffect, cdecl, importcpp: "PBRMaterial", header: "Graphic3d_MaterialAspect.hxx".}
proc setPBRMaterial*(this: var Graphic3dMaterialAspect;
                    thePBRMaterial: Graphic3dPBRMaterial) {.cdecl,
    importcpp: "SetPBRMaterial", header: "Graphic3d_MaterialAspect.hxx".}
proc reflectionMode*(this: Graphic3dMaterialAspect;
                    theType: Graphic3dTypeOfReflection): bool {.noSideEffect, cdecl,
    importcpp: "ReflectionMode", header: "Graphic3d_MaterialAspect.hxx".}
proc materialType*(this: Graphic3dMaterialAspect): Graphic3dTypeOfMaterial {.
    noSideEffect, cdecl, importcpp: "MaterialType", header: "Graphic3d_MaterialAspect.hxx".}
proc materialType*(this: Graphic3dMaterialAspect; theType: Graphic3dTypeOfMaterial): bool {.
    noSideEffect, cdecl, importcpp: "MaterialType", header: "Graphic3d_MaterialAspect.hxx".}
proc setMaterialType*(this: var Graphic3dMaterialAspect;
                     theType: Graphic3dTypeOfMaterial) {.cdecl,
    importcpp: "SetMaterialType", header: "Graphic3d_MaterialAspect.hxx".}
proc isDifferent*(this: Graphic3dMaterialAspect; theOther: Graphic3dMaterialAspect): bool {.
    noSideEffect, cdecl, importcpp: "IsDifferent", header: "Graphic3d_MaterialAspect.hxx".}
proc isEqual*(this: Graphic3dMaterialAspect; theOther: Graphic3dMaterialAspect): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "Graphic3d_MaterialAspect.hxx".}
proc `==`*(this: Graphic3dMaterialAspect; theOther: Graphic3dMaterialAspect): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "Graphic3d_MaterialAspect.hxx".}
proc dumpJson*(this: Graphic3dMaterialAspect; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_MaterialAspect.hxx".}
proc setReflectionModeOff*(this: var Graphic3dMaterialAspect;
                          theType: Graphic3dTypeOfReflection) {.cdecl,
    importcpp: "SetReflectionModeOff", header: "Graphic3d_MaterialAspect.hxx".}
