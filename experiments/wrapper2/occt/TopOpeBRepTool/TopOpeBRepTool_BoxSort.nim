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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Bnd/Bnd_Box, ../Bnd/Bnd_BoundSortBox,
  ../TColStd/TColStd_ListIteratorOfListOfInteger, ../TopoDS/TopoDS_Shape,
  ../Bnd/Bnd_HArray1OfBox, ../TColStd/TColStd_HArray1OfInteger,
  ../TopAbs/TopAbs_ShapeEnum, ../Standard/Standard_Integer

discard "forward decl of TopOpeBRepTool_HBoxTool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box"
type
  TopOpeBRepTool_BoxSort* {.importcpp: "TopOpeBRepTool_BoxSort",
                           header: "TopOpeBRepTool_BoxSort.hxx", bycopy.} = object


proc constructTopOpeBRepTool_BoxSort*(): TopOpeBRepTool_BoxSort {.constructor,
    importcpp: "TopOpeBRepTool_BoxSort(@)", header: "TopOpeBRepTool_BoxSort.hxx".}
proc constructTopOpeBRepTool_BoxSort*(T: handle[TopOpeBRepTool_HBoxTool]): TopOpeBRepTool_BoxSort {.
    constructor, importcpp: "TopOpeBRepTool_BoxSort(@)",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc SetHBoxTool*(this: var TopOpeBRepTool_BoxSort;
                 T: handle[TopOpeBRepTool_HBoxTool]) {.importcpp: "SetHBoxTool",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc HBoxTool*(this: TopOpeBRepTool_BoxSort): handle[TopOpeBRepTool_HBoxTool] {.
    noSideEffect, importcpp: "HBoxTool", header: "TopOpeBRepTool_BoxSort.hxx".}
proc Clear*(this: var TopOpeBRepTool_BoxSort) {.importcpp: "Clear",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc AddBoxes*(this: var TopOpeBRepTool_BoxSort; S: TopoDS_Shape;
              TS: TopAbs_ShapeEnum; TA: TopAbs_ShapeEnum = TopAbs_SHAPE) {.
    importcpp: "AddBoxes", header: "TopOpeBRepTool_BoxSort.hxx".}
proc MakeHAB*(this: var TopOpeBRepTool_BoxSort; S: TopoDS_Shape; TS: TopAbs_ShapeEnum;
             TA: TopAbs_ShapeEnum = TopAbs_SHAPE) {.importcpp: "MakeHAB",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc HAB*(this: TopOpeBRepTool_BoxSort): handle[Bnd_HArray1OfBox] {.noSideEffect,
    importcpp: "HAB", header: "TopOpeBRepTool_BoxSort.hxx".}
proc MakeHABCOB*(HAB: handle[Bnd_HArray1OfBox]; COB: var Bnd_Box) {.
    importcpp: "TopOpeBRepTool_BoxSort::MakeHABCOB(@)",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc HABShape*(this: TopOpeBRepTool_BoxSort; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "HABShape", header: "TopOpeBRepTool_BoxSort.hxx".}
proc MakeCOB*(this: var TopOpeBRepTool_BoxSort; S: TopoDS_Shape; TS: TopAbs_ShapeEnum;
             TA: TopAbs_ShapeEnum = TopAbs_SHAPE) {.importcpp: "MakeCOB",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc AddBoxesMakeCOB*(this: var TopOpeBRepTool_BoxSort; S: TopoDS_Shape;
                     TS: TopAbs_ShapeEnum; TA: TopAbs_ShapeEnum = TopAbs_SHAPE) {.
    importcpp: "AddBoxesMakeCOB", header: "TopOpeBRepTool_BoxSort.hxx".}
proc Compare*(this: var TopOpeBRepTool_BoxSort; S: TopoDS_Shape): TColStd_ListIteratorOfListOfInteger {.
    importcpp: "Compare", header: "TopOpeBRepTool_BoxSort.hxx".}
proc TouchedShape*(this: TopOpeBRepTool_BoxSort;
                  I: TColStd_ListIteratorOfListOfInteger): TopoDS_Shape {.
    noSideEffect, importcpp: "TouchedShape", header: "TopOpeBRepTool_BoxSort.hxx".}
proc Box*(this: TopOpeBRepTool_BoxSort; S: TopoDS_Shape): Bnd_Box {.noSideEffect,
    importcpp: "Box", header: "TopOpeBRepTool_BoxSort.hxx".}
proc destroyTopOpeBRepTool_BoxSort*(this: var TopOpeBRepTool_BoxSort) {.
    importcpp: "#.~TopOpeBRepTool_BoxSort()", header: "TopOpeBRepTool_BoxSort.hxx".}