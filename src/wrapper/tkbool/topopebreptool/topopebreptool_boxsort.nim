import ../../tkg3d/topabs/topabs_types
import topopebreptool_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkbrep/topods/topods_types
import ../../tkmath/bnd/bnd_types





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



proc newTopOpeBRepToolBoxSort*(): TopOpeBRepToolBoxSort {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_BoxSort(@)", header: "TopOpeBRepTool_BoxSort.hxx".}
proc newTopOpeBRepToolBoxSort*(t: Handle[TopOpeBRepToolHBoxTool]): TopOpeBRepToolBoxSort {.
    cdecl, constructor, importcpp: "TopOpeBRepTool_BoxSort(@)", header: "TopOpeBRepTool_BoxSort.hxx".}
proc setHBoxTool*(this: var TopOpeBRepToolBoxSort; t: Handle[TopOpeBRepToolHBoxTool]) {.
    cdecl, importcpp: "SetHBoxTool", header: "TopOpeBRepTool_BoxSort.hxx".}
proc hBoxTool*(this: TopOpeBRepToolBoxSort): Handle[TopOpeBRepToolHBoxTool] {.
    noSideEffect, cdecl, importcpp: "HBoxTool", header: "TopOpeBRepTool_BoxSort.hxx".}
proc clear*(this: var TopOpeBRepToolBoxSort) {.cdecl, importcpp: "Clear",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc addBoxes*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape; ts: TopAbsShapeEnum;
              ta: TopAbsShapeEnum = topAbsSHAPE) {.cdecl, importcpp: "AddBoxes",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc makeHAB*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape; ts: TopAbsShapeEnum;
             ta: TopAbsShapeEnum = topAbsSHAPE) {.cdecl, importcpp: "MakeHAB",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc hab*(this: TopOpeBRepToolBoxSort): Handle[BndHArray1OfBox] {.noSideEffect,
    cdecl, importcpp: "HAB", header: "TopOpeBRepTool_BoxSort.hxx".}
proc makeHABCOB*(hab: Handle[BndHArray1OfBox]; cob: var BndBox) {.cdecl,
    importcpp: "TopOpeBRepTool_BoxSort::MakeHABCOB(@)", header: "TopOpeBRepTool_BoxSort.hxx".}
proc hABShape*(this: TopOpeBRepToolBoxSort; i: cint): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "HABShape", header: "TopOpeBRepTool_BoxSort.hxx".}
proc makeCOB*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape; ts: TopAbsShapeEnum;
             ta: TopAbsShapeEnum = topAbsSHAPE) {.cdecl, importcpp: "MakeCOB",
    header: "TopOpeBRepTool_BoxSort.hxx".}
proc addBoxesMakeCOB*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape;
                     ts: TopAbsShapeEnum; ta: TopAbsShapeEnum = topAbsSHAPE) {.cdecl,
    importcpp: "AddBoxesMakeCOB", header: "TopOpeBRepTool_BoxSort.hxx".}
proc compare*(this: var TopOpeBRepToolBoxSort; s: TopoDS_Shape): TColStdListIteratorOfListOfInteger {.
    cdecl, importcpp: "Compare", header: "TopOpeBRepTool_BoxSort.hxx".}
proc touchedShape*(this: TopOpeBRepToolBoxSort;
                  i: TColStdListIteratorOfListOfInteger): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "TouchedShape", header: "TopOpeBRepTool_BoxSort.hxx".}
proc box*(this: TopOpeBRepToolBoxSort; s: TopoDS_Shape): BndBox {.noSideEffect, cdecl,
    importcpp: "Box", header: "TopOpeBRepTool_BoxSort.hxx".}
proc destroyTopOpeBRepToolBoxSort*(this: var TopOpeBRepToolBoxSort) {.cdecl,
    importcpp: "#.~TopOpeBRepTool_BoxSort()", header: "TopOpeBRepTool_BoxSort.hxx".}


