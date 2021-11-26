##  Created on: 2000-05-11
##  Created by: Edward AGAPOV
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
discard "forward decl of Quantity_Color"
discard "forward decl of Quantity_ColorRGBA"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_ColorTool"
discard "forward decl of XCAFDoc_ColorTool"
type
  HandleXCAFDocColorTool* = Handle[XCAFDocColorTool]

## ! Provides tools to store and retrieve attributes (colors)
## ! of TopoDS_Shape in and from TDocStd_Document
## ! A Document is intended to hold different
## ! attributes of ONE shape and it's sub-shapes
## ! Provide tools for management of Colors section of document.

type
  XCAFDocColorTool* {.importcpp: "XCAFDoc_ColorTool",
                     header: "XCAFDoc_ColorTool.hxx", bycopy.} = object of TDataStdGenericEmpty ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## current
                                                                                         ## auto-naming
                                                                                         ## mode;
                                                                                         ## TRUE
                                                                                         ## by
                                                                                         ## default.
                                                                                         ##
                                                                                         ## !
                                                                                         ## If
                                                                                         ## TRUE
                                                                                         ## then
                                                                                         ## for
                                                                                         ## added
                                                                                         ## colors
                                                                                         ## the
                                                                                         ## TDataStd_Name
                                                                                         ## attribute
                                                                                         ## will
                                                                                         ## be
                                                                                         ## automatically
                                                                                         ## added.
                                                                                         ##
                                                                                         ## !
                                                                                         ## This
                                                                                         ## setting
                                                                                         ## is
                                                                                         ## global.


proc autoNaming*(): bool {.importcpp: "XCAFDoc_ColorTool::AutoNaming(@)",
                        header: "XCAFDoc_ColorTool.hxx".}
proc setAutoNaming*(theIsAutoNaming: bool) {.
    importcpp: "XCAFDoc_ColorTool::SetAutoNaming(@)",
    header: "XCAFDoc_ColorTool.hxx".}
proc constructXCAFDocColorTool*(): XCAFDocColorTool {.constructor,
    importcpp: "XCAFDoc_ColorTool(@)", header: "XCAFDoc_ColorTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocColorTool] {.
    importcpp: "XCAFDoc_ColorTool::Set(@)", header: "XCAFDoc_ColorTool.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_ColorTool::GetID(@)",
                           header: "XCAFDoc_ColorTool.hxx".}
