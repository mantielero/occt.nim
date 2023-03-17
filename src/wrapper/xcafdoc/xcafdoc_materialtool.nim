import xcafdoc_types

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

proc newXCAFDoc_MaterialTool*(): XCAFDoc_MaterialTool {.cdecl, constructor,
    importcpp: "XCAFDoc_MaterialTool(@)", header: "XCAFDoc_MaterialTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_MaterialTool] {.cdecl,
    importcpp: "XCAFDoc_MaterialTool::Set(@)", header: "XCAFDoc_MaterialTool.hxx".}
proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_MaterialTool::GetID(@)",
                            header: "XCAFDoc_MaterialTool.hxx".}
proc BaseLabel*(this: XCAFDoc_MaterialTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_MaterialTool.hxx".}
proc ShapeTool*(this: var XCAFDoc_MaterialTool): handle[XCAFDoc_ShapeTool] {.cdecl,
    importcpp: "ShapeTool", header: "XCAFDoc_MaterialTool.hxx".}
proc IsMaterial*(this: XCAFDoc_MaterialTool; lab: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "IsMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc GetMaterialLabels*(this: XCAFDoc_MaterialTool; Labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetMaterialLabels",
    header: "XCAFDoc_MaterialTool.hxx".}
proc AddMaterial*(this: XCAFDoc_MaterialTool;
                 aName: handle[TCollection_HAsciiString];
                 aDescription: handle[TCollection_HAsciiString]; aDensity: cfloat;
                 aDensName: handle[TCollection_HAsciiString];
                 aDensValType: handle[TCollection_HAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddMaterial",
    header: "XCAFDoc_MaterialTool.hxx".}
proc SetMaterial*(this: XCAFDoc_MaterialTool; L: TDF_Label; MatL: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "SetMaterial",
    header: "XCAFDoc_MaterialTool.hxx".}
proc SetMaterial*(this: XCAFDoc_MaterialTool; L: TDF_Label;
                 aName: handle[TCollection_HAsciiString];
                 aDescription: handle[TCollection_HAsciiString]; aDensity: cfloat;
                 aDensName: handle[TCollection_HAsciiString];
                 aDensValType: handle[TCollection_HAsciiString]) {.noSideEffect,
    cdecl, importcpp: "SetMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc GetMaterial*(this: XCAFDoc_MaterialTool; MatL: TDF_Label;
                 aName: var handle[TCollection_HAsciiString];
                 aDescription: var handle[TCollection_HAsciiString];
                 aDensity: var cfloat;
                 aDensName: var handle[TCollection_HAsciiString];
                 aDensValType: var handle[TCollection_HAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "GetMaterial",
    header: "XCAFDoc_MaterialTool.hxx".}
proc GetDensityForShape*(ShapeL: TDF_Label): cfloat {.cdecl,
    importcpp: "XCAFDoc_MaterialTool::GetDensityForShape(@)",
    header: "XCAFDoc_MaterialTool.hxx".}
proc ID*(this: XCAFDoc_MaterialTool): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_MaterialTool.hxx".}
proc DumpJson*(this: XCAFDoc_MaterialTool; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_MaterialTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_MaterialTool , TDataStd_GenericEmpty ) private : opencascade :: handle < XCAFDoc_ShapeTool > [end of template] myShapeTool ;
## Error: token expected: ) but got: ,!!!
