##  Created on: 1998-08-20
##  Created by: Yves FRICAUD
##  Copyright (c) 1998-1999 Matra Datavision
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
  TopOpeBRepDS_DataMapOfIntegerListOfInterference,
  TopOpeBRepDS_DataMapOfInterferenceShape, ../Standard/Standard_Transient,
  TopOpeBRepDS_ListOfInterference, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_GapTool"
discard "forward decl of TopOpeBRepDS_GapTool"
type
  Handle_TopOpeBRepDS_GapTool* = handle[TopOpeBRepDS_GapTool]
  TopOpeBRepDS_GapTool* {.importcpp: "TopOpeBRepDS_GapTool",
                         header: "TopOpeBRepDS_GapTool.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRepDS_GapTool*(): TopOpeBRepDS_GapTool {.constructor,
    importcpp: "TopOpeBRepDS_GapTool(@)", header: "TopOpeBRepDS_GapTool.hxx".}
proc constructTopOpeBRepDS_GapTool*(HDS: handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_GapTool {.
    constructor, importcpp: "TopOpeBRepDS_GapTool(@)",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc Init*(this: var TopOpeBRepDS_GapTool; HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "Init", header: "TopOpeBRepDS_GapTool.hxx".}
proc Interferences*(this: TopOpeBRepDS_GapTool; IndexPoint: Standard_Integer): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "Interferences", header: "TopOpeBRepDS_GapTool.hxx".}
proc SameInterferences*(this: TopOpeBRepDS_GapTool;
                       I: handle[TopOpeBRepDS_Interference]): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "SameInterferences",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc ChangeSameInterferences*(this: var TopOpeBRepDS_GapTool;
                             I: handle[TopOpeBRepDS_Interference]): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeSameInterferences", header: "TopOpeBRepDS_GapTool.hxx".}
proc Curve*(this: TopOpeBRepDS_GapTool; I: handle[TopOpeBRepDS_Interference];
           C: var TopOpeBRepDS_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "Curve", header: "TopOpeBRepDS_GapTool.hxx".}
proc EdgeSupport*(this: TopOpeBRepDS_GapTool; I: handle[TopOpeBRepDS_Interference];
                 E: var TopoDS_Shape): Standard_Boolean {.noSideEffect,
    importcpp: "EdgeSupport", header: "TopOpeBRepDS_GapTool.hxx".}
proc FacesSupport*(this: TopOpeBRepDS_GapTool;
                  I: handle[TopOpeBRepDS_Interference]; F1: var TopoDS_Shape;
                  F2: var TopoDS_Shape): Standard_Boolean {.noSideEffect,
    importcpp: "FacesSupport", header: "TopOpeBRepDS_GapTool.hxx".}
proc ParameterOnEdge*(this: TopOpeBRepDS_GapTool;
                     I: handle[TopOpeBRepDS_Interference]; E: TopoDS_Shape;
                     U: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "ParameterOnEdge", header: "TopOpeBRepDS_GapTool.hxx".}
proc SetPoint*(this: var TopOpeBRepDS_GapTool; I: handle[TopOpeBRepDS_Interference];
              IndexPoint: Standard_Integer) {.importcpp: "SetPoint",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc SetParameterOnEdge*(this: var TopOpeBRepDS_GapTool;
                        I: handle[TopOpeBRepDS_Interference]; E: TopoDS_Shape;
                        U: Standard_Real) {.importcpp: "SetParameterOnEdge",
    header: "TopOpeBRepDS_GapTool.hxx".}
type
  TopOpeBRepDS_GapToolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepDS_GapTool::get_type_name(@)",
                              header: "TopOpeBRepDS_GapTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepDS_GapTool::get_type_descriptor(@)",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc DynamicType*(this: TopOpeBRepDS_GapTool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRepDS_GapTool.hxx".}