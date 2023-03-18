import ../tdf/tdf_types
import ../topods/topods_types
import xcafdoc_types
import ../standard/standard_types
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



proc set*(L: TDF_Label): Handle[XCAFDocVisMaterialTool] {.cdecl,
    importcpp: "XCAFDoc_VisMaterialTool::Set(@)",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_VisMaterialTool::GetID(@)",
                           header: "XCAFDoc_VisMaterialTool.hxx".}
proc newXCAFDocVisMaterialTool*(): XCAFDocVisMaterialTool {.cdecl, constructor,
    importcpp: "XCAFDoc_VisMaterialTool(@)", header: "XCAFDoc_VisMaterialTool.hxx".}
proc baseLabel*(this: XCAFDocVisMaterialTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_VisMaterialTool.hxx".}
proc shapeTool*(this: var XCAFDocVisMaterialTool): Handle[XCAFDocShapeTool] {.cdecl,
    importcpp: "ShapeTool", header: "XCAFDoc_VisMaterialTool.hxx".}
proc isMaterial*(this: XCAFDocVisMaterialTool; theLabel: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "IsMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc getMaterial*(this: XCAFDocVisMaterialTool; theMatLabel: TDF_Label): Handle[
    XCAFDocVisMaterial] {.noSideEffect, cdecl, importcpp: "GetMaterial",
                         header: "XCAFDoc_VisMaterialTool.hxx".}
proc addMaterial*(this: XCAFDocVisMaterialTool; theMat: Handle[XCAFDocVisMaterial];
                 theName: TCollectionAsciiString): TDF_Label {.noSideEffect, cdecl,
    importcpp: "AddMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc addMaterial*(this: XCAFDocVisMaterialTool; theName: TCollectionAsciiString): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc removeMaterial*(this: XCAFDocVisMaterialTool; theLabel: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "RemoveMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc getMaterials*(this: XCAFDocVisMaterialTool; labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetMaterials",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc setShapeMaterial*(this: XCAFDocVisMaterialTool; theShapeLabel: TDF_Label;
                      theMaterialLabel: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "SetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc unSetShapeMaterial*(this: XCAFDocVisMaterialTool; theShapeLabel: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "UnSetShapeMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc isSetShapeMaterial*(this: XCAFDocVisMaterialTool; theLabel: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "IsSetShapeMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc getShapeMaterial*(theShapeLabel: TDF_Label; theMaterialLabel: var TDF_Label): bool {.
    cdecl, importcpp: "XCAFDoc_VisMaterialTool::GetShapeMaterial(@)",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc getShapeMaterial*(this: var XCAFDocVisMaterialTool; theShapeLabel: TDF_Label): Handle[
    XCAFDocVisMaterial] {.cdecl, importcpp: "GetShapeMaterial",
                         header: "XCAFDoc_VisMaterialTool.hxx".}
proc setShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape;
                      theMaterialLabel: TDF_Label): bool {.cdecl,
    importcpp: "SetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc unSetShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape): bool {.
    cdecl, importcpp: "UnSetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc isSetShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape): bool {.
    cdecl, importcpp: "IsSetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc getShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape;
                      theMaterialLabel: var TDF_Label): bool {.cdecl,
    importcpp: "GetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc getShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape): Handle[
    XCAFDocVisMaterial] {.cdecl, importcpp: "GetShapeMaterial",
                         header: "XCAFDoc_VisMaterialTool.hxx".}
proc id*(this: XCAFDocVisMaterialTool): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_VisMaterialTool.hxx".}
proc restore*(this: var XCAFDocVisMaterialTool; a2: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_VisMaterialTool.hxx".}
proc newEmpty*(this: XCAFDocVisMaterialTool): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "XCAFDoc_VisMaterialTool.hxx".}
proc paste*(this: XCAFDocVisMaterialTool; a2: Handle[TDF_Attribute];
           a3: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_VisMaterialTool.hxx".}


