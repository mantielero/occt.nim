import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../tdocstd/tdocstd_types
import ../unitsmethods/unitsmethods_includes

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





proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_DocumentTool::GetID(@)",
                           header: "XCAFDoc_DocumentTool.hxx".}
proc set*(L: TDF_Label; isAcces: bool = true): Handle[XCAFDocDocumentTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::Set(@)", header: "XCAFDoc_DocumentTool.hxx".}
proc isXCAFDocument*(doc: Handle[TDocStdDocument]): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::IsXCAFDocument(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc docLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::DocLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc shapesLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ShapesLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc colorsLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ColorsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc layersLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::LayersLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc dGTsLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::DGTsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc materialsLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::MaterialsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc viewsLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ViewsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc clippingPlanesLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ClippingPlanesLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc notesLabel*(acces: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::NotesLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc visMaterialLabel*(theLabel: TDF_Label): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::VisMaterialLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc shapeTool*(acces: TDF_Label): Handle[XCAFDocShapeTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ShapeTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc checkShapeTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckShapeTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc colorTool*(acces: TDF_Label): Handle[XCAFDocColorTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ColorTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc checkColorTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckColorTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc visMaterialTool*(theLabel: TDF_Label): Handle[XCAFDocVisMaterialTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::VisMaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc checkVisMaterialTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckVisMaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc layerTool*(acces: TDF_Label): Handle[XCAFDocLayerTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::LayerTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc checkLayerTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckLayerTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc dimTolTool*(acces: TDF_Label): Handle[XCAFDocDimTolTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::DimTolTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc checkDimTolTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckDimTolTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc materialTool*(acces: TDF_Label): Handle[XCAFDocMaterialTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::MaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc checkMaterialTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckMaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc viewTool*(acces: TDF_Label): Handle[XCAFDocViewTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ViewTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc checkViewTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckViewTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc clippingPlaneTool*(acces: TDF_Label): Handle[XCAFDocClippingPlaneTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::ClippingPlaneTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc checkClippingPlaneTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckClippingPlaneTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc notesTool*(acces: TDF_Label): Handle[XCAFDocNotesTool] {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::NotesTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc checkNotesTool*(theAcces: TDF_Label): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::CheckNotesTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc getLengthUnit*(theDoc: Handle[TDocStdDocument]; theResut: var cfloat;
                   theBaseUnit: UnitsMethodsLengthUnit): bool {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::GetLengthUnit(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc getLengthUnit*(theDoc: Handle[TDocStdDocument]; theResut: var cfloat): bool {.
    cdecl, importcpp: "XCAFDoc_DocumentTool::GetLengthUnit(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc setLengthUnit*(theDoc: Handle[TDocStdDocument]; theUnitValue: cfloat) {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::SetLengthUnit(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc setLengthUnit*(theDoc: Handle[TDocStdDocument]; theUnitValue: cfloat;
                   theBaseUnit: UnitsMethodsLengthUnit) {.cdecl,
    importcpp: "XCAFDoc_DocumentTool::SetLengthUnit(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc newXCAFDocDocumentTool*(): XCAFDocDocumentTool {.cdecl, constructor,
    importcpp: "XCAFDoc_DocumentTool(@)", header: "XCAFDoc_DocumentTool.hxx".}
proc init*(this: XCAFDocDocumentTool) {.noSideEffect, cdecl, importcpp: "Init",
                                     header: "XCAFDoc_DocumentTool.hxx".}
proc id*(this: XCAFDocDocumentTool): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_DocumentTool.hxx".}
proc afterRetrieval*(this: var XCAFDocDocumentTool; forceIt: bool = false): bool {.cdecl,
    importcpp: "AfterRetrieval", header: "XCAFDoc_DocumentTool.hxx".}

