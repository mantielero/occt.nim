##  Created on: 2003-03-05
##  Created by: Sergey KUUL
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_MaterialTool"
discard "forward decl of XCAFDoc_MaterialTool"
type
  HandleXCAFDocMaterialTool* = Handle[XCAFDocMaterialTool]

## ! Provides tools to store and retrieve attributes (materials)
## ! of TopoDS_Shape in and from TDocStd_Document
## ! A Document is intended to hold different
## ! attributes of ONE shape and it's sub-shapes
## ! Provide tools for management of Materialss section of document.

type
  XCAFDocMaterialTool* {.importcpp: "XCAFDoc_MaterialTool",
                        header: "XCAFDoc_MaterialTool.hxx", bycopy.} = object of TDataStdGenericEmpty


proc constructXCAFDocMaterialTool*(): XCAFDocMaterialTool {.constructor,
    importcpp: "XCAFDoc_MaterialTool(@)", header: "XCAFDoc_MaterialTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocMaterialTool] {.
    importcpp: "XCAFDoc_MaterialTool::Set(@)", header: "XCAFDoc_MaterialTool.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_MaterialTool::GetID(@)",
                           header: "XCAFDoc_MaterialTool.hxx".}
proc baseLabel*(this: XCAFDocMaterialTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_MaterialTool.hxx".}
proc shapeTool*(this: var XCAFDocMaterialTool): Handle[XCAFDocShapeTool] {.
    importcpp: "ShapeTool", header: "XCAFDoc_MaterialTool.hxx".}
proc isMaterial*(this: XCAFDocMaterialTool; lab: TDF_Label): bool {.noSideEffect,
    importcpp: "IsMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc getMaterialLabels*(this: XCAFDocMaterialTool; labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetMaterialLabels",
    header: "XCAFDoc_MaterialTool.hxx".}
proc addMaterial*(this: XCAFDocMaterialTool;
                 aName: Handle[TCollectionHAsciiString];
                 aDescription: Handle[TCollectionHAsciiString]; aDensity: float;
                 aDensName: Handle[TCollectionHAsciiString];
                 aDensValType: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, importcpp: "AddMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc setMaterial*(this: XCAFDocMaterialTool; L: TDF_Label; matL: TDF_Label) {.
    noSideEffect, importcpp: "SetMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc setMaterial*(this: XCAFDocMaterialTool; L: TDF_Label;
                 aName: Handle[TCollectionHAsciiString];
                 aDescription: Handle[TCollectionHAsciiString]; aDensity: float;
                 aDensName: Handle[TCollectionHAsciiString];
                 aDensValType: Handle[TCollectionHAsciiString]) {.noSideEffect,
    importcpp: "SetMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc getMaterial*(this: XCAFDocMaterialTool; matL: TDF_Label;
                 aName: var Handle[TCollectionHAsciiString];
                 aDescription: var Handle[TCollectionHAsciiString];
                 aDensity: var float;
                 aDensName: var Handle[TCollectionHAsciiString];
                 aDensValType: var Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, importcpp: "GetMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc getDensityForShape*(shapeL: TDF_Label): float {.
    importcpp: "XCAFDoc_MaterialTool::GetDensityForShape(@)",
    header: "XCAFDoc_MaterialTool.hxx".}
proc id*(this: XCAFDocMaterialTool): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_MaterialTool.hxx".}
proc dumpJson*(this: XCAFDocMaterialTool; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_MaterialTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_MaterialTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!















































