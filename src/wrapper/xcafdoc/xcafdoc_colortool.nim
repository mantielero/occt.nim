import xcafdoc_types

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

proc AutoNaming*(): bool {.cdecl, importcpp: "XCAFDoc_ColorTool::AutoNaming(@)",
                        header: "XCAFDoc_ColorTool.hxx".}
proc SetAutoNaming*(theIsAutoNaming: bool) {.cdecl,
    importcpp: "XCAFDoc_ColorTool::SetAutoNaming(@)",
    header: "XCAFDoc_ColorTool.hxx".}
proc newXCAFDoc_ColorTool*(): XCAFDoc_ColorTool {.cdecl, constructor,
    importcpp: "XCAFDoc_ColorTool(@)", header: "XCAFDoc_ColorTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_ColorTool] {.cdecl,
    importcpp: "XCAFDoc_ColorTool::Set(@)", header: "XCAFDoc_ColorTool.hxx".}
proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_ColorTool::GetID(@)",
                            header: "XCAFDoc_ColorTool.hxx".}
proc BaseLabel*(this: XCAFDoc_ColorTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_ColorTool.hxx".}
proc ShapeTool*(this: var XCAFDoc_ColorTool): handle[XCAFDoc_ShapeTool] {.cdecl,
    importcpp: "ShapeTool", header: "XCAFDoc_ColorTool.hxx".}
proc IsColor*(this: XCAFDoc_ColorTool; lab: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: XCAFDoc_ColorTool; lab: TDF_Label; col: var Quantity_Color): bool {.
    noSideEffect, cdecl, importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: XCAFDoc_ColorTool; lab: TDF_Label; col: var Quantity_ColorRGBA): bool {.
    noSideEffect, cdecl, importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc FindColor*(this: XCAFDoc_ColorTool; col: Quantity_Color; lab: var TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc FindColor*(this: XCAFDoc_ColorTool; col: Quantity_ColorRGBA; lab: var TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc FindColor*(this: XCAFDoc_ColorTool; col: Quantity_Color): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc FindColor*(this: XCAFDoc_ColorTool; col: Quantity_ColorRGBA): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc AddColor*(this: XCAFDoc_ColorTool; col: Quantity_Color): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddColor", header: "XCAFDoc_ColorTool.hxx".}
proc AddColor*(this: XCAFDoc_ColorTool; col: Quantity_ColorRGBA): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddColor", header: "XCAFDoc_ColorTool.hxx".}
proc RemoveColor*(this: XCAFDoc_ColorTool; lab: TDF_Label) {.noSideEffect, cdecl,
    importcpp: "RemoveColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColors*(this: XCAFDoc_ColorTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetColors", header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: XCAFDoc_ColorTool; L: TDF_Label; colorL: TDF_Label;
              `type`: XCAFDoc_ColorType) {.noSideEffect, cdecl,
    importcpp: "SetColor", header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: XCAFDoc_ColorTool; L: TDF_Label; Color: Quantity_Color;
              `type`: XCAFDoc_ColorType) {.noSideEffect, cdecl,
    importcpp: "SetColor", header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: XCAFDoc_ColorTool; L: TDF_Label; Color: Quantity_ColorRGBA;
              `type`: XCAFDoc_ColorType) {.noSideEffect, cdecl,
    importcpp: "SetColor", header: "XCAFDoc_ColorTool.hxx".}
proc UnSetColor*(this: XCAFDoc_ColorTool; L: TDF_Label; `type`: XCAFDoc_ColorType) {.
    noSideEffect, cdecl, importcpp: "UnSetColor", header: "XCAFDoc_ColorTool.hxx".}
proc IsSet*(this: XCAFDoc_ColorTool; L: TDF_Label; `type`: XCAFDoc_ColorType): bool {.
    noSideEffect, cdecl, importcpp: "IsSet", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(L: TDF_Label; `type`: XCAFDoc_ColorType; colorL: var TDF_Label): bool {.
    cdecl, importcpp: "XCAFDoc_ColorTool::GetColor(@)",
    header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; L: TDF_Label; `type`: XCAFDoc_ColorType;
              color: var Quantity_Color): bool {.cdecl, importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; L: TDF_Label; `type`: XCAFDoc_ColorType;
              color: var Quantity_ColorRGBA): bool {.cdecl, importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape; colorL: TDF_Label;
              `type`: XCAFDoc_ColorType): bool {.cdecl, importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape; Color: Quantity_Color;
              `type`: XCAFDoc_ColorType): bool {.cdecl, importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
              Color: Quantity_ColorRGBA; `type`: XCAFDoc_ColorType): bool {.cdecl,
    importcpp: "SetColor", header: "XCAFDoc_ColorTool.hxx".}
proc UnSetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
                `type`: XCAFDoc_ColorType): bool {.cdecl, importcpp: "UnSetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc IsSet*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape; `type`: XCAFDoc_ColorType): bool {.
    cdecl, importcpp: "IsSet", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
              `type`: XCAFDoc_ColorType; colorL: var TDF_Label): bool {.cdecl,
    importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
              `type`: XCAFDoc_ColorType; color: var Quantity_Color): bool {.cdecl,
    importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
              `type`: XCAFDoc_ColorType; color: var Quantity_ColorRGBA): bool {.cdecl,
    importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc IsVisible*(this: XCAFDoc_ColorTool; L: TDF_Label): bool {.noSideEffect, cdecl,
    importcpp: "IsVisible", header: "XCAFDoc_ColorTool.hxx".}
proc SetVisibility*(this: var XCAFDoc_ColorTool; shapeLabel: TDF_Label;
                   isvisible: bool = true) {.cdecl, importcpp: "SetVisibility",
    header: "XCAFDoc_ColorTool.hxx".}
proc IsColorByLayer*(this: XCAFDoc_ColorTool; L: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "IsColorByLayer", header: "XCAFDoc_ColorTool.hxx".}
proc SetColorByLayer*(this: var XCAFDoc_ColorTool; shapeLabel: TDF_Label;
                     isColorByLayer: bool = false) {.cdecl,
    importcpp: "SetColorByLayer", header: "XCAFDoc_ColorTool.hxx".}
proc SetInstanceColor*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDoc_ColorType; color: Quantity_Color;
                      isCreateSHUO: bool = true): bool {.cdecl,
    importcpp: "SetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc SetInstanceColor*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDoc_ColorType; color: Quantity_ColorRGBA;
                      isCreateSHUO: bool = true): bool {.cdecl,
    importcpp: "SetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetInstanceColor*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDoc_ColorType; color: var Quantity_Color): bool {.
    cdecl, importcpp: "GetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetInstanceColor*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDoc_ColorType; color: var Quantity_ColorRGBA): bool {.
    cdecl, importcpp: "GetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc IsInstanceVisible*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape): bool {.
    cdecl, importcpp: "IsInstanceVisible", header: "XCAFDoc_ColorTool.hxx".}
proc ReverseChainsOfTreeNodes*(this: var XCAFDoc_ColorTool): bool {.cdecl,
    importcpp: "ReverseChainsOfTreeNodes", header: "XCAFDoc_ColorTool.hxx".}
proc ID*(this: XCAFDoc_ColorTool): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_ColorTool.hxx".}
proc DumpJson*(this: XCAFDoc_ColorTool; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_ColorTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_ColorTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!
