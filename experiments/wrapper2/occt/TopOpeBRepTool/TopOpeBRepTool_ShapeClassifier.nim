##  Created on: 1994-02-01
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, TopOpeBRepTool_Plos,
  ../TopTools/TopTools_IndexedMapOfShape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_State, ../TopoDS/TopoDS_Edge,
  ../TopoDS/TopoDS_Face, ../gp/gp_Pnt, ../gp/gp_Pnt2d,
  TopOpeBRepTool_SolidClassifier, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepTool_SolidClassifier"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
type
  TopOpeBRepTool_ShapeClassifier* {.importcpp: "TopOpeBRepTool_ShapeClassifier", header: "TopOpeBRepTool_ShapeClassifier.hxx",
                                   bycopy.} = object


proc constructTopOpeBRepTool_ShapeClassifier*(): TopOpeBRepTool_ShapeClassifier {.
    constructor, importcpp: "TopOpeBRepTool_ShapeClassifier(@)",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc constructTopOpeBRepTool_ShapeClassifier*(SRef: TopoDS_Shape): TopOpeBRepTool_ShapeClassifier {.
    constructor, importcpp: "TopOpeBRepTool_ShapeClassifier(@)",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc ClearAll*(this: var TopOpeBRepTool_ShapeClassifier) {.importcpp: "ClearAll",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc ClearCurrent*(this: var TopOpeBRepTool_ShapeClassifier) {.
    importcpp: "ClearCurrent", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc SetReference*(this: var TopOpeBRepTool_ShapeClassifier; SRef: TopoDS_Shape) {.
    importcpp: "SetReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc StateShapeShape*(this: var TopOpeBRepTool_ShapeClassifier; S: TopoDS_Shape;
                     SRef: TopoDS_Shape; samedomain: Standard_Integer = 0): TopAbs_State {.
    importcpp: "StateShapeShape", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc SameDomain*(this: TopOpeBRepTool_ShapeClassifier): Standard_Integer {.
    noSideEffect, importcpp: "SameDomain",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc SameDomain*(this: var TopOpeBRepTool_ShapeClassifier;
                samedomain: Standard_Integer) {.importcpp: "SameDomain",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc StateShapeShape*(this: var TopOpeBRepTool_ShapeClassifier; S: TopoDS_Shape;
                     AvoidS: TopoDS_Shape; SRef: TopoDS_Shape): TopAbs_State {.
    importcpp: "StateShapeShape", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc StateShapeShape*(this: var TopOpeBRepTool_ShapeClassifier; S: TopoDS_Shape;
                     LAvoidS: TopTools_ListOfShape; SRef: TopoDS_Shape): TopAbs_State {.
    importcpp: "StateShapeShape", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc StateShapeReference*(this: var TopOpeBRepTool_ShapeClassifier; S: TopoDS_Shape;
                         AvoidS: TopoDS_Shape): TopAbs_State {.
    importcpp: "StateShapeReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc StateShapeReference*(this: var TopOpeBRepTool_ShapeClassifier; S: TopoDS_Shape;
                         LAvoidS: TopTools_ListOfShape): TopAbs_State {.
    importcpp: "StateShapeReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc ChangeSolidClassifier*(this: var TopOpeBRepTool_ShapeClassifier): var TopOpeBRepTool_SolidClassifier {.
    importcpp: "ChangeSolidClassifier",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc StateP2DReference*(this: var TopOpeBRepTool_ShapeClassifier; P2D: gp_Pnt2d) {.
    importcpp: "StateP2DReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc StateP3DReference*(this: var TopOpeBRepTool_ShapeClassifier; P3D: gp_Pnt) {.
    importcpp: "StateP3DReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc State*(this: TopOpeBRepTool_ShapeClassifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc P2D*(this: TopOpeBRepTool_ShapeClassifier): gp_Pnt2d {.noSideEffect,
    importcpp: "P2D", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc P3D*(this: TopOpeBRepTool_ShapeClassifier): gp_Pnt {.noSideEffect,
    importcpp: "P3D", header: "TopOpeBRepTool_ShapeClassifier.hxx".}