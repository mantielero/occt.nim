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

discard "forward decl of TopOpeBRepTool_HBoxTool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box"
type
  TopOpeBRepToolBoxSort* {.importcpp: "TopOpeBRepTool_BoxSort",
                          header: "TopOpeBRepTool_BoxSort.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepToolBoxSort; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_BoxSort::operator new",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc `delete`*(this: var TopOpeBRepToolBoxSort; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_BoxSort::operator delete",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc `new[]`*(this: var TopOpeBRepToolBoxSort; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_BoxSort::operator new[]",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolBoxSort; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_BoxSort::operator delete[]",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc `new`*(this: var TopOpeBRepToolBoxSort; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_BoxSort::operator new",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc `delete`*(this: var TopOpeBRepToolBoxSort; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_BoxSort::operator delete",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc constructTopOpeBRepToolBoxSort*(): TopOpeBRepToolBoxSort {.constructor,
    importcpp: "TopOpeBRepTool_BoxSort(@)", header: "TopOpeBRepTool_BoxSort.hxx".}
proc constructTopOpeBRepToolBoxSort*(t: Handle[TopOpeBRepToolHBoxTool]): TopOpeBRepToolBoxSort {.
    constructor, importcpp: "TopOpeBRepTool_BoxSort(@)",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc setHBoxTool*(this: var TopOpeBRepToolBoxSort; t: Handle[TopOpeBRepToolHBoxTool]) {.
    importcpp: "SetHBoxTool", header: "TopOpeBRepTool_BoxSort.hxx".}
proc hBoxTool*(this: TopOpeBRepToolBoxSort): Handle[TopOpeBRepToolHBoxTool] {.
    noSideEffect, importcpp: "HBoxTool", header: "TopOpeBRepTool_BoxSort.hxx".}
proc clear*(this: var TopOpeBRepToolBoxSort) {.importcpp: "Clear",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc addBoxes*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape; ts: TopAbsShapeEnum;
              ta: TopAbsShapeEnum = topAbsSHAPE) {.importcpp: "AddBoxes",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc makeHAB*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape; ts: TopAbsShapeEnum;
             ta: TopAbsShapeEnum = topAbsSHAPE) {.importcpp: "MakeHAB",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc hab*(this: TopOpeBRepToolBoxSort): Handle[BndHArray1OfBox] {.noSideEffect,
    importcpp: "HAB", header: "TopOpeBRepTool_BoxSort.hxx".}
proc makeHABCOB*(hab: Handle[BndHArray1OfBox]; cob: var BndBox) {.
    importcpp: "TopOpeBRepTool_BoxSort::MakeHABCOB(@)",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc hABShape*(this: TopOpeBRepToolBoxSort; i: int): TopoDS_Shape {.noSideEffect,
    importcpp: "HABShape", header: "TopOpeBRepTool_BoxSort.hxx".}
proc makeCOB*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape; ts: TopAbsShapeEnum;
             ta: TopAbsShapeEnum = topAbsSHAPE) {.importcpp: "MakeCOB",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc addBoxesMakeCOB*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape;
                     ts: TopAbsShapeEnum; ta: TopAbsShapeEnum = topAbsSHAPE) {.
    importcpp: "AddBoxesMakeCOB", header: "TopOpeBRepTool_BoxSort.hxx".}
proc compare*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape): TColStdListIteratorOfListOfInteger {.
    importcpp: "Compare", header: "TopOpeBRepTool_BoxSort.hxx".}
proc touchedShape*(this: TopOpeBRepToolBoxSort;
                  i: TColStdListIteratorOfListOfInteger): TopoDS_Shape {.
    noSideEffect, importcpp: "TouchedShape", header: "TopOpeBRepTool_BoxSort.hxx".}
proc box*(this: TopOpeBRepToolBoxSort; s: TopoDS_Shape): BndBox {.noSideEffect,
    importcpp: "Box", header: "TopOpeBRepTool_BoxSort.hxx".}
proc destroyTopOpeBRepToolBoxSort*(this: var TopOpeBRepToolBoxSort) {.
    importcpp: "#.~TopOpeBRepTool_BoxSort()", header: "TopOpeBRepTool_BoxSort.hxx".}