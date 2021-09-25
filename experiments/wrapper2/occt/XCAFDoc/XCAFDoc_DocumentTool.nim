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
discard "forward decl of XCAFDoc_DocumentTool"
type
  HandleXCAFDocDocumentTool* = Handle[XCAFDocDocumentTool]

## ! Defines sections structure of an XDE document.
## ! attribute marking CAF document as being DECAF document.
## ! Creates the sections structure of the document.

type
  XCAFDocDocumentTool* {.importcpp: "XCAFDoc_DocumentTool",
                        header: "XCAFDoc_DocumentTool.hxx", bycopy.} = object of TDataStdGenericEmpty


proc getID*(): StandardGUID {.importcpp: "XCAFDoc_DocumentTool::GetID(@)",
                           header: "XCAFDoc_DocumentTool.hxx".}
proc set*(L: TDF_Label; isAcces: bool = true): Handle[XCAFDocDocumentTool] {.
    importcpp: "XCAFDoc_DocumentTool::Set(@)", header: "XCAFDoc_DocumentTool.hxx".}
proc isXCAFDocument*(doc: Handle[TDocStdDocument]): bool {.
    importcpp: "XCAFDoc_DocumentTool::IsXCAFDocument(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc docLabel*(acces: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::DocLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc shapesLabel*(acces: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::ShapesLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc colorsLabel*(acces: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::ColorsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc layersLabel*(acces: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::LayersLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc dGTsLabel*(acces: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::DGTsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc materialsLabel*(acces: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::MaterialsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc viewsLabel*(acces: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::ViewsLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc clippingPlanesLabel*(acces: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::ClippingPlanesLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc notesLabel*(acces: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::NotesLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc visMaterialLabel*(theLabel: TDF_Label): TDF_Label {.
    importcpp: "XCAFDoc_DocumentTool::VisMaterialLabel(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc shapeTool*(acces: TDF_Label): Handle[XCAFDocShapeTool] {.
    importcpp: "XCAFDoc_DocumentTool::ShapeTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc colorTool*(acces: TDF_Label): Handle[XCAFDocColorTool] {.
    importcpp: "XCAFDoc_DocumentTool::ColorTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc visMaterialTool*(theLabel: TDF_Label): Handle[XCAFDocVisMaterialTool] {.
    importcpp: "XCAFDoc_DocumentTool::VisMaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc layerTool*(acces: TDF_Label): Handle[XCAFDocLayerTool] {.
    importcpp: "XCAFDoc_DocumentTool::LayerTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc dimTolTool*(acces: TDF_Label): Handle[XCAFDocDimTolTool] {.
    importcpp: "XCAFDoc_DocumentTool::DimTolTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc materialTool*(acces: TDF_Label): Handle[XCAFDocMaterialTool] {.
    importcpp: "XCAFDoc_DocumentTool::MaterialTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc viewTool*(acces: TDF_Label): Handle[XCAFDocViewTool] {.
    importcpp: "XCAFDoc_DocumentTool::ViewTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc clippingPlaneTool*(acces: TDF_Label): Handle[XCAFDocClippingPlaneTool] {.
    importcpp: "XCAFDoc_DocumentTool::ClippingPlaneTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc notesTool*(acces: TDF_Label): Handle[XCAFDocNotesTool] {.
    importcpp: "XCAFDoc_DocumentTool::NotesTool(@)",
    header: "XCAFDoc_DocumentTool.hxx".}
proc constructXCAFDocDocumentTool*(): XCAFDocDocumentTool {.constructor,
    importcpp: "XCAFDoc_DocumentTool(@)", header: "XCAFDoc_DocumentTool.hxx".}
proc init*(this: XCAFDocDocumentTool) {.noSideEffect, importcpp: "Init",
                                     header: "XCAFDoc_DocumentTool.hxx".}
proc id*(this: XCAFDocDocumentTool): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_DocumentTool.hxx".}
proc afterRetrieval*(this: var XCAFDocDocumentTool; forceIt: bool = false): bool {.
    importcpp: "AfterRetrieval", header: "XCAFDoc_DocumentTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_DocumentTool , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!