proc baseLabel*(this: XCAFDocColorTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_ColorTool.hxx".}
proc shapeTool*(this: var XCAFDocColorTool): Handle[XCAFDocShapeTool] {.
    importcpp: "ShapeTool", header: "XCAFDoc_ColorTool.hxx".}
proc isColor*(this: XCAFDocColorTool; lab: TDF_Label): bool {.noSideEffect,
    importcpp: "IsColor", header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: XCAFDocColorTool; lab: TDF_Label; col: var QuantityColor): bool {.
    noSideEffect, importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: XCAFDocColorTool; lab: TDF_Label; col: var QuantityColorRGBA): bool {.
    noSideEffect, importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc findColor*(this: XCAFDocColorTool; col: QuantityColor; lab: var TDF_Label): bool {.
    noSideEffect, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc findColor*(this: XCAFDocColorTool; col: QuantityColorRGBA; lab: var TDF_Label): bool {.
    noSideEffect, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc findColor*(this: XCAFDocColorTool; col: QuantityColor): TDF_Label {.noSideEffect,
    importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc findColor*(this: XCAFDocColorTool; col: QuantityColorRGBA): TDF_Label {.
    noSideEffect, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc addColor*(this: XCAFDocColorTool; col: QuantityColor): TDF_Label {.noSideEffect,
    importcpp: "AddColor", header: "XCAFDoc_ColorTool.hxx".}
proc addColor*(this: XCAFDocColorTool; col: QuantityColorRGBA): TDF_Label {.
    noSideEffect, importcpp: "AddColor", header: "XCAFDoc_ColorTool.hxx".}
proc removeColor*(this: XCAFDocColorTool; lab: TDF_Label) {.noSideEffect,
    importcpp: "RemoveColor", header: "XCAFDoc_ColorTool.hxx".}
proc getColors*(this: XCAFDocColorTool; labels: var TDF_LabelSequence) {.noSideEffect,
    importcpp: "GetColors", header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: XCAFDocColorTool; L: TDF_Label; colorL: TDF_Label;
              `type`: XCAFDocColorType) {.noSideEffect, importcpp: "SetColor",
                                        header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: XCAFDocColorTool; L: TDF_Label; color: QuantityColor;
              `type`: XCAFDocColorType) {.noSideEffect, importcpp: "SetColor",
                                        header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: XCAFDocColorTool; L: TDF_Label; color: QuantityColorRGBA;
              `type`: XCAFDocColorType) {.noSideEffect, importcpp: "SetColor",
                                        header: "XCAFDoc_ColorTool.hxx".}
proc unSetColor*(this: XCAFDocColorTool; L: TDF_Label; `type`: XCAFDocColorType) {.
    noSideEffect, importcpp: "UnSetColor", header: "XCAFDoc_ColorTool.hxx".}
proc isSet*(this: XCAFDocColorTool; L: TDF_Label; `type`: XCAFDocColorType): bool {.
    noSideEffect, importcpp: "IsSet", header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(L: TDF_Label; `type`: XCAFDocColorType; colorL: var TDF_Label): bool {.
    importcpp: "XCAFDoc_ColorTool::GetColor(@)", header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; L: TDF_Label; `type`: XCAFDocColorType;
              color: var QuantityColor): bool {.importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; L: TDF_Label; `type`: XCAFDocColorType;
              color: var QuantityColorRGBA): bool {.importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; colorL: TDF_Label;
              `type`: XCAFDocColorType): bool {.importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; color: QuantityColor;
              `type`: XCAFDocColorType): bool {.importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; color: QuantityColorRGBA;
              `type`: XCAFDocColorType): bool {.importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc unSetColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType): bool {.
    importcpp: "UnSetColor", header: "XCAFDoc_ColorTool.hxx".}
proc isSet*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType): bool {.
    importcpp: "IsSet", header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType;
              colorL: var TDF_Label): bool {.importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType;
              color: var QuantityColor): bool {.importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType;
              color: var QuantityColorRGBA): bool {.importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc isVisible*(this: XCAFDocColorTool; L: TDF_Label): bool {.noSideEffect,
    importcpp: "IsVisible", header: "XCAFDoc_ColorTool.hxx".}
proc setVisibility*(this: var XCAFDocColorTool; shapeLabel: TDF_Label;
                   isvisible: bool = true) {.importcpp: "SetVisibility",
    header: "XCAFDoc_ColorTool.hxx".}
proc isColorByLayer*(this: XCAFDocColorTool; L: TDF_Label): bool {.noSideEffect,
    importcpp: "IsColorByLayer", header: "XCAFDoc_ColorTool.hxx".}
proc setColorByLayer*(this: var XCAFDocColorTool; shapeLabel: TDF_Label;
                     isColorByLayer: bool = false) {.importcpp: "SetColorByLayer",
    header: "XCAFDoc_ColorTool.hxx".}
proc setInstanceColor*(this: var XCAFDocColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDocColorType; color: QuantityColor;
                      isCreateSHUO: bool = true): bool {.
    importcpp: "SetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc setInstanceColor*(this: var XCAFDocColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDocColorType; color: QuantityColorRGBA;
                      isCreateSHUO: bool = true): bool {.
    importcpp: "SetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc getInstanceColor*(this: var XCAFDocColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDocColorType; color: var QuantityColor): bool {.
    importcpp: "GetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc getInstanceColor*(this: var XCAFDocColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDocColorType; color: var QuantityColorRGBA): bool {.
    importcpp: "GetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc isInstanceVisible*(this: var XCAFDocColorTool; theShape: TopoDS_Shape): bool {.
    importcpp: "IsInstanceVisible", header: "XCAFDoc_ColorTool.hxx".}
proc reverseChainsOfTreeNodes*(this: var XCAFDocColorTool): bool {.
    importcpp: "ReverseChainsOfTreeNodes", header: "XCAFDoc_ColorTool.hxx".}
proc id*(this: XCAFDocColorTool): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_ColorTool.hxx".}
proc dumpJson*(this: XCAFDocColorTool; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_ColorTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_ColorTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!















































