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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TDataStd/TDataStd_GenericEmpty, ../Standard/Standard_Boolean,
  ../TDF/TDF_LabelSequence, XCAFDoc_ColorType

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
  Handle_XCAFDoc_ColorTool* = handle[XCAFDoc_ColorTool]

## ! Provides tools to store and retrieve attributes (colors)
## ! of TopoDS_Shape in and from TDocStd_Document
## ! A Document is intended to hold different
## ! attributes of ONE shape and it's sub-shapes
## ! Provide tools for management of Colors section of document.

type
  XCAFDoc_ColorTool* {.importcpp: "XCAFDoc_ColorTool",
                      header: "XCAFDoc_ColorTool.hxx", bycopy.} = object of TDataStd_GenericEmpty ##
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


proc AutoNaming*(): Standard_Boolean {.importcpp: "XCAFDoc_ColorTool::AutoNaming(@)",
                                    header: "XCAFDoc_ColorTool.hxx".}
proc SetAutoNaming*(theIsAutoNaming: Standard_Boolean) {.
    importcpp: "XCAFDoc_ColorTool::SetAutoNaming(@)",
    header: "XCAFDoc_ColorTool.hxx".}
proc constructXCAFDoc_ColorTool*(): XCAFDoc_ColorTool {.constructor,
    importcpp: "XCAFDoc_ColorTool(@)", header: "XCAFDoc_ColorTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_ColorTool] {.
    importcpp: "XCAFDoc_ColorTool::Set(@)", header: "XCAFDoc_ColorTool.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_ColorTool::GetID(@)",
                            header: "XCAFDoc_ColorTool.hxx".}
