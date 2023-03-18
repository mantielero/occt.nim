import ../tdf/tdf_types
import ../quantity/quantity_types
import xcafdoc_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types
import ../tcollection/tcollection_types



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



proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_VisMaterial::GetID(@)",
                           header: "XCAFDoc_VisMaterial.hxx".}
proc newXCAFDocVisMaterial*(): XCAFDocVisMaterial {.cdecl, constructor,
    importcpp: "XCAFDoc_VisMaterial(@)", header: "XCAFDoc_VisMaterial.hxx".}
proc isEmpty*(this: XCAFDocVisMaterial): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "XCAFDoc_VisMaterial.hxx".}
proc fillMaterialAspect*(this: XCAFDocVisMaterial;
                        theAspect: var Graphic3dMaterialAspect) {.noSideEffect,
    cdecl, importcpp: "FillMaterialAspect", header: "XCAFDoc_VisMaterial.hxx".}
proc fillAspect*(this: XCAFDocVisMaterial; theAspect: Handle[Graphic3dAspects]) {.
    noSideEffect, cdecl, importcpp: "FillAspect", header: "XCAFDoc_VisMaterial.hxx".}
proc hasPbrMaterial*(this: XCAFDocVisMaterial): bool {.noSideEffect, cdecl,
    importcpp: "HasPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc pbrMaterial*(this: XCAFDocVisMaterial): XCAFDocVisMaterialPBR {.noSideEffect,
    cdecl, importcpp: "PbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc setPbrMaterial*(this: var XCAFDocVisMaterial;
                    theMaterial: XCAFDocVisMaterialPBR) {.cdecl,
    importcpp: "SetPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc unsetPbrMaterial*(this: var XCAFDocVisMaterial) {.cdecl,
    importcpp: "UnsetPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc hasCommonMaterial*(this: XCAFDocVisMaterial): bool {.noSideEffect, cdecl,
    importcpp: "HasCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc commonMaterial*(this: XCAFDocVisMaterial): XCAFDocVisMaterialCommon {.
    noSideEffect, cdecl, importcpp: "CommonMaterial",
    header: "XCAFDoc_VisMaterial.hxx".}
proc setCommonMaterial*(this: var XCAFDocVisMaterial;
                       theMaterial: XCAFDocVisMaterialCommon) {.cdecl,
    importcpp: "SetCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc unsetCommonMaterial*(this: var XCAFDocVisMaterial) {.cdecl,
    importcpp: "UnsetCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc baseColor*(this: XCAFDocVisMaterial): QuantityColorRGBA {.noSideEffect, cdecl,
    importcpp: "BaseColor", header: "XCAFDoc_VisMaterial.hxx".}
proc alphaMode*(this: XCAFDocVisMaterial): Graphic3dAlphaMode {.noSideEffect, cdecl,
    importcpp: "AlphaMode", header: "XCAFDoc_VisMaterial.hxx".}
proc alphaCutOff*(this: XCAFDocVisMaterial): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "AlphaCutOff", header: "XCAFDoc_VisMaterial.hxx".}
proc setAlphaMode*(this: var XCAFDocVisMaterial; theMode: Graphic3dAlphaMode;
                  theCutOff: StandardShortReal = 0.5f) {.cdecl,
    importcpp: "SetAlphaMode", header: "XCAFDoc_VisMaterial.hxx".}
proc faceCulling*(this: XCAFDocVisMaterial): Graphic3dTypeOfBackfacingModel {.
    noSideEffect, cdecl, importcpp: "FaceCulling", header: "XCAFDoc_VisMaterial.hxx".}
proc setFaceCulling*(this: var XCAFDocVisMaterial;
                    theFaceCulling: Graphic3dTypeOfBackfacingModel) {.cdecl,
    importcpp: "SetFaceCulling", header: "XCAFDoc_VisMaterial.hxx".}
proc isDoubleSided*(this: XCAFDocVisMaterial): bool {.noSideEffect, cdecl,
    importcpp: "IsDoubleSided", header: "XCAFDoc_VisMaterial.hxx".}
proc setDoubleSided*(this: var XCAFDocVisMaterial; theIsDoubleSided: bool) {.cdecl,
    importcpp: "SetDoubleSided", header: "XCAFDoc_VisMaterial.hxx".}
proc rawName*(this: XCAFDocVisMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "RawName", header: "XCAFDoc_VisMaterial.hxx".}
proc setRawName*(this: var XCAFDocVisMaterial;
                theName: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "SetRawName", header: "XCAFDoc_VisMaterial.hxx".}
proc isEqual*(this: XCAFDocVisMaterial; theOther: Handle[XCAFDocVisMaterial]): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "XCAFDoc_VisMaterial.hxx".}
proc convertToCommonMaterial*(this: var XCAFDocVisMaterial): XCAFDocVisMaterialCommon {.
    cdecl, importcpp: "ConvertToCommonMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc convertToPbrMaterial*(this: var XCAFDocVisMaterial): XCAFDocVisMaterialPBR {.
    cdecl, importcpp: "ConvertToPbrMaterial", header: "XCAFDoc_VisMaterial.hxx".}
proc id*(this: XCAFDocVisMaterial): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_VisMaterial.hxx".}
proc restore*(this: var XCAFDocVisMaterial; theWith: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_VisMaterial.hxx".}
proc newEmpty*(this: XCAFDocVisMaterial): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "XCAFDoc_VisMaterial.hxx".}
proc paste*(this: XCAFDocVisMaterial; theInto: Handle[TDF_Attribute];
           theRelTable: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_VisMaterial.hxx".}
proc dumpJson*(this: XCAFDocVisMaterial; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_VisMaterial.hxx".}


