##  Created on: 1995-06-12
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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
type
  TopOpeBRepBuildShapeListOfShape* {.importcpp: "TopOpeBRepBuild_ShapeListOfShape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx",
                                    bycopy.} = object


proc constructTopOpeBRepBuildShapeListOfShape*(): TopOpeBRepBuildShapeListOfShape {.
    constructor, importcpp: "TopOpeBRepBuild_ShapeListOfShape(@)",
    header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc constructTopOpeBRepBuildShapeListOfShape*(s: TopoDS_Shape): TopOpeBRepBuildShapeListOfShape {.
    constructor, importcpp: "TopOpeBRepBuild_ShapeListOfShape(@)",
    header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc constructTopOpeBRepBuildShapeListOfShape*(s: TopoDS_Shape;
    L: TopToolsListOfShape): TopOpeBRepBuildShapeListOfShape {.constructor,
    importcpp: "TopOpeBRepBuild_ShapeListOfShape(@)",
    header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc list*(this: TopOpeBRepBuildShapeListOfShape): TopToolsListOfShape {.
    noSideEffect, importcpp: "List", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc changeList*(this: var TopOpeBRepBuildShapeListOfShape): var TopToolsListOfShape {.
    importcpp: "ChangeList", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc shape*(this: TopOpeBRepBuildShapeListOfShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc changeShape*(this: var TopOpeBRepBuildShapeListOfShape): var TopoDS_Shape {.
    importcpp: "ChangeShape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
