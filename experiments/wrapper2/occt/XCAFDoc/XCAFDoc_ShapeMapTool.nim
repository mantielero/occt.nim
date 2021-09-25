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
discard "forward decl of XCAFDoc_ShapeMapTool"
type
  HandleXCAFDocShapeMapTool* = Handle[XCAFDocShapeMapTool]

## ! attribute containing map of sub shapes

type
  XCAFDocShapeMapTool* {.importcpp: "XCAFDoc_ShapeMapTool",
                        header: "XCAFDoc_ShapeMapTool.hxx", bycopy.} = object of TDF_Attribute


proc getID*(): StandardGUID {.importcpp: "XCAFDoc_ShapeMapTool::GetID(@)",
                           header: "XCAFDoc_ShapeMapTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocShapeMapTool] {.
    importcpp: "XCAFDoc_ShapeMapTool::Set(@)", header: "XCAFDoc_ShapeMapTool.hxx".}
proc constructXCAFDocShapeMapTool*(): XCAFDocShapeMapTool {.constructor,
    importcpp: "XCAFDoc_ShapeMapTool(@)", header: "XCAFDoc_ShapeMapTool.hxx".}
proc isSubShape*(this: XCAFDocShapeMapTool; sub: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "IsSubShape", header: "XCAFDoc_ShapeMapTool.hxx".}
proc setShape*(this: var XCAFDocShapeMapTool; s: TopoDS_Shape) {.
    importcpp: "SetShape", header: "XCAFDoc_ShapeMapTool.hxx".}
proc id*(this: XCAFDocShapeMapTool): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_ShapeMapTool.hxx".}
proc restore*(this: var XCAFDocShapeMapTool; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_ShapeMapTool.hxx".}
proc newEmpty*(this: XCAFDocShapeMapTool): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_ShapeMapTool.hxx".}
proc paste*(this: XCAFDocShapeMapTool; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_ShapeMapTool.hxx".}
proc getMap*(this: XCAFDocShapeMapTool): TopToolsIndexedMapOfShape {.noSideEffect,
    importcpp: "GetMap", header: "XCAFDoc_ShapeMapTool.hxx".}
proc dumpJson*(this: XCAFDocShapeMapTool; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_ShapeMapTool.hxx".}
type
  XCAFDocShapeMapToolbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_ShapeMapTool::get_type_name(@)",
                            header: "XCAFDoc_ShapeMapTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_ShapeMapTool::get_type_descriptor(@)",
    header: "XCAFDoc_ShapeMapTool.hxx".}
proc dynamicType*(this: XCAFDocShapeMapTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_ShapeMapTool.hxx".}
