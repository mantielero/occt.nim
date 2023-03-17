import xcafdoc_types

##  Created on: 2000-08-30
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDocStd_Document"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_ColorTool"
discard "forward decl of XCAFDoc_ClippingPlaneTool"
discard "forward decl of XCAFDoc_LayerTool"
discard "forward decl of XCAFDoc_DimTolTool"
discard "forward decl of XCAFDoc_MaterialTool"
discard "forward decl of XCAFDoc_NotesTool"
discard "forward decl of XCAFDoc_ViewTool"
discard "forward decl of XCAFDoc_VisMaterialTool"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_DocumentTool"

proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_DocumentTool::GetID(@)",
                            header: "XCAFDoc_DocumentTool.hxx".}
proc Set*(L: TDF_Label; IsAcces: bool = true): handle[XCAFDoc_DocumentTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::Set(@)", header: "XCAFDoc_DocumentTool.hxx".}
proc IsXCAFDocument*(Doc: handle[TDocStd_Document]): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::IsXCAFDocument(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc DocLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::DocLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc ShapesLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ShapesLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc ColorsLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ColorsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc LayersLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::LayersLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc DGTsLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::DGTsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc MaterialsLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::MaterialsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc ViewsLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ViewsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc ClippingPlanesLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ClippingPlanesLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc NotesLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::NotesLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc VisMaterialLabel*(theLabel: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::VisMaterialLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc ShapeTool*(acces: TDF_Label): handle[XCAFDoc_ShapeTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ShapeTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc CheckShapeTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckShapeTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc ColorTool*(acces: TDF_Label): handle[XCAFDoc_ColorTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ColorTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc CheckColorTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckColorTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc VisMaterialTool*(theLabel: TDF_Label): handle[XCAFDoc_VisMaterialTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::VisMaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc CheckVisMaterialTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckVisMaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc LayerTool*(acces: TDF_Label): handle[XCAFDoc_LayerTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::LayerTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc CheckLayerTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckLayerTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc DimTolTool*(acces: TDF_Label): handle[XCAFDoc_DimTolTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::DimTolTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc CheckDimTolTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckDimTolTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc MaterialTool*(acces: TDF_Label): handle[XCAFDoc_MaterialTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::MaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc CheckMaterialTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckMaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc ViewTool*(acces: TDF_Label): handle[XCAFDoc_ViewTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ViewTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc CheckViewTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckViewTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc ClippingPlaneTool*(acces: TDF_Label): handle[XCAFDoc_ClippingPlaneTool] {.
    cdecl, importcpp: "XCAFDoc_DocumentTool::ClippingPlaneTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc CheckClippingPlaneTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckClippingPlaneTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc NotesTool*(acces: TDF_Label): handle[XCAFDoc_NotesTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::NotesTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc CheckNotesTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckNotesTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc GetLengthUnit*(theDoc: handle[TDocStd_Document]; theResut: var cfloat;
                   theBaseUnit: UnitsMethods_LengthUnit): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::GetLengthUnit(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc GetLengthUnit*(theDoc: handle[TDocStd_Document]; theResut: var cfloat): bool {.
    cdecl, importcpp: "XCAFDoc_DocumentTool::GetLengthUnit(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc SetLengthUnit*(theDoc: handle[TDocStd_Document]; theUnitValue: cfloat) {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::SetLengthUnit(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc SetLengthUnit*(theDoc: handle[TDocStd_Document]; theUnitValue: cfloat;
                   theBaseUnit: UnitsMethods_LengthUnit) {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::SetLengthUnit(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc newXCAFDoc_DocumentTool*(): XCAFDoc_DocumentTool {.cdecl, constructor,
    importcpp: "XCAFDoc_DocumentTool(@)", header: "XCAFDoc_DocumentTool.hxx".}
proc Init*(this: XCAFDoc_DocumentTool) {.noSideEffect, cdecl, importcpp: "Init",
                                      header: "XCAFDoc_DocumentTool.hxx".}
proc ID*(this: XCAFDoc_DocumentTool): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_DocumentTool.hxx".}
proc AfterRetrieval*(this: var XCAFDoc_DocumentTool; forceIt: bool = false): bool {.
    cdecl, importcpp: "AfterRetrieval", header: "XCAFDoc_DocumentTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_DocumentTool , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!
