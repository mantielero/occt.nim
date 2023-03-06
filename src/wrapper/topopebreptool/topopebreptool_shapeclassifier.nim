import ../gp/gp_types
import ../topabs/topabs_types
import topopebreptool_types
import ../toptools/toptools_types
import ../topods/topods_types





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



proc newTopOpeBRepToolShapeClassifier*(): TopOpeBRepToolShapeClassifier {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_ShapeClassifier(@)", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc newTopOpeBRepToolShapeClassifier*(sRef: TopoDS_Shape): TopOpeBRepToolShapeClassifier {.
    cdecl, constructor, importcpp: "TopOpeBRepTool_ShapeClassifier(@)",
    header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc clearAll*(this: var TopOpeBRepToolShapeClassifier) {.cdecl,
    importcpp: "ClearAll", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc clearCurrent*(this: var TopOpeBRepToolShapeClassifier) {.cdecl,
    importcpp: "ClearCurrent", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc setReference*(this: var TopOpeBRepToolShapeClassifier; sRef: TopoDS_Shape) {.
    cdecl, importcpp: "SetReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeShape*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                     sRef: TopoDS_Shape; samedomain: cint = 0): TopAbsState {.cdecl,
    importcpp: "StateShapeShape", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc sameDomain*(this: TopOpeBRepToolShapeClassifier): cint {.noSideEffect, cdecl,
    importcpp: "SameDomain", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc sameDomain*(this: var TopOpeBRepToolShapeClassifier; samedomain: cint) {.cdecl,
    importcpp: "SameDomain", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeShape*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                     avoidS: TopoDS_Shape; sRef: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "StateShapeShape", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeShape*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                     lAvoidS: TopToolsListOfShape; sRef: TopoDS_Shape): TopAbsState {.
    cdecl, importcpp: "StateShapeShape", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeReference*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                         avoidS: TopoDS_Shape): TopAbsState {.cdecl,
    importcpp: "StateShapeReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateShapeReference*(this: var TopOpeBRepToolShapeClassifier; s: TopoDS_Shape;
                         lAvoidS: TopToolsListOfShape): TopAbsState {.cdecl,
    importcpp: "StateShapeReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc changeSolidClassifier*(this: var TopOpeBRepToolShapeClassifier): var TopOpeBRepToolSolidClassifier {.
    cdecl, importcpp: "ChangeSolidClassifier", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateP2DReference*(this: var TopOpeBRepToolShapeClassifier; p2d: gp_Pnt2d) {.cdecl,
    importcpp: "StateP2DReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc stateP3DReference*(this: var TopOpeBRepToolShapeClassifier; p3d: gp_Pnt) {.cdecl,
    importcpp: "StateP3DReference", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc state*(this: TopOpeBRepToolShapeClassifier): TopAbsState {.noSideEffect, cdecl,
    importcpp: "State", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc p2d*(this: TopOpeBRepToolShapeClassifier): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "P2D", header: "TopOpeBRepTool_ShapeClassifier.hxx".}
proc p3d*(this: TopOpeBRepToolShapeClassifier): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "P3D", header: "TopOpeBRepTool_ShapeClassifier.hxx".}


