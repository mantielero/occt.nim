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


proc newTopOpeBRepToolBoxSort*(): TopOpeBRepToolBoxSort {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_BoxSort(@)", dynlib: tkbool.}
proc newTopOpeBRepToolBoxSort*(t: Handle[TopOpeBRepToolHBoxTool]): TopOpeBRepToolBoxSort {.
    cdecl, constructor, importcpp: "TopOpeBRepTool_BoxSort(@)", dynlib: tkbool.}
proc setHBoxTool*(this: var TopOpeBRepToolBoxSort; t: Handle[TopOpeBRepToolHBoxTool]) {.
    cdecl, importcpp: "SetHBoxTool", dynlib: tkbool.}
proc hBoxTool*(this: TopOpeBRepToolBoxSort): Handle[TopOpeBRepToolHBoxTool] {.
    noSideEffect, cdecl, importcpp: "HBoxTool", dynlib: tkbool.}
proc clear*(this: var TopOpeBRepToolBoxSort) {.cdecl, importcpp: "Clear",
    dynlib: tkbool.}
proc addBoxes*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape; ts: TopAbsShapeEnum;
              ta: TopAbsShapeEnum = topAbsSHAPE) {.cdecl, importcpp: "AddBoxes",
    dynlib: tkbool.}
proc makeHAB*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape; ts: TopAbsShapeEnum;
             ta: TopAbsShapeEnum = topAbsSHAPE) {.cdecl, importcpp: "MakeHAB",
    dynlib: tkbool.}
proc hab*(this: TopOpeBRepToolBoxSort): Handle[BndHArray1OfBox] {.noSideEffect,
    cdecl, importcpp: "HAB", dynlib: tkbool.}
proc makeHABCOB*(hab: Handle[BndHArray1OfBox]; cob: var BndBox) {.cdecl,
    importcpp: "TopOpeBRepTool_BoxSort::MakeHABCOB(@)", dynlib: tkbool.}
proc hABShape*(this: TopOpeBRepToolBoxSort; i: cint): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "HABShape", dynlib: tkbool.}
proc makeCOB*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape; ts: TopAbsShapeEnum;
             ta: TopAbsShapeEnum = topAbsSHAPE) {.cdecl, importcpp: "MakeCOB",
    dynlib: tkbool.}
proc addBoxesMakeCOB*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape;
                     ts: TopAbsShapeEnum; ta: TopAbsShapeEnum = topAbsSHAPE) {.cdecl,
    importcpp: "AddBoxesMakeCOB", dynlib: tkbool.}
proc compare*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape): TColStdListIteratorOfListOfInteger {.
    cdecl, importcpp: "Compare", dynlib: tkbool.}
proc touchedShape*(this: TopOpeBRepToolBoxSort;
                  i: TColStdListIteratorOfListOfInteger): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "TouchedShape", dynlib: tkbool.}
proc box*(this: TopOpeBRepToolBoxSort; s: TopoDS_Shape): BndBox {.noSideEffect, cdecl,
    importcpp: "Box", dynlib: tkbool.}
proc destroyTopOpeBRepToolBoxSort*(this: var TopOpeBRepToolBoxSort) {.cdecl,
    importcpp: "#.~TopOpeBRepTool_BoxSort()", dynlib: tkbool.}