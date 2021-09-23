##  Created on: 1993-07-07
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
  ../Standard/Standard_Handle, ../TopOpeBRepTool/TopOpeBRepTool_BoxSort,
  ../TColStd/TColStd_ListIteratorOfListOfInteger, ../TopAbs/TopAbs_ShapeEnum,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepTool_ShapeExplorer"
discard "forward decl of TopOpeBRepTool_BoxSort"
type
  TopOpeBRep_ShapeScanner* {.importcpp: "TopOpeBRep_ShapeScanner",
                            header: "TopOpeBRep_ShapeScanner.hxx", bycopy.} = object


proc constructTopOpeBRep_ShapeScanner*(): TopOpeBRep_ShapeScanner {.constructor,
    importcpp: "TopOpeBRep_ShapeScanner(@)", header: "TopOpeBRep_ShapeScanner.hxx".}
proc Clear*(this: var TopOpeBRep_ShapeScanner) {.importcpp: "Clear",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc AddBoxesMakeCOB*(this: var TopOpeBRep_ShapeScanner; S: TopoDS_Shape;
                     TS: TopAbs_ShapeEnum; TA: TopAbs_ShapeEnum = TopAbs_SHAPE) {.
    importcpp: "AddBoxesMakeCOB", header: "TopOpeBRep_ShapeScanner.hxx".}
proc Init*(this: var TopOpeBRep_ShapeScanner; E: TopoDS_Shape) {.importcpp: "Init",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc Init*(this: var TopOpeBRep_ShapeScanner; X: var TopOpeBRepTool_ShapeExplorer) {.
    importcpp: "Init", header: "TopOpeBRep_ShapeScanner.hxx".}
proc More*(this: TopOpeBRep_ShapeScanner): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRep_ShapeScanner.hxx".}
proc Next*(this: var TopOpeBRep_ShapeScanner) {.importcpp: "Next",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc Current*(this: TopOpeBRep_ShapeScanner): TopoDS_Shape {.noSideEffect,
    importcpp: "Current", header: "TopOpeBRep_ShapeScanner.hxx".}
proc BoxSort*(this: TopOpeBRep_ShapeScanner): TopOpeBRepTool_BoxSort {.noSideEffect,
    importcpp: "BoxSort", header: "TopOpeBRep_ShapeScanner.hxx".}
proc ChangeBoxSort*(this: var TopOpeBRep_ShapeScanner): var TopOpeBRepTool_BoxSort {.
    importcpp: "ChangeBoxSort", header: "TopOpeBRep_ShapeScanner.hxx".}
proc Index*(this: TopOpeBRep_ShapeScanner): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRep_ShapeScanner.hxx".}
proc DumpCurrent*(this: TopOpeBRep_ShapeScanner; OS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "DumpCurrent", header: "TopOpeBRep_ShapeScanner.hxx".}