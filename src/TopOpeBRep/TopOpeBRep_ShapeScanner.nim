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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepTool_ShapeExplorer"
discard "forward decl of TopOpeBRepTool_BoxSort"
type
  TopOpeBRepShapeScanner* {.importcpp: "TopOpeBRep_ShapeScanner",
                           header: "TopOpeBRep_ShapeScanner.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepShapeScanner; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_ShapeScanner::operator new",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc `delete`*(this: var TopOpeBRepShapeScanner; theAddress: pointer) {.
    importcpp: "TopOpeBRep_ShapeScanner::operator delete",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc `new[]`*(this: var TopOpeBRepShapeScanner; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_ShapeScanner::operator new[]",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc `delete[]`*(this: var TopOpeBRepShapeScanner; theAddress: pointer) {.
    importcpp: "TopOpeBRep_ShapeScanner::operator delete[]",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc `new`*(this: var TopOpeBRepShapeScanner; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRep_ShapeScanner::operator new",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc `delete`*(this: var TopOpeBRepShapeScanner; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRep_ShapeScanner::operator delete",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc constructTopOpeBRepShapeScanner*(): TopOpeBRepShapeScanner {.constructor,
    importcpp: "TopOpeBRep_ShapeScanner(@)", header: "TopOpeBRep_ShapeScanner.hxx".}
proc clear*(this: var TopOpeBRepShapeScanner) {.importcpp: "Clear",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc addBoxesMakeCOB*(this: var TopOpeBRepShapeScanner; s: TopoDS_Shape;
                     ts: TopAbsShapeEnum; ta: TopAbsShapeEnum = topAbsSHAPE) {.
    importcpp: "AddBoxesMakeCOB", header: "TopOpeBRep_ShapeScanner.hxx".}
proc init*(this: var TopOpeBRepShapeScanner; e: TopoDS_Shape) {.importcpp: "Init",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc init*(this: var TopOpeBRepShapeScanner; x: var TopOpeBRepToolShapeExplorer) {.
    importcpp: "Init", header: "TopOpeBRep_ShapeScanner.hxx".}
proc more*(this: TopOpeBRepShapeScanner): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRep_ShapeScanner.hxx".}
proc next*(this: var TopOpeBRepShapeScanner) {.importcpp: "Next",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc current*(this: TopOpeBRepShapeScanner): TopoDS_Shape {.noSideEffect,
    importcpp: "Current", header: "TopOpeBRep_ShapeScanner.hxx".}
proc boxSort*(this: TopOpeBRepShapeScanner): TopOpeBRepToolBoxSort {.noSideEffect,
    importcpp: "BoxSort", header: "TopOpeBRep_ShapeScanner.hxx".}
proc changeBoxSort*(this: var TopOpeBRepShapeScanner): var TopOpeBRepToolBoxSort {.
    importcpp: "ChangeBoxSort", header: "TopOpeBRep_ShapeScanner.hxx".}
proc index*(this: TopOpeBRepShapeScanner): int {.noSideEffect, importcpp: "Index",
    header: "TopOpeBRep_ShapeScanner.hxx".}
proc dumpCurrent*(this: TopOpeBRepShapeScanner; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "DumpCurrent", header: "TopOpeBRep_ShapeScanner.hxx".}