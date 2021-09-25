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

discard "forward decl of TopoDS_Shape"
discard "forward decl of Quantity_ColorRGBA"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_VisMaterial"
type
  XCAFDocVisMaterialTool* {.importcpp: "XCAFDoc_VisMaterialTool",
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

  XCAFDocVisMaterialToolbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_VisMaterialTool::get_type_name(@)",
                            header: "XCAFDoc_VisMaterialTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_VisMaterialTool::get_type_descriptor(@)",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc dynamicType*(this: XCAFDocVisMaterialTool): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "XCAFDoc_VisMaterialTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocVisMaterialTool] {.
    importcpp: "XCAFDoc_VisMaterialTool::Set(@)",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_VisMaterialTool::GetID(@)",
                           header: "XCAFDoc_VisMaterialTool.hxx".}
proc constructXCAFDocVisMaterialTool*(): XCAFDocVisMaterialTool {.constructor,
    importcpp: "XCAFDoc_VisMaterialTool(@)", header: "XCAFDoc_VisMaterialTool.hxx".}
proc baseLabel*(this: XCAFDocVisMaterialTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_VisMaterialTool.hxx".}
proc shapeTool*(this: var XCAFDocVisMaterialTool): Handle[XCAFDocShapeTool] {.
    importcpp: "ShapeTool", header: "XCAFDoc_VisMaterialTool.hxx".}
proc isMaterial*(this: XCAFDocVisMaterialTool; theLabel: TDF_Label): bool {.
    noSideEffect, importcpp: "IsMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc getMaterial*(this: XCAFDocVisMaterialTool; theMatLabel: TDF_Label): Handle[
    XCAFDocVisMaterial] {.noSideEffect, importcpp: "GetMaterial",
                         header: "XCAFDoc_VisMaterialTool.hxx".}
proc addMaterial*(this: XCAFDocVisMaterialTool; theMat: Handle[XCAFDocVisMaterial];
                 theName: TCollectionAsciiString): TDF_Label {.noSideEffect,
    importcpp: "AddMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc addMaterial*(this: XCAFDocVisMaterialTool; theName: TCollectionAsciiString): TDF_Label {.
    noSideEffect, importcpp: "AddMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc removeMaterial*(this: XCAFDocVisMaterialTool; theLabel: TDF_Label) {.
    noSideEffect, importcpp: "RemoveMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc getMaterials*(this: XCAFDocVisMaterialTool; labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetMaterials", header: "XCAFDoc_VisMaterialTool.hxx".}
proc setShapeMaterial*(this: XCAFDocVisMaterialTool; theShapeLabel: TDF_Label;
                      theMaterialLabel: TDF_Label) {.noSideEffect,
    importcpp: "SetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc unSetShapeMaterial*(this: XCAFDocVisMaterialTool; theShapeLabel: TDF_Label) {.
    noSideEffect, importcpp: "UnSetShapeMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc isSetShapeMaterial*(this: XCAFDocVisMaterialTool; theLabel: TDF_Label): bool {.
    noSideEffect, importcpp: "IsSetShapeMaterial",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc getShapeMaterial*(theShapeLabel: TDF_Label; theMaterialLabel: var TDF_Label): bool {.
    importcpp: "XCAFDoc_VisMaterialTool::GetShapeMaterial(@)",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc getShapeMaterial*(this: var XCAFDocVisMaterialTool; theShapeLabel: TDF_Label): Handle[
    XCAFDocVisMaterial] {.importcpp: "GetShapeMaterial",
                         header: "XCAFDoc_VisMaterialTool.hxx".}
proc setShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape;
                      theMaterialLabel: TDF_Label): bool {.
    importcpp: "SetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc unSetShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape): bool {.
    importcpp: "UnSetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc isSetShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape): bool {.
    importcpp: "IsSetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc getShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape;
                      theMaterialLabel: var TDF_Label): bool {.
    importcpp: "GetShapeMaterial", header: "XCAFDoc_VisMaterialTool.hxx".}
proc getShapeMaterial*(this: var XCAFDocVisMaterialTool; theShape: TopoDS_Shape): Handle[
    XCAFDocVisMaterial] {.importcpp: "GetShapeMaterial",
                         header: "XCAFDoc_VisMaterialTool.hxx".}
proc id*(this: XCAFDocVisMaterialTool): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_VisMaterialTool.hxx".}
proc restore*(this: var XCAFDocVisMaterialTool; a2: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_VisMaterialTool.hxx".}
proc newEmpty*(this: XCAFDocVisMaterialTool): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_VisMaterialTool.hxx".}
proc paste*(this: XCAFDocVisMaterialTool; a2: Handle[TDF_Attribute];
           a3: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_VisMaterialTool.hxx".}
discard "forward decl of XCAFDoc_VisMaterialTool"
type
  HandleXCAFDocVisMaterialTool* = Handle[XCAFDocVisMaterialTool]

