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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TDataStd/TDataStd_GenericEmpty, ../Standard/Standard_Boolean,
  ../TDF/TDF_LabelSequence, ../Standard/Standard_Real

discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_MaterialTool"
discard "forward decl of XCAFDoc_MaterialTool"
type
  Handle_XCAFDoc_MaterialTool* = handle[XCAFDoc_MaterialTool]

## ! Provides tools to store and retrieve attributes (materials)
## ! of TopoDS_Shape in and from TDocStd_Document
## ! A Document is intended to hold different
## ! attributes of ONE shape and it's sub-shapes
## ! Provide tools for management of Materialss section of document.

type
  XCAFDoc_MaterialTool* {.importcpp: "XCAFDoc_MaterialTool",
                         header: "XCAFDoc_MaterialTool.hxx", bycopy.} = object of TDataStd_GenericEmpty


proc constructXCAFDoc_MaterialTool*(): XCAFDoc_MaterialTool {.constructor,
    importcpp: "XCAFDoc_MaterialTool(@)", header: "XCAFDoc_MaterialTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_MaterialTool] {.
    importcpp: "XCAFDoc_MaterialTool::Set(@)", header: "XCAFDoc_MaterialTool.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_MaterialTool::GetID(@)",
                            header: "XCAFDoc_MaterialTool.hxx".}
proc BaseLabel*(this: XCAFDoc_MaterialTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_MaterialTool.hxx".}
proc ShapeTool*(this: var XCAFDoc_MaterialTool): handle[XCAFDoc_ShapeTool] {.
    importcpp: "ShapeTool", header: "XCAFDoc_MaterialTool.hxx".}
proc IsMaterial*(this: XCAFDoc_MaterialTool; lab: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc GetMaterialLabels*(this: XCAFDoc_MaterialTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetMaterialLabels",
    header: "XCAFDoc_MaterialTool.hxx".}
proc AddMaterial*(this: XCAFDoc_MaterialTool;
                 aName: handle[TCollection_HAsciiString];
                 aDescription: handle[TCollection_HAsciiString];
                 aDensity: Standard_Real;
                 aDensName: handle[TCollection_HAsciiString];
                 aDensValType: handle[TCollection_HAsciiString]): TDF_Label {.
    noSideEffect, importcpp: "AddMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc SetMaterial*(this: XCAFDoc_MaterialTool; L: TDF_Label; MatL: TDF_Label) {.
    noSideEffect, importcpp: "SetMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc SetMaterial*(this: XCAFDoc_MaterialTool; L: TDF_Label;
                 aName: handle[TCollection_HAsciiString];
                 aDescription: handle[TCollection_HAsciiString];
                 aDensity: Standard_Real;
                 aDensName: handle[TCollection_HAsciiString];
                 aDensValType: handle[TCollection_HAsciiString]) {.noSideEffect,
    importcpp: "SetMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc GetMaterial*(this: XCAFDoc_MaterialTool; MatL: TDF_Label;
                 aName: var handle[TCollection_HAsciiString];
                 aDescription: var handle[TCollection_HAsciiString];
                 aDensity: var Standard_Real;
                 aDensName: var handle[TCollection_HAsciiString];
                 aDensValType: var handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "GetMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc GetDensityForShape*(ShapeL: TDF_Label): Standard_Real {.
    importcpp: "XCAFDoc_MaterialTool::GetDensityForShape(@)",
    header: "XCAFDoc_MaterialTool.hxx".}
proc ID*(this: XCAFDoc_MaterialTool): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_MaterialTool.hxx".}
proc DumpJson*(this: XCAFDoc_MaterialTool; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_MaterialTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_MaterialTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!
