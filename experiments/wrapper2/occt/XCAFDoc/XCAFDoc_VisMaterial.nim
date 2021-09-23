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
  ../TDF/TDF_Attribute, XCAFDoc_VisMaterialCommon, XCAFDoc_VisMaterialPBR

discard "forward decl of Graphic3d_Aspects"
discard "forward decl of Graphic3d_MaterialAspect"
type
  XCAFDoc_VisMaterial* {.importcpp: "XCAFDoc_VisMaterial",
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

  XCAFDoc_VisMaterialbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_VisMaterial::get_type_name(@)",
                              header: "XCAFDoc_VisMaterial.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_VisMaterial::get_type_descriptor(@)",
    header: "XCAFDoc_VisMaterial.hxx".}
proc DynamicType*(this: XCAFDoc_VisMaterial): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_VisMaterial.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_VisMaterial::GetID(@)",
                            header: "XCAFDoc_VisMaterial.hxx".}
proc constructXCAFDoc_VisMaterial*(): XCAFDoc_VisMaterial {.constructor,
    importcpp: "XCAFDoc_VisMaterial(@)", header: "XCAFDoc_VisMaterial.hxx".}
proc IsEmpty*(this: XCAFDoc_VisMaterial): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "XCAFDoc_VisMaterial.hxx".}
proc FillMaterialAspect*(this: XCAFDoc_VisMaterial;
                        theAspect: var Graphic3d_MaterialAspect) {.noSideEffect,
    importcpp: "FillMaterialAspect", header: "XCAFDoc_VisMaterial.hxx".}
proc FillAspect*(this: XCAFDoc_VisMaterial; theAspect: handle[Graphic3d_Aspects]) {.
    noSideEffect, importcpp: "FillAspect", header: "XCAFDoc_VisMaterial.hxx".}
proc HasPbrMaterial*(this: XCAFDoc_VisMaterial): Standard_Boolean {.noSideEffect,
    importcpp: "HasPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc PbrMaterial*(this: XCAFDoc_VisMaterial): XCAFDoc_VisMaterialPBR {.noSideEffect,
    importcpp: "PbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc SetPbrMaterial*(this: var XCAFDoc_VisMaterial;
                    theMaterial: XCAFDoc_VisMaterialPBR) {.
    importcpp: "SetPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc UnsetPbrMaterial*(this: var XCAFDoc_VisMaterial) {.
    importcpp: "UnsetPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc HasCommonMaterial*(this: XCAFDoc_VisMaterial): Standard_Boolean {.noSideEffect,
    importcpp: "HasCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc CommonMaterial*(this: XCAFDoc_VisMaterial): XCAFDoc_VisMaterialCommon {.
    noSideEffect, importcpp: "CommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc SetCommonMaterial*(this: var XCAFDoc_VisMaterial;
                       theMaterial: XCAFDoc_VisMaterialCommon) {.
    importcpp: "SetCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc UnsetCommonMaterial*(this: var XCAFDoc_VisMaterial) {.
    importcpp: "UnsetCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc BaseColor*(this: XCAFDoc_VisMaterial): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "BaseColor", header: "XCAFDoc_VisMaterial.hxx".}
proc AlphaMode*(this: XCAFDoc_VisMaterial): Graphic3d_AlphaMode {.noSideEffect,
    importcpp: "AlphaMode", header: "XCAFDoc_VisMaterial.hxx".}
proc AlphaCutOff*(this: XCAFDoc_VisMaterial): Standard_ShortReal {.noSideEffect,
    importcpp: "AlphaCutOff", header: "XCAFDoc_VisMaterial.hxx".}
proc SetAlphaMode*(this: var XCAFDoc_VisMaterial; theMode: Graphic3d_AlphaMode;
                  theCutOff: Standard_ShortReal = 0.5f) {.importcpp: "SetAlphaMode",
    header: "XCAFDoc_VisMaterial.hxx".}
proc IsDoubleSided*(this: XCAFDoc_VisMaterial): Standard_Boolean {.noSideEffect,
    importcpp: "IsDoubleSided", header: "XCAFDoc_VisMaterial.hxx".}
proc SetDoubleSided*(this: var XCAFDoc_VisMaterial;
                    theIsDoubleSided: Standard_Boolean) {.
    importcpp: "SetDoubleSided", header: "XCAFDoc_VisMaterial.hxx".}
proc RawName*(this: XCAFDoc_VisMaterial): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "RawName", header: "XCAFDoc_VisMaterial.hxx".}
proc SetRawName*(this: var XCAFDoc_VisMaterial;
                theName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetRawName", header: "XCAFDoc_VisMaterial.hxx".}
proc IsEqual*(this: XCAFDoc_VisMaterial; theOther: handle[XCAFDoc_VisMaterial]): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "XCAFDoc_VisMaterial.hxx".}
proc ConvertToCommonMaterial*(this: var XCAFDoc_VisMaterial): XCAFDoc_VisMaterialCommon {.
    importcpp: "ConvertToCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc ConvertToPbrMaterial*(this: var XCAFDoc_VisMaterial): XCAFDoc_VisMaterialPBR {.
    importcpp: "ConvertToPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc ID*(this: XCAFDoc_VisMaterial): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_VisMaterial.hxx".}
proc Restore*(this: var XCAFDoc_VisMaterial; theWith: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_VisMaterial.hxx".}
proc NewEmpty*(this: XCAFDoc_VisMaterial): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_VisMaterial.hxx".}
proc Paste*(this: XCAFDoc_VisMaterial; theInto: handle[TDF_Attribute];
           theRelTable: handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "XCAFDoc_VisMaterial.hxx".}
proc DumpJson*(this: XCAFDoc_VisMaterial; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_VisMaterial.hxx".}
discard "forward decl of XCAFDoc_VisMaterial"
type
  Handle_XCAFDoc_VisMaterial* = handle[XCAFDoc_VisMaterial]
