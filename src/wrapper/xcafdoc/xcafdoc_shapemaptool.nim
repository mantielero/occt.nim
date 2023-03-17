import xcafdoc_types

##  Created on: 2003-08-29
##  Created by: data exchange team
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_ShapeMapTool"

proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_ShapeMapTool::GetID(@)",
                            header: "XCAFDoc_ShapeMapTool.hxx".}
proc Set*(L: TDF_Label): handle[XCAFDoc_ShapeMapTool] {.cdecl,
    importcpp: "XCAFDoc_ShapeMapTool::Set(@)", header: "XCAFDoc_ShapeMapTool.hxx".}
proc newXCAFDoc_ShapeMapTool*(): XCAFDoc_ShapeMapTool {.cdecl, constructor,
    importcpp: "XCAFDoc_ShapeMapTool(@)", header: "XCAFDoc_ShapeMapTool.hxx".}
proc IsSubShape*(this: XCAFDoc_ShapeMapTool; sub: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "IsSubShape", header: "XCAFDoc_ShapeMapTool.hxx".}
proc SetShape*(this: var XCAFDoc_ShapeMapTool; S: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape", header: "XCAFDoc_ShapeMapTool.hxx".}
proc ID*(this: XCAFDoc_ShapeMapTool): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_ShapeMapTool.hxx".}
proc Restore*(this: var XCAFDoc_ShapeMapTool; with: handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_ShapeMapTool.hxx".}
proc NewEmpty*(this: XCAFDoc_ShapeMapTool): handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "XCAFDoc_ShapeMapTool.hxx".}
proc Paste*(this: XCAFDoc_ShapeMapTool; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_ShapeMapTool.hxx".}
proc GetMap*(this: XCAFDoc_ShapeMapTool): TopTools_IndexedMapOfShape {.noSideEffect,
    cdecl, importcpp: "GetMap", header: "XCAFDoc_ShapeMapTool.hxx".}
proc DumpJson*(this: XCAFDoc_ShapeMapTool; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_ShapeMapTool.hxx".}