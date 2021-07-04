##  Copyright (c) 2019 OPEN CASCADE SAS
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
  ../Standard/Standard_Type, ../TDF/TDF_Attribute, ../TDF/TDF_LabelSequence

discard "forward decl of TopoDS_Shape"
discard "forward decl of Quantity_ColorRGBA"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_VisMaterial"
type
  XCAFDoc_VisMaterialTool* {.importcpp: "XCAFDoc_VisMaterialTool",
                            header: "XCAFDoc_VisMaterialTool.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## (if
                                                                                               ## not
                                                                                               ## exist)
                                                                                               ## ColorTool.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## GUID
                                                                                               ## of
                                                                                               ## this
                                                                                               ## attribute
                                                                                               ## type.

  XCAFDoc_VisMaterialToolbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_VisMaterialTool::get_type_name(@)",
                              header: "XCAFDoc_VisMaterialTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_VisMaterialTool::get_type_descriptor(@)",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc DynamicType*(this: XCAFDoc_VisMaterialTool): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XCAFDoc_VisMaterialTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_VisMaterialTool] {.
    importcpp: "XCAFDoc_VisMaterialTool::Set(@)",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_VisMaterialTool::GetID(@)",
                            header: "XCAFDoc_VisMaterialTool.hxx".}
proc constructXCAFDoc_VisMaterialTool*(): XCAFDoc_VisMaterialTool {.constructor,
    importcpp: "XCAFDoc_VisMaterialTool(@)", header: "XCAFDoc_VisMaterialTool.hxx".}
proc BaseLabel*(this: XCAFDoc_VisMaterialTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_VisMaterialTool.hxx".}
proc ShapeTool*(this: var XCAFDoc_VisMaterialTool): handle[XCAFDoc_ShapeTool] {.
    importcpp: "ShapeTool", header: "XCAFDoc_VisMaterialTool.hxx".}
proc IsMaterial*(this: XCAFDoc_VisMaterialTool; theLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc GetMaterial*(this: XCAFDoc_VisMaterialTool; theMatLabel: TDF_Label): handle[
    XCAFDoc_VisMaterial] {.noSideEffect, importcpp: "GetMaterial",
                          header: "XCAFDoc_VisMaterialTool.hxx".}
proc AddMaterial*(this: XCAFDoc_VisMaterialTool;
                 theMat: handle[XCAFDoc_VisMaterial];
                 theName: TCollection_AsciiString): TDF_Label {.noSideEffect,
    importcpp: "AddMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc AddMaterial*(this: XCAFDoc_VisMaterialTool; theName: TCollection_AsciiString): TDF_Label {.
    noSideEffect, importcpp: "AddMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc RemoveMaterial*(this: XCAFDoc_VisMaterialTool; theLabel: TDF_Label) {.
    noSideEffect, importcpp: "RemoveMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc GetMaterials*(this: XCAFDoc_VisMaterialTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetMaterials", header: "XCAFDoc_VisMaterialTool.hxx".}
proc SetShapeMaterial*(this: XCAFDoc_VisMaterialTool; theShapeLabel: TDF_Label;
                      theMaterialLabel: TDF_Label) {.noSideEffect,
    importcpp: "SetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc UnSetShapeMaterial*(this: XCAFDoc_VisMaterialTool; theShapeLabel: TDF_Label) {.
    noSideEffect, importcpp: "UnSetShapeMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc IsSetShapeMaterial*(this: XCAFDoc_VisMaterialTool; theLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsSetShapeMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc GetShapeMaterial*(theShapeLabel: TDF_Label; theMaterialLabel: var TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_VisMaterialTool::GetShapeMaterial(@)",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc GetShapeMaterial*(this: var XCAFDoc_VisMaterialTool; theShapeLabel: TDF_Label): handle[
    XCAFDoc_VisMaterial] {.importcpp: "GetShapeMaterial",
                          header: "XCAFDoc_VisMaterialTool.hxx".}
proc SetShapeMaterial*(this: var XCAFDoc_VisMaterialTool; theShape: TopoDS_Shape;
                      theMaterialLabel: TDF_Label): Standard_Boolean {.
    importcpp: "SetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc UnSetShapeMaterial*(this: var XCAFDoc_VisMaterialTool; theShape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "UnSetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc IsSetShapeMaterial*(this: var XCAFDoc_VisMaterialTool; theShape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsSetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc GetShapeMaterial*(this: var XCAFDoc_VisMaterialTool; theShape: TopoDS_Shape;
                      theMaterialLabel: var TDF_Label): Standard_Boolean {.
    importcpp: "GetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc GetShapeMaterial*(this: var XCAFDoc_VisMaterialTool; theShape: TopoDS_Shape): handle[
    XCAFDoc_VisMaterial] {.importcpp: "GetShapeMaterial",
                          header: "XCAFDoc_VisMaterialTool.hxx".}
proc ID*(this: XCAFDoc_VisMaterialTool): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "XCAFDoc_VisMaterialTool.hxx".}
proc Restore*(this: var XCAFDoc_VisMaterialTool; a2: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_VisMaterialTool.hxx".}
proc NewEmpty*(this: XCAFDoc_VisMaterialTool): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_VisMaterialTool.hxx".}
proc Paste*(this: XCAFDoc_VisMaterialTool; a2: handle[TDF_Attribute];
           a3: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_VisMaterialTool.hxx".}
discard "forward decl of XCAFDoc_VisMaterialTool"
type
  Handle_XCAFDoc_VisMaterialTool* = handle[XCAFDoc_VisMaterialTool]
