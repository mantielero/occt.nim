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


proc newTopOpeBRepToolShapeClassifier*(): TopOpeBRepToolShapeClassifier {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_ShapeClassifier(@)", dynlib: tkbool.}
proc newTopOpeBRepToolShapeClassifier*(sRef: TopoDS_Shape): TopOpeBRepToolShapeClassifier {.
    cdecl, constructor, importcpp: "TopOpeBRepTool_ShapeClassifier(@)",
    dynlib: tkbool.}
proc clearAll*(this: var TopOpeBRepToolShapeClassifier) {.cdecl,
    importcpp: "ClearAll", dynlib: tkbool.}
proc clearCurrent*(this: var TopOpeBRepToolShapeClassifier) {.cdecl,
    importcpp: "ClearCurrent", dynlib: tkbool.}
proc setReference*(this: var TopOpeBRepToolShapeClassifier; sRef: TopoDS_Shape) {.
    cdecl, importcpp: "SetReference", dynlib: tkbool.}
proc stateShapeShape*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                     sRef: TopoDS_Shape; samedomain: cint = 0): TopAbsState {.cdecl,
    importcpp: "StateShapeShape", dynlib: tkbool.}
proc sameDomain*(this: TopOpeBRepToolShapeClassifier): cint {.noSideEffect, cdecl,
    importcpp: "SameDomain", dynlib: tkbool.}
proc sameDomain*(this: var TopOpeBRepToolShapeClassifier; samedomain: cint) {.cdecl,
    importcpp: "SameDomain", dynlib: tkbool.}
proc stateShapeShape*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                     avoidS: TopoDS_Shape; sRef: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "StateShapeShape", dynlib: tkbool.}
proc stateShapeShape*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                     lAvoidS: TopToolsListOfShape; sRef: TopoDS_Shape): TopAbsState {.
    cdecl, importcpp: "StateShapeShape", dynlib: tkbool.}
proc stateShapeReference*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                         avoidS: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "StateShapeReference", dynlib: tkbool.}
proc stateShapeReference*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                         lAvoidS: TopToolsListOfShape): TopAbsState {.cdecl,
    importcpp: "StateShapeReference", dynlib: tkbool.}
proc changeSolidClassifier*(this: var TopOpeBRepToolShapeClassifier): var TopOpeBRepToolSolidClassifier {.
    cdecl, importcpp: "ChangeSolidClassifier", dynlib: tkbool.}
proc stateP2DReference*(this: var TopOpeBRepToolShapeClassifier; p2d: Pnt2d) {.cdecl,
    importcpp: "StateP2DReference", dynlib: tkbool.}
proc stateP3DReference*(this: var TopOpeBRepToolShapeClassifier; p3d: Pnt) {.cdecl,
    importcpp: "StateP3DReference", dynlib: tkbool.}
proc state*(this: TopOpeBRepToolShapeClassifier): TopAbsState {.noSideEffect, cdecl,
    importcpp: "State", dynlib: tkbool.}
proc p2d*(this: TopOpeBRepToolShapeClassifier): Pnt2d {.noSideEffect, cdecl,
    importcpp: "P2D", dynlib: tkbool.}
proc p3d*(this: TopOpeBRepToolShapeClassifier): Pnt {.noSideEffect, cdecl,
    importcpp: "P3D", dynlib: tkbool.}