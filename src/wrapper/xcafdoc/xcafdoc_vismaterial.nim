import xcafdoc_types

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

proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_VisMaterial::GetID(@)",
                            header: "XCAFDoc_VisMaterial.hxx".}
proc newXCAFDoc_VisMaterial*(): XCAFDoc_VisMaterial {.cdecl, constructor,
    importcpp: "XCAFDoc_VisMaterial(@)", header: "XCAFDoc_VisMaterial.hxx".}
proc IsEmpty*(this: XCAFDoc_VisMaterial): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "XCAFDoc_VisMaterial.hxx".}
proc FillMaterialAspect*(this: XCAFDoc_VisMaterial;
                        theAspect: var Graphic3d_MaterialAspect) {.noSideEffect,
    cdecl, importcpp: "FillMaterialAspect", header: "XCAFDoc_VisMaterial.hxx".}
proc FillAspect*(this: XCAFDoc_VisMaterial; theAspect: handle[Graphic3d_Aspects]) {.
    noSideEffect, cdecl, importcpp: "FillAspect", header: "XCAFDoc_VisMaterial.hxx".}
proc HasPbrMaterial*(this: XCAFDoc_VisMaterial): bool {.noSideEffect, cdecl,
    importcpp: "HasPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc PbrMaterial*(this: XCAFDoc_VisMaterial): XCAFDoc_VisMaterialPBR {.noSideEffect,
    cdecl, importcpp: "PbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc SetPbrMaterial*(this: var XCAFDoc_VisMaterial;
                    theMaterial: XCAFDoc_VisMaterialPBR) {.cdecl,
    importcpp: "SetPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc UnsetPbrMaterial*(this: var XCAFDoc_VisMaterial) {.cdecl,
    importcpp: "UnsetPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc HasCommonMaterial*(this: XCAFDoc_VisMaterial): bool {.noSideEffect, cdecl,
    importcpp: "HasCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc CommonMaterial*(this: XCAFDoc_VisMaterial): XCAFDoc_VisMaterialCommon {.
    noSideEffect, cdecl, importcpp: "CommonMaterial",
    header: "XCAFDoc_VisMaterial.hxx".}
proc SetCommonMaterial*(this: var XCAFDoc_VisMaterial;
                       theMaterial: XCAFDoc_VisMaterialCommon) {.cdecl,
    importcpp: "SetCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc UnsetCommonMaterial*(this: var XCAFDoc_VisMaterial) {.cdecl,
    importcpp: "UnsetCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc BaseColor*(this: XCAFDoc_VisMaterial): Quantity_ColorRGBA {.noSideEffect, cdecl,
    importcpp: "BaseColor", header: "XCAFDoc_VisMaterial.hxx".}
proc AlphaMode*(this: XCAFDoc_VisMaterial): Graphic3d_AlphaMode {.noSideEffect,
    cdecl, importcpp: "AlphaMode", header: "XCAFDoc_VisMaterial.hxx".}
proc AlphaCutOff*(this: XCAFDoc_VisMaterial): Standard_ShortReal {.noSideEffect,
    cdecl, importcpp: "AlphaCutOff", header: "XCAFDoc_VisMaterial.hxx".}
proc SetAlphaMode*(this: var XCAFDoc_VisMaterial; theMode: Graphic3d_AlphaMode;
                  theCutOff: Standard_ShortReal = 0.5f) {.cdecl,
    importcpp: "SetAlphaMode", header: "XCAFDoc_VisMaterial.hxx".}
proc FaceCulling*(this: XCAFDoc_VisMaterial): Graphic3d_TypeOfBackfacingModel {.
    noSideEffect, cdecl, importcpp: "FaceCulling", header: "XCAFDoc_VisMaterial.hxx".}
proc SetFaceCulling*(this: var XCAFDoc_VisMaterial;
                    theFaceCulling: Graphic3d_TypeOfBackfacingModel) {.cdecl,
    importcpp: "SetFaceCulling", header: "XCAFDoc_VisMaterial.hxx".}
proc IsDoubleSided*(this: XCAFDoc_VisMaterial): bool {.noSideEffect, cdecl,
    importcpp: "IsDoubleSided", header: "XCAFDoc_VisMaterial.hxx".}
proc SetDoubleSided*(this: var XCAFDoc_VisMaterial; theIsDoubleSided: bool) {.cdecl,
    importcpp: "SetDoubleSided", header: "XCAFDoc_VisMaterial.hxx".}
proc RawName*(this: XCAFDoc_VisMaterial): handle[TCollection_HAsciiString] {.
    noSideEffect, cdecl, importcpp: "RawName", header: "XCAFDoc_VisMaterial.hxx".}
proc SetRawName*(this: var XCAFDoc_VisMaterial;
                theName: handle[TCollection_HAsciiString]) {.cdecl,
    importcpp: "SetRawName", header: "XCAFDoc_VisMaterial.hxx".}
proc IsEqual*(this: XCAFDoc_VisMaterial; theOther: handle[XCAFDoc_VisMaterial]): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "XCAFDoc_VisMaterial.hxx".}
proc ConvertToCommonMaterial*(this: var XCAFDoc_VisMaterial): XCAFDoc_VisMaterialCommon {.
    cdecl, importcpp: "ConvertToCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc ConvertToPbrMaterial*(this: var XCAFDoc_VisMaterial): XCAFDoc_VisMaterialPBR {.
    cdecl, importcpp: "ConvertToPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc ID*(this: XCAFDoc_VisMaterial): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_VisMaterial.hxx".}
proc Restore*(this: var XCAFDoc_VisMaterial; theWith: handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_VisMaterial.hxx".}
proc NewEmpty*(this: XCAFDoc_VisMaterial): handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "XCAFDoc_VisMaterial.hxx".}
proc Paste*(this: XCAFDoc_VisMaterial; theInto: handle[TDF_Attribute];
           theRelTable: handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_VisMaterial.hxx".}
proc DumpJson*(this: XCAFDoc_VisMaterial; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_VisMaterial.hxx".}
type
  Handle_XCAFDoc_VisMaterial* = handle[XCAFDoc_VisMaterial]
