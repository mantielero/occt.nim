import ../tdf/tdf_types
import ../topods/topods_types
import ../quantity/quantity_types
import xcafdoc_types
import ../standard/standard_types



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





proc autoNaming*(): bool {.cdecl, importcpp: "XCAFDoc_ColorTool::AutoNaming(@)",
                        header: "XCAFDoc_ColorTool.hxx".}
proc setAutoNaming*(theIsAutoNaming: bool) {.cdecl,
    importcpp: "XCAFDoc_ColorTool::SetAutoNaming(@)",
    header: "XCAFDoc_ColorTool.hxx".}
proc newXCAFDocColorTool*(): XCAFDocColorTool {.cdecl, constructor,
    importcpp: "XCAFDoc_ColorTool(@)", header: "XCAFDoc_ColorTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocColorTool] {.cdecl,
    importcpp: "XCAFDoc_ColorTool::Set(@)", header: "XCAFDoc_ColorTool.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_ColorTool::GetID(@)",
                           header: "XCAFDoc_ColorTool.hxx".}
proc baseLabel*(this: XCAFDocColorTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_ColorTool.hxx".}
proc shapeTool*(this: var XCAFDocColorTool): Handle[XCAFDocShapeTool] {.cdecl,
    importcpp: "ShapeTool", header: "XCAFDoc_ColorTool.hxx".}
proc isColor*(this: XCAFDocColorTool; lab: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsColor", header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: XCAFDocColorTool; lab: TDF_Label; col: var QuantityColor): bool {.
    noSideEffect, cdecl, importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: XCAFDocColorTool; lab: TDF_Label; col: var QuantityColorRGBA): bool {.
    noSideEffect, cdecl, importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc findColor*(this: XCAFDocColorTool; col: QuantityColor; lab: var TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc findColor*(this: XCAFDocColorTool; col: QuantityColorRGBA; lab: var TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc findColor*(this: XCAFDocColorTool; col: QuantityColor): TDF_Label {.noSideEffect,
    cdecl, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc findColor*(this: XCAFDocColorTool; col: QuantityColorRGBA): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc addColor*(this: XCAFDocColorTool; col: QuantityColor): TDF_Label {.noSideEffect,
    cdecl, importcpp: "AddColor", header: "XCAFDoc_ColorTool.hxx".}
proc addColor*(this: XCAFDocColorTool; col: QuantityColorRGBA): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddColor", header: "XCAFDoc_ColorTool.hxx".}
proc removeColor*(this: XCAFDocColorTool; lab: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "RemoveColor", header: "XCAFDoc_ColorTool.hxx".}
proc getColors*(this: XCAFDocColorTool; labels: var TDF_LabelSequence) {.noSideEffect,
    cdecl, importcpp: "GetColors", header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: XCAFDocColorTool; L: TDF_Label; colorL: TDF_Label;
              `type`: XCAFDocColorType) {.noSideEffect, cdecl,
                                        importcpp: "SetColor",
                                        header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: XCAFDocColorTool; L: TDF_Label; color: QuantityColor;
              `type`: XCAFDocColorType) {.noSideEffect, cdecl,
                                        importcpp: "SetColor",
                                        header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: XCAFDocColorTool; L: TDF_Label; color: QuantityColorRGBA;
              `type`: XCAFDocColorType) {.noSideEffect, cdecl,
                                        importcpp: "SetColor",
                                        header: "XCAFDoc_ColorTool.hxx".}
proc unSetColor*(this: XCAFDocColorTool; L: TDF_Label; `type`: XCAFDocColorType) {.
    noSideEffect, cdecl, importcpp: "UnSetColor", header: "XCAFDoc_ColorTool.hxx".}
proc isSet*(this: XCAFDocColorTool; L: TDF_Label; `type`: XCAFDocColorType): bool {.
    noSideEffect, cdecl, importcpp: "IsSet", header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(L: TDF_Label; `type`: XCAFDocColorType; colorL: var TDF_Label): bool {.
    cdecl, importcpp: "XCAFDoc_ColorTool::GetColor(@)",
    header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; L: TDF_Label; `type`: XCAFDocColorType;
              color: var QuantityColor): bool {.cdecl, importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; L: TDF_Label; `type`: XCAFDocColorType;
              color: var QuantityColorRGBA): bool {.cdecl, importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; colorL: TDF_Label;
              `type`: XCAFDocColorType): bool {.cdecl, importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; color: QuantityColor;
              `type`: XCAFDocColorType): bool {.cdecl, importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc setColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; color: QuantityColorRGBA;
              `type`: XCAFDocColorType): bool {.cdecl, importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc unSetColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType): bool {.
    cdecl, importcpp: "UnSetColor", header: "XCAFDoc_ColorTool.hxx".}
proc isSet*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType): bool {.
    cdecl, importcpp: "IsSet", header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType;
              colorL: var TDF_Label): bool {.cdecl, importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType;
              color: var QuantityColor): bool {.cdecl, importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc getColor*(this: var XCAFDocColorTool; s: TopoDS_Shape; `type`: XCAFDocColorType;
              color: var QuantityColorRGBA): bool {.cdecl, importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc isVisible*(this: XCAFDocColorTool; L: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsVisible", header: "XCAFDoc_ColorTool.hxx".}
proc setVisibility*(this: var XCAFDocColorTool; shapeLabel: TDF_Label;
                   isvisible: bool = true) {.cdecl, importcpp: "SetVisibility",
    header: "XCAFDoc_ColorTool.hxx".}
proc isColorByLayer*(this: XCAFDocColorTool; L: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsColorByLayer", header: "XCAFDoc_ColorTool.hxx".}
proc setColorByLayer*(this: var XCAFDocColorTool; shapeLabel: TDF_Label;
                     isColorByLayer: bool = false) {.cdecl,
    importcpp: "SetColorByLayer", header: "XCAFDoc_ColorTool.hxx".}
proc setInstanceColor*(this: var XCAFDocColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDocColorType; color: QuantityColor;
                      isCreateSHUO: bool = true): bool {.cdecl,
    importcpp: "SetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc setInstanceColor*(this: var XCAFDocColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDocColorType; color: QuantityColorRGBA;
                      isCreateSHUO: bool = true): bool {.cdecl,
    importcpp: "SetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc getInstanceColor*(this: var XCAFDocColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDocColorType; color: var QuantityColor): bool {.
    cdecl, importcpp: "GetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc getInstanceColor*(this: var XCAFDocColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDocColorType; color: var QuantityColorRGBA): bool {.
    cdecl, importcpp: "GetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc isInstanceVisible*(this: var XCAFDocColorTool; theShape: TopoDS_Shape): bool {.
    cdecl, importcpp: "IsInstanceVisible", header: "XCAFDoc_ColorTool.hxx".}
proc reverseChainsOfTreeNodes*(this: var XCAFDocColorTool): bool {.cdecl,
    importcpp: "ReverseChainsOfTreeNodes", header: "XCAFDoc_ColorTool.hxx".}
proc id*(this: XCAFDocColorTool): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_ColorTool.hxx".}
proc dumpJson*(this: XCAFDocColorTool; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_ColorTool.hxx".}

