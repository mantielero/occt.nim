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

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_GapTool"
discard "forward decl of TopOpeBRepDS_GapTool"
type
  HandleTopOpeBRepDS_GapTool* = Handle[TopOpeBRepDS_GapTool]
  TopOpeBRepDS_GapTool* {.importcpp: "TopOpeBRepDS_GapTool",
                         header: "TopOpeBRepDS_GapTool.hxx", bycopy.} = object of StandardTransient


proc constructTopOpeBRepDS_GapTool*(): TopOpeBRepDS_GapTool {.constructor,
    importcpp: "TopOpeBRepDS_GapTool(@)", header: "TopOpeBRepDS_GapTool.hxx".}
proc constructTopOpeBRepDS_GapTool*(hds: Handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_GapTool {.
    constructor, importcpp: "TopOpeBRepDS_GapTool(@)",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc init*(this: var TopOpeBRepDS_GapTool; hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "Init", header: "TopOpeBRepDS_GapTool.hxx".}
proc interferences*(this: TopOpeBRepDS_GapTool; indexPoint: int): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "Interferences", header: "TopOpeBRepDS_GapTool.hxx".}
proc sameInterferences*(this: TopOpeBRepDS_GapTool;
                       i: Handle[TopOpeBRepDS_Interference]): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "SameInterferences",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc changeSameInterferences*(this: var TopOpeBRepDS_GapTool;
                             i: Handle[TopOpeBRepDS_Interference]): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeSameInterferences", header: "TopOpeBRepDS_GapTool.hxx".}
proc curve*(this: TopOpeBRepDS_GapTool; i: Handle[TopOpeBRepDS_Interference];
           c: var TopOpeBRepDS_Curve): bool {.noSideEffect, importcpp: "Curve",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc edgeSupport*(this: TopOpeBRepDS_GapTool; i: Handle[TopOpeBRepDS_Interference];
                 e: var TopoDS_Shape): bool {.noSideEffect, importcpp: "EdgeSupport",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc facesSupport*(this: TopOpeBRepDS_GapTool;
                  i: Handle[TopOpeBRepDS_Interference]; f1: var TopoDS_Shape;
                  f2: var TopoDS_Shape): bool {.noSideEffect,
    importcpp: "FacesSupport", header: "TopOpeBRepDS_GapTool.hxx".}
proc parameterOnEdge*(this: TopOpeBRepDS_GapTool;
                     i: Handle[TopOpeBRepDS_Interference]; e: TopoDS_Shape;
                     u: var float): bool {.noSideEffect,
                                       importcpp: "ParameterOnEdge",
                                       header: "TopOpeBRepDS_GapTool.hxx".}
proc setPoint*(this: var TopOpeBRepDS_GapTool; i: Handle[TopOpeBRepDS_Interference];
              indexPoint: int) {.importcpp: "SetPoint",
                               header: "TopOpeBRepDS_GapTool.hxx".}
proc setParameterOnEdge*(this: var TopOpeBRepDS_GapTool;
                        i: Handle[TopOpeBRepDS_Interference]; e: TopoDS_Shape;
                        u: float) {.importcpp: "SetParameterOnEdge",
                                  header: "TopOpeBRepDS_GapTool.hxx".}
type
  TopOpeBRepDS_GapToolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepDS_GapTool::get_type_name(@)",
                            header: "TopOpeBRepDS_GapTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepDS_GapTool::get_type_descriptor(@)",
    header: "TopOpeBRepDS_GapTool.hxx".}
proc dynamicType*(this: TopOpeBRepDS_GapTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRepDS_GapTool.hxx".}
