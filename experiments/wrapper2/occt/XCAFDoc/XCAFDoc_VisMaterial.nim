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

discard "forward decl of Graphic3d_Aspects"
discard "forward decl of Graphic3d_MaterialAspect"
type
  XCAFDocVisMaterial* {.importcpp: "XCAFDoc_VisMaterial",
                       header: "XCAFDoc_VisMaterial.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                      ## !
                                                                                      ## Return
                                                                                      ## attribute
                                                                                      ## GUID.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## interface
                                                                                      ## implementation
                                                                                      ##
                                                                                      ## !
                                                                                      ## Return
                                                                                      ## GUID
                                                                                      ## of
                                                                                      ## this
                                                                                      ## attribute
                                                                                      ## type.
    ## !< material name / tag (transient data)
    ## !< metal-roughness material definition
    ## !< common material definition
    ## !< alpha mode; Graphic3d_AlphaMode_BlendAuto by default
    ## !< alpha cutoff value; 0.5 by default
    ## !< specifies whether the material is double sided; TRUE by default

  XCAFDocVisMaterialbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_VisMaterial::get_type_name(@)",
                            header: "XCAFDoc_VisMaterial.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_VisMaterial::get_type_descriptor(@)",
    header: "XCAFDoc_VisMaterial.hxx".}
proc dynamicType*(this: XCAFDocVisMaterial): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_VisMaterial.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_VisMaterial::GetID(@)",
                           header: "XCAFDoc_VisMaterial.hxx".}
proc constructXCAFDocVisMaterial*(): XCAFDocVisMaterial {.constructor,
    importcpp: "XCAFDoc_VisMaterial(@)", header: "XCAFDoc_VisMaterial.hxx".}
proc isEmpty*(this: XCAFDocVisMaterial): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "XCAFDoc_VisMaterial.hxx".}
proc fillMaterialAspect*(this: XCAFDocVisMaterial;
                        theAspect: var Graphic3dMaterialAspect) {.noSideEffect,
    importcpp: "FillMaterialAspect", header: "XCAFDoc_VisMaterial.hxx".}
proc fillAspect*(this: XCAFDocVisMaterial; theAspect: Handle[Graphic3dAspects]) {.
    noSideEffect, importcpp: "FillAspect", header: "XCAFDoc_VisMaterial.hxx".}
proc hasPbrMaterial*(this: XCAFDocVisMaterial): bool {.noSideEffect,
    importcpp: "HasPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc pbrMaterial*(this: XCAFDocVisMaterial): XCAFDocVisMaterialPBR {.noSideEffect,
    importcpp: "PbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc setPbrMaterial*(this: var XCAFDocVisMaterial;
                    theMaterial: XCAFDocVisMaterialPBR) {.
    importcpp: "SetPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc unsetPbrMaterial*(this: var XCAFDocVisMaterial) {.
    importcpp: "UnsetPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc hasCommonMaterial*(this: XCAFDocVisMaterial): bool {.noSideEffect,
    importcpp: "HasCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc commonMaterial*(this: XCAFDocVisMaterial): XCAFDocVisMaterialCommon {.
    noSideEffect, importcpp: "CommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc setCommonMaterial*(this: var XCAFDocVisMaterial;
                       theMaterial: XCAFDocVisMaterialCommon) {.
    importcpp: "SetCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc unsetCommonMaterial*(this: var XCAFDocVisMaterial) {.
    importcpp: "UnsetCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc baseColor*(this: XCAFDocVisMaterial): QuantityColorRGBA {.noSideEffect,
    importcpp: "BaseColor", header: "XCAFDoc_VisMaterial.hxx".}
proc alphaMode*(this: XCAFDocVisMaterial): Graphic3dAlphaMode {.noSideEffect,
    importcpp: "AlphaMode", header: "XCAFDoc_VisMaterial.hxx".}
proc alphaCutOff*(this: XCAFDocVisMaterial): StandardShortReal {.noSideEffect,
    importcpp: "AlphaCutOff", header: "XCAFDoc_VisMaterial.hxx".}
proc setAlphaMode*(this: var XCAFDocVisMaterial; theMode: Graphic3dAlphaMode;
                  theCutOff: StandardShortReal = 0.5f) {.importcpp: "SetAlphaMode",
    header: "XCAFDoc_VisMaterial.hxx".}
proc isDoubleSided*(this: XCAFDocVisMaterial): bool {.noSideEffect,
    importcpp: "IsDoubleSided", header: "XCAFDoc_VisMaterial.hxx".}
proc setDoubleSided*(this: var XCAFDocVisMaterial; theIsDoubleSided: bool) {.
    importcpp: "SetDoubleSided", header: "XCAFDoc_VisMaterial.hxx".}
proc rawName*(this: XCAFDocVisMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "RawName", header: "XCAFDoc_VisMaterial.hxx".}
proc setRawName*(this: var XCAFDocVisMaterial;
                theName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetRawName", header: "XCAFDoc_VisMaterial.hxx".}
proc isEqual*(this: XCAFDocVisMaterial; theOther: Handle[XCAFDocVisMaterial]): bool {.
    noSideEffect, importcpp: "IsEqual", header: "XCAFDoc_VisMaterial.hxx".}
proc convertToCommonMaterial*(this: var XCAFDocVisMaterial): XCAFDocVisMaterialCommon {.
    importcpp: "ConvertToCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc convertToPbrMaterial*(this: var XCAFDocVisMaterial): XCAFDocVisMaterialPBR {.
    importcpp: "ConvertToPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc id*(this: XCAFDocVisMaterial): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_VisMaterial.hxx".}
proc restore*(this: var XCAFDocVisMaterial; theWith: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_VisMaterial.hxx".}
proc newEmpty*(this: XCAFDocVisMaterial): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_VisMaterial.hxx".}
proc paste*(this: XCAFDocVisMaterial; theInto: Handle[TDF_Attribute];
           theRelTable: Handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "XCAFDoc_VisMaterial.hxx".}
proc dumpJson*(this: XCAFDocVisMaterial; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_VisMaterial.hxx".}
discard "forward decl of XCAFDoc_VisMaterial"
type
  HandleXCAFDocVisMaterial* = Handle[XCAFDocVisMaterial]

