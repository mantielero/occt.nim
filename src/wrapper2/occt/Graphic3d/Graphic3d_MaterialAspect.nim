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

type
  Graphic3dMaterialAspect* {.importcpp: "Graphic3d_MaterialAspect",
                            header: "Graphic3d_MaterialAspect.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## the
                                                                                 ## number
                                                                                 ## of
                                                                                 ## predefined
                                                                                 ## textures.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## a
                                                                                 ## material
                                                                                 ## from
                                                                                 ## default
                                                                                 ## values.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Deactivates
                                                                                 ## the
                                                                                 ## reflective
                                                                                 ## properties
                                                                                 ## of
                                                                                 ## the
                                                                                 ## surface
                                                                                 ## with
                                                                                 ## specified
                                                                                 ## reflection
                                                                                 ## type.


proc numberOfMaterials*(): StandardInteger {.
    importcpp: "Graphic3d_MaterialAspect::NumberOfMaterials(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc materialName*(theRank: StandardInteger): StandardCString {.
    importcpp: "Graphic3d_MaterialAspect::MaterialName(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc materialType*(theRank: StandardInteger): Graphic3dTypeOfMaterial {.
    importcpp: "Graphic3d_MaterialAspect::MaterialType(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc materialFromName*(theName: StandardCString;
                      theMat: var Graphic3dNameOfMaterial): StandardBoolean {.
    importcpp: "Graphic3d_MaterialAspect::MaterialFromName(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc materialFromName*(theName: StandardCString): Graphic3dNameOfMaterial {.
    importcpp: "Graphic3d_MaterialAspect::MaterialFromName(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc constructGraphic3dMaterialAspect*(): Graphic3dMaterialAspect {.constructor,
    importcpp: "Graphic3d_MaterialAspect(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc constructGraphic3dMaterialAspect*(theName: Graphic3dNameOfMaterial): Graphic3dMaterialAspect {.
    constructor, importcpp: "Graphic3d_MaterialAspect(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc name*(this: Graphic3dMaterialAspect): Graphic3dNameOfMaterial {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_MaterialAspect.hxx".}
proc requestedName*(this: Graphic3dMaterialAspect): Graphic3dNameOfMaterial {.
    noSideEffect, importcpp: "RequestedName",
    header: "Graphic3d_MaterialAspect.hxx".}
proc stringName*(this: Graphic3dMaterialAspect): TCollectionAsciiString {.
    noSideEffect, importcpp: "StringName", header: "Graphic3d_MaterialAspect.hxx".}
proc materialName*(this: Graphic3dMaterialAspect): StandardCString {.noSideEffect,
    importcpp: "MaterialName", header: "Graphic3d_MaterialAspect.hxx".}
proc setMaterialName*(this: var Graphic3dMaterialAspect;
                     theName: TCollectionAsciiString) {.
    importcpp: "SetMaterialName", header: "Graphic3d_MaterialAspect.hxx".}
proc reset*(this: var Graphic3dMaterialAspect) {.importcpp: "Reset",
    header: "Graphic3d_MaterialAspect.hxx".}
proc color*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_MaterialAspect.hxx".}
proc setColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "Graphic3d_MaterialAspect.hxx".}
proc transparency*(this: Graphic3dMaterialAspect): StandardShortReal {.noSideEffect,
    importcpp: "Transparency", header: "Graphic3d_MaterialAspect.hxx".}
proc alpha*(this: Graphic3dMaterialAspect): StandardShortReal {.noSideEffect,
    importcpp: "Alpha", header: "Graphic3d_MaterialAspect.hxx".}
proc setTransparency*(this: var Graphic3dMaterialAspect; theValue: StandardShortReal) {.
    importcpp: "SetTransparency", header: "Graphic3d_MaterialAspect.hxx".}
proc setAlpha*(this: var Graphic3dMaterialAspect; theValue: StandardShortReal) {.
    importcpp: "SetAlpha", header: "Graphic3d_MaterialAspect.hxx".}
proc ambientColor*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect,
    importcpp: "AmbientColor", header: "Graphic3d_MaterialAspect.hxx".}
proc setAmbientColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.
    importcpp: "SetAmbientColor", header: "Graphic3d_MaterialAspect.hxx".}
proc diffuseColor*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect,
    importcpp: "DiffuseColor", header: "Graphic3d_MaterialAspect.hxx".}
proc setDiffuseColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.
    importcpp: "SetDiffuseColor", header: "Graphic3d_MaterialAspect.hxx".}
proc specularColor*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect,
    importcpp: "SpecularColor", header: "Graphic3d_MaterialAspect.hxx".}
proc setSpecularColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.
    importcpp: "SetSpecularColor", header: "Graphic3d_MaterialAspect.hxx".}
proc emissiveColor*(this: Graphic3dMaterialAspect): QuantityColor {.noSideEffect,
    importcpp: "EmissiveColor", header: "Graphic3d_MaterialAspect.hxx".}
