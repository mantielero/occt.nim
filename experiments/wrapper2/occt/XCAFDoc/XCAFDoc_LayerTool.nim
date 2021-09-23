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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TDataStd/TDataStd_GenericEmpty, ../Standard/Standard_Boolean,
  ../TDF/TDF_LabelSequence, ../TColStd/TColStd_HSequenceOfExtendedString

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
  Handle_XCAFDoc_LayerTool* = handle[XCAFDoc_LayerTool]

## ! Provides tools to store and retrieve attributes (Layers)
## ! of TopoDS_Shape in and from TDocStd_Document
## ! A Document is intended to hold different
## ! attributes of ONE shape and it's sub-shapes
## ! Provide tools for management of Layers section of document.

type
  XCAFDoc_LayerTool* {.importcpp: "XCAFDoc_LayerTool",
                      header: "XCAFDoc_LayerTool.hxx", bycopy.} = object of TDataStd_GenericEmpty


proc constructXCAFDoc_LayerTool*(): XCAFDoc_LayerTool {.constructor,
    importcpp: "XCAFDoc_LayerTool(@)", header: "XCAFDoc_LayerTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_LayerTool] {.
    importcpp: "XCAFDoc_LayerTool::Set(@)", header: "XCAFDoc_LayerTool.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_LayerTool::GetID(@)",
                            header: "XCAFDoc_LayerTool.hxx".}
proc BaseLabel*(this: XCAFDoc_LayerTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_LayerTool.hxx".}
proc ShapeTool*(this: var XCAFDoc_LayerTool): handle[XCAFDoc_ShapeTool] {.
    importcpp: "ShapeTool", header: "XCAFDoc_LayerTool.hxx".}
proc IsLayer*(this: XCAFDoc_LayerTool; lab: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsLayer", header: "XCAFDoc_LayerTool.hxx".}
proc GetLayer*(this: XCAFDoc_LayerTool; lab: TDF_Label;
              aLayer: var TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "GetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc FindLayer*(this: XCAFDoc_LayerTool; aLayer: TCollection_ExtendedString;
               lab: var TDF_Label): Standard_Boolean {.noSideEffect,
    importcpp: "FindLayer", header: "XCAFDoc_LayerTool.hxx".}
proc FindLayer*(this: XCAFDoc_LayerTool; aLayer: TCollection_ExtendedString): TDF_Label {.
    noSideEffect, importcpp: "FindLayer", header: "XCAFDoc_LayerTool.hxx".}
proc AddLayer*(this: XCAFDoc_LayerTool; aLayer: TCollection_ExtendedString): TDF_Label {.
    noSideEffect, importcpp: "AddLayer", header: "XCAFDoc_LayerTool.hxx".}
proc RemoveLayer*(this: XCAFDoc_LayerTool; lab: TDF_Label) {.noSideEffect,
    importcpp: "RemoveLayer", header: "XCAFDoc_LayerTool.hxx".}
proc GetLayerLabels*(this: XCAFDoc_LayerTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetLayerLabels", header: "XCAFDoc_LayerTool.hxx".}
proc SetLayer*(this: XCAFDoc_LayerTool; L: TDF_Label; LayerL: TDF_Label;
              shapeInOneLayer: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "SetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc SetLayer*(this: XCAFDoc_LayerTool; L: TDF_Label;
              aLayer: TCollection_ExtendedString;
              shapeInOneLayer: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "SetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc UnSetLayers*(this: XCAFDoc_LayerTool; L: TDF_Label) {.noSideEffect,
    importcpp: "UnSetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc UnSetOneLayer*(this: XCAFDoc_LayerTool; L: TDF_Label;
                   aLayer: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc UnSetOneLayer*(this: XCAFDoc_LayerTool; L: TDF_Label; aLayerL: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc IsSet*(this: XCAFDoc_LayerTool; L: TDF_Label; aLayer: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc IsSet*(this: XCAFDoc_LayerTool; L: TDF_Label; aLayerL: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc GetLayers*(this: var XCAFDoc_LayerTool; L: TDF_Label;
               aLayerS: var handle[TColStd_HSequenceOfExtendedString]): Standard_Boolean {.
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc GetLayers*(this: var XCAFDoc_LayerTool; L: TDF_Label;
               aLayerLS: var TDF_LabelSequence): Standard_Boolean {.
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc GetLayers*(this: var XCAFDoc_LayerTool; L: TDF_Label): handle[
    TColStd_HSequenceOfExtendedString] {.importcpp: "GetLayers",
                                        header: "XCAFDoc_LayerTool.hxx".}
proc GetShapesOfLayer*(this: XCAFDoc_LayerTool; layerL: TDF_Label;
                      ShLabels: var TDF_LabelSequence) {.noSideEffect,
    importcpp: "GetShapesOfLayer", header: "XCAFDoc_LayerTool.hxx".}
proc IsVisible*(this: XCAFDoc_LayerTool; layerL: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsVisible", header: "XCAFDoc_LayerTool.hxx".}
proc SetVisibility*(this: XCAFDoc_LayerTool; layerL: TDF_Label;
                   isvisible: Standard_Boolean = Standard_True) {.noSideEffect,
    importcpp: "SetVisibility", header: "XCAFDoc_LayerTool.hxx".}
proc SetLayer*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape; LayerL: TDF_Label;
              shapeInOneLayer: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "SetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc SetLayer*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape;
              aLayer: TCollection_ExtendedString;
              shapeInOneLayer: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "SetLayer", header: "XCAFDoc_LayerTool.hxx".}
proc UnSetLayers*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape): Standard_Boolean {.
    importcpp: "UnSetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc UnSetOneLayer*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape;
                   aLayer: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc UnSetOneLayer*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape; aLayerL: TDF_Label): Standard_Boolean {.
    importcpp: "UnSetOneLayer", header: "XCAFDoc_LayerTool.hxx".}
proc IsSet*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape;
           aLayer: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc IsSet*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape; aLayerL: TDF_Label): Standard_Boolean {.
    importcpp: "IsSet", header: "XCAFDoc_LayerTool.hxx".}
proc GetLayers*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape;
               aLayerS: var handle[TColStd_HSequenceOfExtendedString]): Standard_Boolean {.
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc GetLayers*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape;
               aLayerLS: var TDF_LabelSequence): Standard_Boolean {.
    importcpp: "GetLayers", header: "XCAFDoc_LayerTool.hxx".}
proc GetLayers*(this: var XCAFDoc_LayerTool; Sh: TopoDS_Shape): handle[
    TColStd_HSequenceOfExtendedString] {.importcpp: "GetLayers",
                                        header: "XCAFDoc_LayerTool.hxx".}
proc ID*(this: XCAFDoc_LayerTool): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_LayerTool.hxx".}
proc DumpJson*(this: XCAFDoc_LayerTool; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_LayerTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_LayerTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!
