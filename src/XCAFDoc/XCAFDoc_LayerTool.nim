##  Created on: 2000-09-26
##  Created by: Pavel TELKOV.
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

discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_LayerTool"
discard "forward decl of XCAFDoc_LayerTool"
type
  HandleXCAFDocLayerTool* = Handle[XCAFDocLayerTool]

## ! Provides tools to store and retrieve attributes (Layers)
## ! of TopoDS_Shape in and from TDocStd_Document
## ! A Document is intended to hold different
## ! attributes of ONE shape and it's sub-shapes
## ! Provide tools for management of Layers section of document.

type
  XCAFDocLayerTool* {.importcpp: "XCAFDoc_LayerTool",
                     header: "XCAFDoc_LayerTool.hxx", bycopy.} = object of TDataStdGenericEmpty


proc constructXCAFDocLayerTool*(): XCAFDocLayerTool {.constructor,
    importcpp: "XCAFDoc_LayerTool(@)", header: "XCAFDoc_LayerTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocLayerTool] {.
    importcpp: "XCAFDoc_LayerTool::Set(@)", header: "XCAFDoc_LayerTool.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_LayerTool::GetID(@)",
                           header: "XCAFDoc_LayerTool.hxx".}
proc baseLabel*(this: XCAFDocLayerTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_LayerTool.hxx".}
proc shapeTool*(this: var XCAFDocLayerTool): Handle[XCAFDocShapeTool] {.
    importcpp: "ShapeTool", header: "XCAFDoc_LayerTool.hxx".}
proc isLayer*(this: XCAFDocLayerTool; lab: TDF_Label): bool {.noSideEffect,
    importcpp: "IsLayer", header: "XCAFDoc_LayerTool.hxx".}
proc getLayer*(this: XCAFDocLayerTool; lab: TDF_Label;
              aLayer: var TCollectionExtendedString): bool {.noSideEffect,
    importcpp: "GetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc findLayer*(this: XCAFDocLayerTool; aLayer: TCollectionExtendedString;
               lab: var TDF_Label): bool {.noSideEffect, importcpp: "FindLayer",
                                       header: "XCAFDoc_LayerTool.hxx".}
proc findLayer*(this: XCAFDocLayerTool; aLayer: TCollectionExtendedString): TDF_Label {.
    noSideEffect, importcpp: "FindLayer", header: "XCAFDoc_LayerTool.hxx".}
proc addLayer*(this: XCAFDocLayerTool; aLayer: TCollectionExtendedString): TDF_Label {.
    noSideEffect, importcpp: "AddLayer", header: "XCAFDoc_LayerTool.hxx".}
proc removeLayer*(this: XCAFDocLayerTool; lab: TDF_Label) {.noSideEffect,
    importcpp: "RemoveLayer", header: "XCAFDoc_LayerTool.hxx".}
proc getLayerLabels*(this: XCAFDocLayerTool; labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetLayerLabels", header: "XCAFDoc_LayerTool.hxx".}
proc setLayer*(this: XCAFDocLayerTool; L: TDF_Label; layerL: TDF_Label;
              shapeInOneLayer: bool = false) {.noSideEffect, importcpp: "SetLayer",
    header: "XCAFDoc_LayerTool.hxx".}
proc setLayer*(this: XCAFDocLayerTool; L: TDF_Label;
              aLayer: TCollectionExtendedString; shapeInOneLayer: bool = false) {.
    noSideEffect, importcpp: "SetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc unSetLayers*(this: XCAFDocLayerTool; L: TDF_Label) {.noSideEffect,
    importcpp: "UnSetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc unSetOneLayer*(this: XCAFDocLayerTool; L: TDF_Label;
                   aLayer: TCollectionExtendedString): bool {.noSideEffect,
    importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc unSetOneLayer*(this: XCAFDocLayerTool; L: TDF_Label; aLayerL: TDF_Label): bool {.
    noSideEffect, importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc isSet*(this: XCAFDocLayerTool; L: TDF_Label; aLayer: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc isSet*(this: XCAFDocLayerTool; L: TDF_Label; aLayerL: TDF_Label): bool {.
    noSideEffect, importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; L: TDF_Label;
               aLayerS: var Handle[TColStdHSequenceOfExtendedString]): bool {.
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; L: TDF_Label;
               aLayerLS: var TDF_LabelSequence): bool {.importcpp: "GetLayers",
    header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; L: TDF_Label): Handle[
    TColStdHSequenceOfExtendedString] {.importcpp: "GetLayers",
                                       header: "XCAFDoc_LayerTool.hxx".}
proc getShapesOfLayer*(this: XCAFDocLayerTool; layerL: TDF_Label;
                      shLabels: var TDF_LabelSequence) {.noSideEffect,
    importcpp: "GetShapesOfLayer", header: "XCAFDoc_LayerTool.hxx".}
proc isVisible*(this: XCAFDocLayerTool; layerL: TDF_Label): bool {.noSideEffect,
    importcpp: "IsVisible", header: "XCAFDoc_LayerTool.hxx".}
proc setVisibility*(this: XCAFDocLayerTool; layerL: TDF_Label; isvisible: bool = true) {.
    noSideEffect, importcpp: "SetVisibility", header: "XCAFDoc_LayerTool.hxx".}
proc setLayer*(this: var XCAFDocLayerTool; sh: TopoDS_Shape; layerL: TDF_Label;
              shapeInOneLayer: bool = false): bool {.importcpp: "SetLayer",
    header: "XCAFDoc_LayerTool.hxx".}
proc setLayer*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
              aLayer: TCollectionExtendedString; shapeInOneLayer: bool = false): bool {.
    importcpp: "SetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc unSetLayers*(this: var XCAFDocLayerTool; sh: TopoDS_Shape): bool {.
    importcpp: "UnSetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc unSetOneLayer*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
                   aLayer: TCollectionExtendedString): bool {.
    importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc unSetOneLayer*(this: var XCAFDocLayerTool; sh: TopoDS_Shape; aLayerL: TDF_Label): bool {.
    importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc isSet*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
           aLayer: TCollectionExtendedString): bool {.importcpp: "IsSet",
    header: "XCAFDoc_LayerTool.hxx".}
proc isSet*(this: var XCAFDocLayerTool; sh: TopoDS_Shape; aLayerL: TDF_Label): bool {.
    importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
               aLayerS: var Handle[TColStdHSequenceOfExtendedString]): bool {.
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
               aLayerLS: var TDF_LabelSequence): bool {.importcpp: "GetLayers",
    header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; sh: TopoDS_Shape): Handle[
    TColStdHSequenceOfExtendedString] {.importcpp: "GetLayers",
                                       header: "XCAFDoc_LayerTool.hxx".}
proc id*(this: XCAFDocLayerTool): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_LayerTool.hxx".}
proc dumpJson*(this: XCAFDocLayerTool; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_LayerTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_LayerTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!















