proc setEmissiveColor*(this: var Graphic3dMaterialAspect; theColor: QuantityColor) {.
    importcpp: "SetEmissiveColor", header: "Graphic3d_MaterialAspect.hxx".}
proc shininess*(this: Graphic3dMaterialAspect): StandardShortReal {.noSideEffect,
    importcpp: "Shininess", header: "Graphic3d_MaterialAspect.hxx".}
proc setShininess*(this: var Graphic3dMaterialAspect; theValue: StandardShortReal) {.
    importcpp: "SetShininess", header: "Graphic3d_MaterialAspect.hxx".}
proc increaseShine*(this: var Graphic3dMaterialAspect; theDelta: StandardShortReal) {.
    importcpp: "IncreaseShine", header: "Graphic3d_MaterialAspect.hxx".}
proc refractionIndex*(this: Graphic3dMaterialAspect): StandardShortReal {.
    noSideEffect, importcpp: "RefractionIndex",
    header: "Graphic3d_MaterialAspect.hxx".}
proc setRefractionIndex*(this: var Graphic3dMaterialAspect;
                        theValue: StandardShortReal) {.
    importcpp: "SetRefractionIndex", header: "Graphic3d_MaterialAspect.hxx".}
proc bsdf*(this: Graphic3dMaterialAspect): Graphic3dBSDF {.noSideEffect,
    importcpp: "BSDF", header: "Graphic3d_MaterialAspect.hxx".}
proc setBSDF*(this: var Graphic3dMaterialAspect; theBSDF: Graphic3dBSDF) {.
    importcpp: "SetBSDF", header: "Graphic3d_MaterialAspect.hxx".}
proc pBRMaterial*(this: Graphic3dMaterialAspect): Graphic3dPBRMaterial {.
    noSideEffect, importcpp: "PBRMaterial", header: "Graphic3d_MaterialAspect.hxx".}
proc setPBRMaterial*(this: var Graphic3dMaterialAspect;
                    thePBRMaterial: Graphic3dPBRMaterial) {.
    importcpp: "SetPBRMaterial", header: "Graphic3d_MaterialAspect.hxx".}
proc reflectionMode*(this: Graphic3dMaterialAspect;
                    theType: Graphic3dTypeOfReflection): StandardBoolean {.
    noSideEffect, importcpp: "ReflectionMode",
    header: "Graphic3d_MaterialAspect.hxx".}
proc materialType*(this: Graphic3dMaterialAspect): Graphic3dTypeOfMaterial {.
    noSideEffect, importcpp: "MaterialType", header: "Graphic3d_MaterialAspect.hxx".}
proc materialType*(this: Graphic3dMaterialAspect; theType: Graphic3dTypeOfMaterial): StandardBoolean {.
    noSideEffect, importcpp: "MaterialType", header: "Graphic3d_MaterialAspect.hxx".}
proc setMaterialType*(this: var Graphic3dMaterialAspect;
                     theType: Graphic3dTypeOfMaterial) {.
    importcpp: "SetMaterialType", header: "Graphic3d_MaterialAspect.hxx".}
proc isDifferent*(this: Graphic3dMaterialAspect; theOther: Graphic3dMaterialAspect): StandardBoolean {.
    noSideEffect, importcpp: "IsDifferent", header: "Graphic3d_MaterialAspect.hxx".}
proc isEqual*(this: Graphic3dMaterialAspect; theOther: Graphic3dMaterialAspect): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "Graphic3d_MaterialAspect.hxx".}
proc `==`*(this: Graphic3dMaterialAspect; theOther: Graphic3dMaterialAspect): StandardBoolean {.
    noSideEffect, importcpp: "(# == #)", header: "Graphic3d_MaterialAspect.hxx".}
proc dumpJson*(this: Graphic3dMaterialAspect; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_MaterialAspect.hxx".}
## !!!Ignored construct:  public : ! Deactivates the reflective properties of the surface with specified reflection type. Standard_DEPRECATED ( Deprecated method, specific material component should be zerroed instead ) void SetReflectionModeOff ( const Graphic3d_TypeOfReflection theType ) { if ( ! ReflectionMode ( theType ) ) { return ; } switch ( theType ) { case Graphic3d_TOR_AMBIENT : SetAmbientColor ( Quantity_NOC_BLACK ) ; break ; case Graphic3d_TOR_DIFFUSE : SetDiffuseColor ( Quantity_NOC_BLACK ) ; break ; case Graphic3d_TOR_SPECULAR : SetSpecularColor ( Quantity_NOC_BLACK ) ; break ; case Graphic3d_TOR_EMISSION : SetEmissiveColor ( Quantity_NOC_BLACK ) ; break ; } } private : ! Initialize the standard material. void init ( const Graphic3d_NameOfMaterial theName ) ;
## Error: identifier expected, but got: Deprecated method, specific material component should be zerroed instead!!!

proc setUserMaterial*(this: var Graphic3dMaterialAspect) {.
    importcpp: "setUserMaterial", header: "Graphic3d_MaterialAspect.hxx".}