proc BaseLabel*(this: XCAFDoc_ColorTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_ColorTool.hxx".}
proc ShapeTool*(this: var XCAFDoc_ColorTool): handle[XCAFDoc_ShapeTool] {.
    importcpp: "ShapeTool", header: "XCAFDoc_ColorTool.hxx".}
proc IsColor*(this: XCAFDoc_ColorTool; lab: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: XCAFDoc_ColorTool; lab: TDF_Label; col: var Quantity_Color): Standard_Boolean {.
    noSideEffect, importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: XCAFDoc_ColorTool; lab: TDF_Label; col: var Quantity_ColorRGBA): Standard_Boolean {.
    noSideEffect, importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc FindColor*(this: XCAFDoc_ColorTool; col: Quantity_Color; lab: var TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc FindColor*(this: XCAFDoc_ColorTool; col: Quantity_ColorRGBA; lab: var TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc FindColor*(this: XCAFDoc_ColorTool; col: Quantity_Color): TDF_Label {.
    noSideEffect, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc FindColor*(this: XCAFDoc_ColorTool; col: Quantity_ColorRGBA): TDF_Label {.
    noSideEffect, importcpp: "FindColor", header: "XCAFDoc_ColorTool.hxx".}
proc AddColor*(this: XCAFDoc_ColorTool; col: Quantity_Color): TDF_Label {.
    noSideEffect, importcpp: "AddColor", header: "XCAFDoc_ColorTool.hxx".}
proc AddColor*(this: XCAFDoc_ColorTool; col: Quantity_ColorRGBA): TDF_Label {.
    noSideEffect, importcpp: "AddColor", header: "XCAFDoc_ColorTool.hxx".}
proc RemoveColor*(this: XCAFDoc_ColorTool; lab: TDF_Label) {.noSideEffect,
    importcpp: "RemoveColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColors*(this: XCAFDoc_ColorTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetColors", header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: XCAFDoc_ColorTool; L: TDF_Label; colorL: TDF_Label;
              `type`: XCAFDoc_ColorType) {.noSideEffect, importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: XCAFDoc_ColorTool; L: TDF_Label; Color: Quantity_Color;
              `type`: XCAFDoc_ColorType) {.noSideEffect, importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: XCAFDoc_ColorTool; L: TDF_Label; Color: Quantity_ColorRGBA;
              `type`: XCAFDoc_ColorType) {.noSideEffect, importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc UnSetColor*(this: XCAFDoc_ColorTool; L: TDF_Label; `type`: XCAFDoc_ColorType) {.
    noSideEffect, importcpp: "UnSetColor", header: "XCAFDoc_ColorTool.hxx".}
proc IsSet*(this: XCAFDoc_ColorTool; L: TDF_Label; `type`: XCAFDoc_ColorType): Standard_Boolean {.
    noSideEffect, importcpp: "IsSet", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(L: TDF_Label; `type`: XCAFDoc_ColorType; colorL: var TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_ColorTool::GetColor(@)", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; L: TDF_Label; `type`: XCAFDoc_ColorType;
              color: var Quantity_Color): Standard_Boolean {.importcpp: "GetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; L: TDF_Label; `type`: XCAFDoc_ColorType;
              color: var Quantity_ColorRGBA): Standard_Boolean {.
    importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape; colorL: TDF_Label;
              `type`: XCAFDoc_ColorType): Standard_Boolean {.importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape; Color: Quantity_Color;
              `type`: XCAFDoc_ColorType): Standard_Boolean {.importcpp: "SetColor",
    header: "XCAFDoc_ColorTool.hxx".}
proc SetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
              Color: Quantity_ColorRGBA; `type`: XCAFDoc_ColorType): Standard_Boolean {.
    importcpp: "SetColor", header: "XCAFDoc_ColorTool.hxx".}
proc UnSetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
                `type`: XCAFDoc_ColorType): Standard_Boolean {.
    importcpp: "UnSetColor", header: "XCAFDoc_ColorTool.hxx".}
proc IsSet*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape; `type`: XCAFDoc_ColorType): Standard_Boolean {.
    importcpp: "IsSet", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
              `type`: XCAFDoc_ColorType; colorL: var TDF_Label): Standard_Boolean {.
    importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
              `type`: XCAFDoc_ColorType; color: var Quantity_Color): Standard_Boolean {.
    importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetColor*(this: var XCAFDoc_ColorTool; S: TopoDS_Shape;
              `type`: XCAFDoc_ColorType; color: var Quantity_ColorRGBA): Standard_Boolean {.
    importcpp: "GetColor", header: "XCAFDoc_ColorTool.hxx".}
proc IsVisible*(this: XCAFDoc_ColorTool; L: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsVisible", header: "XCAFDoc_ColorTool.hxx".}
proc SetVisibility*(this: var XCAFDoc_ColorTool; shapeLabel: TDF_Label;
                   isvisible: Standard_Boolean = Standard_True) {.
    importcpp: "SetVisibility", header: "XCAFDoc_ColorTool.hxx".}
proc IsColorByLayer*(this: XCAFDoc_ColorTool; L: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsColorByLayer", header: "XCAFDoc_ColorTool.hxx".}
proc SetColorByLayer*(this: var XCAFDoc_ColorTool; shapeLabel: TDF_Label;
                     isColorByLayer: Standard_Boolean = Standard_False) {.
    importcpp: "SetColorByLayer", header: "XCAFDoc_ColorTool.hxx".}
proc SetInstanceColor*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDoc_ColorType; color: Quantity_Color;
                      isCreateSHUO: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "SetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc SetInstanceColor*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDoc_ColorType; color: Quantity_ColorRGBA;
                      isCreateSHUO: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "SetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetInstanceColor*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDoc_ColorType; color: var Quantity_Color): Standard_Boolean {.
    importcpp: "GetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc GetInstanceColor*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape;
                      `type`: XCAFDoc_ColorType; color: var Quantity_ColorRGBA): Standard_Boolean {.
    importcpp: "GetInstanceColor", header: "XCAFDoc_ColorTool.hxx".}
proc IsInstanceVisible*(this: var XCAFDoc_ColorTool; theShape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsInstanceVisible", header: "XCAFDoc_ColorTool.hxx".}
proc ReverseChainsOfTreeNodes*(this: var XCAFDoc_ColorTool): Standard_Boolean {.
    importcpp: "ReverseChainsOfTreeNodes", header: "XCAFDoc_ColorTool.hxx".}
proc ID*(this: XCAFDoc_ColorTool): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_ColorTool.hxx".}
proc DumpJson*(this: XCAFDoc_ColorTool; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_ColorTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_ColorTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!
