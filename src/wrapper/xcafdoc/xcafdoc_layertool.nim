import ../tdf/tdf_types
import ../tcolstd/tcolstd_types
import ../topods/topods_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types



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





proc newXCAFDocLayerTool*(): XCAFDocLayerTool {.cdecl, constructor,
    importcpp: "XCAFDoc_LayerTool(@)", header: "XCAFDoc_LayerTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocLayerTool] {.cdecl,
    importcpp: "XCAFDoc_LayerTool::Set(@)", header: "XCAFDoc_LayerTool.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_LayerTool::GetID(@)",
                           header: "XCAFDoc_LayerTool.hxx".}
proc baseLabel*(this: XCAFDocLayerTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_LayerTool.hxx".}
proc shapeTool*(this: var XCAFDocLayerTool): Handle[XCAFDocShapeTool] {.cdecl,
    importcpp: "ShapeTool", header: "XCAFDoc_LayerTool.hxx".}
proc isLayer*(this: XCAFDocLayerTool; lab: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsLayer", header: "XCAFDoc_LayerTool.hxx".}
proc getLayer*(this: XCAFDocLayerTool; lab: TDF_Label;
              aLayer: var TCollectionExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "GetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc findLayer*(this: XCAFDocLayerTool; aLayer: TCollectionExtendedString;
               lab: var TDF_Label): bool {.noSideEffect, cdecl,
                                       importcpp: "FindLayer",
                                       header: "XCAFDoc_LayerTool.hxx".}
proc findLayer*(this: XCAFDocLayerTool; aLayer: TCollectionExtendedString;
               theToFindWithProperty: bool = false; theToFindVisible: bool = true): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindLayer", header: "XCAFDoc_LayerTool.hxx".}
proc addLayer*(this: XCAFDocLayerTool; theLayer: TCollectionExtendedString): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddLayer", header: "XCAFDoc_LayerTool.hxx".}
proc addLayer*(this: XCAFDocLayerTool; theLayer: TCollectionExtendedString;
              theToFindVisible: bool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "AddLayer", header: "XCAFDoc_LayerTool.hxx".}
proc removeLayer*(this: XCAFDocLayerTool; lab: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "RemoveLayer", header: "XCAFDoc_LayerTool.hxx".}
proc getLayerLabels*(this: XCAFDocLayerTool; labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetLayerLabels",
    header: "XCAFDoc_LayerTool.hxx".}
proc setLayer*(this: XCAFDocLayerTool; L: TDF_Label; layerL: TDF_Label;
              shapeInOneLayer: bool = false) {.noSideEffect, cdecl,
    importcpp: "SetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc setLayer*(this: XCAFDocLayerTool; L: TDF_Label;
              aLayer: TCollectionExtendedString; shapeInOneLayer: bool = false) {.
    noSideEffect, cdecl, importcpp: "SetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc unSetLayers*(this: XCAFDocLayerTool; L: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "UnSetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc unSetOneLayer*(this: XCAFDocLayerTool; L: TDF_Label;
                   aLayer: TCollectionExtendedString): bool {.noSideEffect, cdecl,
    importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc unSetOneLayer*(this: XCAFDocLayerTool; L: TDF_Label; aLayerL: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc isSet*(this: XCAFDocLayerTool; L: TDF_Label; aLayer: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc isSet*(this: XCAFDocLayerTool; L: TDF_Label; aLayerL: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; L: TDF_Label;
               aLayerS: var Handle[TColStdHSequenceOfExtendedString]): bool {.cdecl,
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; L: TDF_Label;
               aLayerLS: var TDF_LabelSequence): bool {.cdecl,
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; L: TDF_Label): Handle[
    TColStdHSequenceOfExtendedString] {.cdecl, importcpp: "GetLayers",
                                       header: "XCAFDoc_LayerTool.hxx".}
proc getShapesOfLayer*(this: XCAFDocLayerTool; layerL: TDF_Label;
                      shLabels: var TDF_LabelSequence) {.noSideEffect, cdecl,
    importcpp: "GetShapesOfLayer", header: "XCAFDoc_LayerTool.hxx".}
proc isVisible*(this: XCAFDocLayerTool; layerL: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsVisible", header: "XCAFDoc_LayerTool.hxx".}
proc setVisibility*(this: XCAFDocLayerTool; layerL: TDF_Label; isvisible: bool = true) {.
    noSideEffect, cdecl, importcpp: "SetVisibility", header: "XCAFDoc_LayerTool.hxx".}
proc setLayer*(this: var XCAFDocLayerTool; sh: TopoDS_Shape; layerL: TDF_Label;
              shapeInOneLayer: bool = false): bool {.cdecl, importcpp: "SetLayer",
    header: "XCAFDoc_LayerTool.hxx".}
proc setLayer*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
              aLayer: TCollectionExtendedString; shapeInOneLayer: bool = false): bool {.
    cdecl, importcpp: "SetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc unSetLayers*(this: var XCAFDocLayerTool; sh: TopoDS_Shape): bool {.cdecl,
    importcpp: "UnSetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc unSetOneLayer*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
                   aLayer: TCollectionExtendedString): bool {.cdecl,
    importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc unSetOneLayer*(this: var XCAFDocLayerTool; sh: TopoDS_Shape; aLayerL: TDF_Label): bool {.
    cdecl, importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc isSet*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
           aLayer: TCollectionExtendedString): bool {.cdecl, importcpp: "IsSet",
    header: "XCAFDoc_LayerTool.hxx".}
proc isSet*(this: var XCAFDocLayerTool; sh: TopoDS_Shape; aLayerL: TDF_Label): bool {.
    cdecl, importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
               aLayerS: var Handle[TColStdHSequenceOfExtendedString]): bool {.cdecl,
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; sh: TopoDS_Shape;
               aLayerLS: var TDF_LabelSequence): bool {.cdecl,
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc getLayers*(this: var XCAFDocLayerTool; sh: TopoDS_Shape): Handle[
    TColStdHSequenceOfExtendedString] {.cdecl, importcpp: "GetLayers",
                                       header: "XCAFDoc_LayerTool.hxx".}
proc id*(this: XCAFDocLayerTool): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_LayerTool.hxx".}
proc dumpJson*(this: XCAFDocLayerTool; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_LayerTool.hxx".}

