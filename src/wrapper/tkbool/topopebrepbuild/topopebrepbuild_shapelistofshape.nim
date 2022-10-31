import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import topopebrepbuild_types



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



proc newTopOpeBRepBuildShapeListOfShape*(): TopOpeBRepBuildShapeListOfShape {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_ShapeListOfShape(@)",
    header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc newTopOpeBRepBuildShapeListOfShape*(s: TopoDS_Shape): TopOpeBRepBuildShapeListOfShape {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_ShapeListOfShape(@)",
    header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc newTopOpeBRepBuildShapeListOfShape*(s: TopoDS_Shape; L: TopToolsListOfShape): TopOpeBRepBuildShapeListOfShape {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_ShapeListOfShape(@)",
    header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc list*(this: TopOpeBRepBuildShapeListOfShape): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "List", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc changeList*(this: var TopOpeBRepBuildShapeListOfShape): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeList", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc shape*(this: TopOpeBRepBuildShapeListOfShape): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "Shape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc changeShape*(this: var TopOpeBRepBuildShapeListOfShape): var TopoDS_Shape {.
    cdecl, importcpp: "ChangeShape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}

