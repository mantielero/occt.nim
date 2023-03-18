import ../tdf/tdf_types
import ../topods/topods_types
import ../toptools/toptools_types
import xcafdoc_types
import ../standard/standard_types



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





proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_ShapeMapTool::GetID(@)",
                           header: "XCAFDoc_ShapeMapTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocShapeMapTool] {.cdecl,
    importcpp: "XCAFDoc_ShapeMapTool::Set(@)", header: "XCAFDoc_ShapeMapTool.hxx".}
proc newXCAFDocShapeMapTool*(): XCAFDocShapeMapTool {.cdecl, constructor,
    importcpp: "XCAFDoc_ShapeMapTool(@)", header: "XCAFDoc_ShapeMapTool.hxx".}
proc isSubShape*(this: XCAFDocShapeMapTool; sub: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "IsSubShape", header: "XCAFDoc_ShapeMapTool.hxx".}
proc setShape*(this: var XCAFDocShapeMapTool; s: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape", header: "XCAFDoc_ShapeMapTool.hxx".}
proc id*(this: XCAFDocShapeMapTool): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_ShapeMapTool.hxx".}
proc restore*(this: var XCAFDocShapeMapTool; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_ShapeMapTool.hxx".}
proc newEmpty*(this: XCAFDocShapeMapTool): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "XCAFDoc_ShapeMapTool.hxx".}
proc paste*(this: XCAFDocShapeMapTool; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_ShapeMapTool.hxx".}
proc getMap*(this: XCAFDocShapeMapTool): TopToolsIndexedMapOfShape {.noSideEffect,
    cdecl, importcpp: "GetMap", header: "XCAFDoc_ShapeMapTool.hxx".}
proc dumpJson*(this: XCAFDocShapeMapTool; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_ShapeMapTool.hxx".}

