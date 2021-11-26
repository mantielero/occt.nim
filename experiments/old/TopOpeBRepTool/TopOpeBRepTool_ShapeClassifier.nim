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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepTool_SolidClassifier"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
type
  TopOpeBRepToolShapeClassifier* {.importcpp: "TopOpeBRepTool_ShapeClassifier",
                                  header: "TopOpeBRepTool_ShapeClassifier.hxx",
                                  bycopy.} = object


proc `new`*(this: var TopOpeBRepToolShapeClassifier; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_ShapeClassifier::operator new",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc `delete`*(this: var TopOpeBRepToolShapeClassifier; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_ShapeClassifier::operator delete",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc `new[]`*(this: var TopOpeBRepToolShapeClassifier; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepTool_ShapeClassifier::operator new[]",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc `delete[]`*(this: var TopOpeBRepToolShapeClassifier; theAddress: pointer) {.
    importcpp: "TopOpeBRepTool_ShapeClassifier::operator delete[]",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc `new`*(this: var TopOpeBRepToolShapeClassifier; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepTool_ShapeClassifier::operator new",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc `delete`*(this: var TopOpeBRepToolShapeClassifier; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepTool_ShapeClassifier::operator delete",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc constructTopOpeBRepToolShapeClassifier*(): TopOpeBRepToolShapeClassifier {.
    constructor, importcpp: "TopOpeBRepTool_ShapeClassifier(@)",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc constructTopOpeBRepToolShapeClassifier*(sRef: TopoDS_Shape): TopOpeBRepToolShapeClassifier {.
    constructor, importcpp: "TopOpeBRepTool_ShapeClassifier(@)",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc clearAll*(this: var TopOpeBRepToolShapeClassifier) {.importcpp: "ClearAll",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc clearCurrent*(this: var TopOpeBRepToolShapeClassifier) {.
    importcpp: "ClearCurrent", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc setReference*(this: var TopOpeBRepToolShapeClassifier; sRef: TopoDS_Shape) {.
    importcpp: "SetReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeShape*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                     sRef: TopoDS_Shape; samedomain: int = 0): TopAbsState {.
    importcpp: "StateShapeShape", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc sameDomain*(this: TopOpeBRepToolShapeClassifier): int {.noSideEffect,
    importcpp: "SameDomain", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc sameDomain*(this: var TopOpeBRepToolShapeClassifier; samedomain: int) {.
    importcpp: "SameDomain", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeShape*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                     avoidS: TopoDS_Shape; sRef: TopoDS_Shape): TopAbsState {.
    importcpp: "StateShapeShape", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeShape*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                     lAvoidS: TopToolsListOfShape; sRef: TopoDS_Shape): TopAbsState {.
    importcpp: "StateShapeShape", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeReference*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                         avoidS: TopoDS_Shape): TopAbsState {.
    importcpp: "StateShapeReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeReference*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                         lAvoidS: TopToolsListOfShape): TopAbsState {.
    importcpp: "StateShapeReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc changeSolidClassifier*(this: var TopOpeBRepToolShapeClassifier): var TopOpeBRepToolSolidClassifier {.
    importcpp: "ChangeSolidClassifier",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateP2DReference*(this: var TopOpeBRepToolShapeClassifier; p2d: Pnt2d) {.
    importcpp: "StateP2DReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateP3DReference*(this: var TopOpeBRepToolShapeClassifier; p3d: Pnt) {.
    importcpp: "StateP3DReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc state*(this: TopOpeBRepToolShapeClassifier): TopAbsState {.noSideEffect,
    importcpp: "State", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc p2d*(this: TopOpeBRepToolShapeClassifier): Pnt2d {.noSideEffect,
    importcpp: "P2D", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc p3d*(this: TopOpeBRepToolShapeClassifier): Pnt {.noSideEffect, importcpp: "P3D",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}