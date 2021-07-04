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

import
  Graphic3d_BSDF, Graphic3d_PBRMaterial, Graphic3d_NameOfMaterial,
  Graphic3d_TypeOfMaterial, Graphic3d_TypeOfReflection,
  ../TCollection/TCollection_AsciiString, ../Quantity/Quantity_Color

## ! This class allows the definition of the type of a surface.
## ! Aspect attributes of a 3d face.
## ! Keywords: Material, FillArea, Shininess, Ambient, Color, Diffuse,
## ! Specular, Transparency, Emissive, ReflectionMode,
## ! BackFace, FrontFace, Reflection, Absorbtion

type
  Graphic3d_MaterialAspect* {.importcpp: "Graphic3d_MaterialAspect",
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


proc NumberOfMaterials*(): Standard_Integer {.
    importcpp: "Graphic3d_MaterialAspect::NumberOfMaterials(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc MaterialName*(theRank: Standard_Integer): Standard_CString {.
    importcpp: "Graphic3d_MaterialAspect::MaterialName(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc MaterialType*(theRank: Standard_Integer): Graphic3d_TypeOfMaterial {.
    importcpp: "Graphic3d_MaterialAspect::MaterialType(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc MaterialFromName*(theName: Standard_CString;
                      theMat: var Graphic3d_NameOfMaterial): Standard_Boolean {.
    importcpp: "Graphic3d_MaterialAspect::MaterialFromName(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc MaterialFromName*(theName: Standard_CString): Graphic3d_NameOfMaterial {.
    importcpp: "Graphic3d_MaterialAspect::MaterialFromName(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc constructGraphic3d_MaterialAspect*(): Graphic3d_MaterialAspect {.constructor,
    importcpp: "Graphic3d_MaterialAspect(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc constructGraphic3d_MaterialAspect*(theName: Graphic3d_NameOfMaterial): Graphic3d_MaterialAspect {.
    constructor, importcpp: "Graphic3d_MaterialAspect(@)",
    header: "Graphic3d_MaterialAspect.hxx".}
proc Name*(this: Graphic3d_MaterialAspect): Graphic3d_NameOfMaterial {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_MaterialAspect.hxx".}
proc RequestedName*(this: Graphic3d_MaterialAspect): Graphic3d_NameOfMaterial {.
    noSideEffect, importcpp: "RequestedName",
    header: "Graphic3d_MaterialAspect.hxx".}
proc StringName*(this: Graphic3d_MaterialAspect): TCollection_AsciiString {.
    noSideEffect, importcpp: "StringName", header: "Graphic3d_MaterialAspect.hxx".}
proc MaterialName*(this: Graphic3d_MaterialAspect): Standard_CString {.noSideEffect,
    importcpp: "MaterialName", header: "Graphic3d_MaterialAspect.hxx".}
proc SetMaterialName*(this: var Graphic3d_MaterialAspect;
                     theName: TCollection_AsciiString) {.
    importcpp: "SetMaterialName", header: "Graphic3d_MaterialAspect.hxx".}
proc Reset*(this: var Graphic3d_MaterialAspect) {.importcpp: "Reset",
    header: "Graphic3d_MaterialAspect.hxx".}
proc Color*(this: Graphic3d_MaterialAspect): Quantity_Color {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_MaterialAspect.hxx".}
proc SetColor*(this: var Graphic3d_MaterialAspect; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Graphic3d_MaterialAspect.hxx".}
proc Transparency*(this: Graphic3d_MaterialAspect): Standard_ShortReal {.
    noSideEffect, importcpp: "Transparency", header: "Graphic3d_MaterialAspect.hxx".}
proc Alpha*(this: Graphic3d_MaterialAspect): Standard_ShortReal {.noSideEffect,
    importcpp: "Alpha", header: "Graphic3d_MaterialAspect.hxx".}
proc SetTransparency*(this: var Graphic3d_MaterialAspect;
                     theValue: Standard_ShortReal) {.importcpp: "SetTransparency",
    header: "Graphic3d_MaterialAspect.hxx".}
proc SetAlpha*(this: var Graphic3d_MaterialAspect; theValue: Standard_ShortReal) {.
    importcpp: "SetAlpha", header: "Graphic3d_MaterialAspect.hxx".}
proc AmbientColor*(this: Graphic3d_MaterialAspect): Quantity_Color {.noSideEffect,
    importcpp: "AmbientColor", header: "Graphic3d_MaterialAspect.hxx".}
proc SetAmbientColor*(this: var Graphic3d_MaterialAspect; theColor: Quantity_Color) {.
    importcpp: "SetAmbientColor", header: "Graphic3d_MaterialAspect.hxx".}
proc DiffuseColor*(this: Graphic3d_MaterialAspect): Quantity_Color {.noSideEffect,
    importcpp: "DiffuseColor", header: "Graphic3d_MaterialAspect.hxx".}
proc SetDiffuseColor*(this: var Graphic3d_MaterialAspect; theColor: Quantity_Color) {.
    importcpp: "SetDiffuseColor", header: "Graphic3d_MaterialAspect.hxx".}
proc SpecularColor*(this: Graphic3d_MaterialAspect): Quantity_Color {.noSideEffect,
    importcpp: "SpecularColor", header: "Graphic3d_MaterialAspect.hxx".}
proc SetSpecularColor*(this: var Graphic3d_MaterialAspect; theColor: Quantity_Color) {.
    importcpp: "SetSpecularColor", header: "Graphic3d_MaterialAspect.hxx".}
proc EmissiveColor*(this: Graphic3d_MaterialAspect): Quantity_Color {.noSideEffect,
    importcpp: "EmissiveColor", header: "Graphic3d_MaterialAspect.hxx".}
proc SetEmissiveColor*(this: var Graphic3d_MaterialAspect; theColor: Quantity_Color) {.
    importcpp: "SetEmissiveColor", header: "Graphic3d_MaterialAspect.hxx".}
proc Shininess*(this: Graphic3d_MaterialAspect): Standard_ShortReal {.noSideEffect,
    importcpp: "Shininess", header: "Graphic3d_MaterialAspect.hxx".}
proc SetShininess*(this: var Graphic3d_MaterialAspect; theValue: Standard_ShortReal) {.
    importcpp: "SetShininess", header: "Graphic3d_MaterialAspect.hxx".}
proc IncreaseShine*(this: var Graphic3d_MaterialAspect; theDelta: Standard_ShortReal) {.
    importcpp: "IncreaseShine", header: "Graphic3d_MaterialAspect.hxx".}
proc RefractionIndex*(this: Graphic3d_MaterialAspect): Standard_ShortReal {.
    noSideEffect, importcpp: "RefractionIndex",
    header: "Graphic3d_MaterialAspect.hxx".}
proc SetRefractionIndex*(this: var Graphic3d_MaterialAspect;
                        theValue: Standard_ShortReal) {.
    importcpp: "SetRefractionIndex", header: "Graphic3d_MaterialAspect.hxx".}
proc BSDF*(this: Graphic3d_MaterialAspect): Graphic3d_BSDF {.noSideEffect,
    importcpp: "BSDF", header: "Graphic3d_MaterialAspect.hxx".}
proc SetBSDF*(this: var Graphic3d_MaterialAspect; theBSDF: Graphic3d_BSDF) {.
    importcpp: "SetBSDF", header: "Graphic3d_MaterialAspect.hxx".}
proc PBRMaterial*(this: Graphic3d_MaterialAspect): Graphic3d_PBRMaterial {.
    noSideEffect, importcpp: "PBRMaterial", header: "Graphic3d_MaterialAspect.hxx".}
proc SetPBRMaterial*(this: var Graphic3d_MaterialAspect;
                    thePBRMaterial: Graphic3d_PBRMaterial) {.
    importcpp: "SetPBRMaterial", header: "Graphic3d_MaterialAspect.hxx".}
proc ReflectionMode*(this: Graphic3d_MaterialAspect;
                    theType: Graphic3d_TypeOfReflection): Standard_Boolean {.
    noSideEffect, importcpp: "ReflectionMode",
    header: "Graphic3d_MaterialAspect.hxx".}
proc MaterialType*(this: Graphic3d_MaterialAspect): Graphic3d_TypeOfMaterial {.
    noSideEffect, importcpp: "MaterialType", header: "Graphic3d_MaterialAspect.hxx".}
proc MaterialType*(this: Graphic3d_MaterialAspect;
                  theType: Graphic3d_TypeOfMaterial): Standard_Boolean {.
    noSideEffect, importcpp: "MaterialType", header: "Graphic3d_MaterialAspect.hxx".}
proc SetMaterialType*(this: var Graphic3d_MaterialAspect;
                     theType: Graphic3d_TypeOfMaterial) {.
    importcpp: "SetMaterialType", header: "Graphic3d_MaterialAspect.hxx".}
proc IsDifferent*(this: Graphic3d_MaterialAspect;
                 theOther: Graphic3d_MaterialAspect): Standard_Boolean {.
    noSideEffect, importcpp: "IsDifferent", header: "Graphic3d_MaterialAspect.hxx".}
proc IsEqual*(this: Graphic3d_MaterialAspect; theOther: Graphic3d_MaterialAspect): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Graphic3d_MaterialAspect.hxx".}
proc `==`*(this: Graphic3d_MaterialAspect; theOther: Graphic3d_MaterialAspect): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "Graphic3d_MaterialAspect.hxx".}
proc DumpJson*(this: Graphic3d_MaterialAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_MaterialAspect.hxx".}
## !!!Ignored construct:  public : ! Deactivates the reflective properties of the surface with specified reflection type. Standard_DEPRECATED ( Deprecated method, specific material component should be zerroed instead ) void SetReflectionModeOff ( const Graphic3d_TypeOfReflection theType ) { if ( ! ReflectionMode ( theType ) ) { return ; } switch ( theType ) { case Graphic3d_TOR_AMBIENT : SetAmbientColor ( Quantity_NOC_BLACK ) ; break ; case Graphic3d_TOR_DIFFUSE : SetDiffuseColor ( Quantity_NOC_BLACK ) ; break ; case Graphic3d_TOR_SPECULAR : SetSpecularColor ( Quantity_NOC_BLACK ) ; break ; case Graphic3d_TOR_EMISSION : SetEmissiveColor ( Quantity_NOC_BLACK ) ; break ; } } private : ! Initialize the standard material. void init ( const Graphic3d_NameOfMaterial theName ) ;
## Error: identifier expected, but got: Deprecated method, specific material component should be zerroed instead!!!

proc setUserMaterial*(this: var Graphic3d_MaterialAspect) {.
    importcpp: "setUserMaterial", header: "Graphic3d_MaterialAspect.hxx".}