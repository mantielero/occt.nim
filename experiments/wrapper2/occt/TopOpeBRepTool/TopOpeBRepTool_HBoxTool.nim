##  Created on: 1993-07-08
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  TopOpeBRepTool_IndexedDataMapOfShapeBox, ../Standard/Standard_Transient,
  ../TopAbs/TopAbs_ShapeEnum, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box"
discard "forward decl of TopOpeBRepTool_HBoxTool"
discard "forward decl of TopOpeBRepTool_HBoxTool"
type
  Handle_TopOpeBRepTool_HBoxTool* = handle[TopOpeBRepTool_HBoxTool]
  TopOpeBRepTool_HBoxTool* {.importcpp: "TopOpeBRepTool_HBoxTool",
                            header: "TopOpeBRepTool_HBoxTool.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRepTool_HBoxTool*(): TopOpeBRepTool_HBoxTool {.constructor,
    importcpp: "TopOpeBRepTool_HBoxTool(@)", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc Clear*(this: var TopOpeBRepTool_HBoxTool) {.importcpp: "Clear",
    header: "TopOpeBRepTool_HBoxTool.hxx".}
proc AddBoxes*(this: var TopOpeBRepTool_HBoxTool; S: TopoDS_Shape;
              TS: TopAbs_ShapeEnum; TA: TopAbs_ShapeEnum = TopAbs_SHAPE) {.
    importcpp: "AddBoxes", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc AddBox*(this: var TopOpeBRepTool_HBoxTool; S: TopoDS_Shape) {.
    importcpp: "AddBox", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc ComputeBox*(S: TopoDS_Shape; B: var Bnd_Box) {.
    importcpp: "TopOpeBRepTool_HBoxTool::ComputeBox(@)",
    header: "TopOpeBRepTool_HBoxTool.hxx".}
proc ComputeBoxOnVertices*(S: TopoDS_Shape; B: var Bnd_Box) {.
    importcpp: "TopOpeBRepTool_HBoxTool::ComputeBoxOnVertices(@)",
    header: "TopOpeBRepTool_HBoxTool.hxx".}
proc DumpB*(B: Bnd_Box) {.importcpp: "TopOpeBRepTool_HBoxTool::DumpB(@)",
                       header: "TopOpeBRepTool_HBoxTool.hxx".}
proc Box*(this: var TopOpeBRepTool_HBoxTool; S: TopoDS_Shape): Bnd_Box {.
    importcpp: "Box", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc Box*(this: TopOpeBRepTool_HBoxTool; I: Standard_Integer): Bnd_Box {.noSideEffect,
    importcpp: "Box", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc HasBox*(this: TopOpeBRepTool_HBoxTool; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasBox", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc Shape*(this: TopOpeBRepTool_HBoxTool; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc Index*(this: TopOpeBRepTool_HBoxTool; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc Extent*(this: TopOpeBRepTool_HBoxTool): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc ChangeIMS*(this: var TopOpeBRepTool_HBoxTool): var TopOpeBRepTool_IndexedDataMapOfShapeBox {.
    importcpp: "ChangeIMS", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc IMS*(this: TopOpeBRepTool_HBoxTool): TopOpeBRepTool_IndexedDataMapOfShapeBox {.
    noSideEffect, importcpp: "IMS", header: "TopOpeBRepTool_HBoxTool.hxx".}
type
  TopOpeBRepTool_HBoxToolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepTool_HBoxTool::get_type_name(@)",
                              header: "TopOpeBRepTool_HBoxTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepTool_HBoxTool::get_type_descriptor(@)",
    header: "TopOpeBRepTool_HBoxTool.hxx".}
proc DynamicType*(this: TopOpeBRepTool_HBoxTool): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TopOpeBRepTool_HBoxTool.hxx".}