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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_ListOfShape,
  ../TopoDS/TopoDS_Shape

discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepBuild_ShapeListOfShape* {.importcpp: "TopOpeBRepBuild_ShapeListOfShape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx",
                                     bycopy.} = object


proc constructTopOpeBRepBuild_ShapeListOfShape*(): TopOpeBRepBuild_ShapeListOfShape {.
    constructor, importcpp: "TopOpeBRepBuild_ShapeListOfShape(@)",
    header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc constructTopOpeBRepBuild_ShapeListOfShape*(S: TopoDS_Shape): TopOpeBRepBuild_ShapeListOfShape {.
    constructor, importcpp: "TopOpeBRepBuild_ShapeListOfShape(@)",
    header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc constructTopOpeBRepBuild_ShapeListOfShape*(S: TopoDS_Shape;
    L: TopTools_ListOfShape): TopOpeBRepBuild_ShapeListOfShape {.constructor,
    importcpp: "TopOpeBRepBuild_ShapeListOfShape(@)",
    header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc List*(this: TopOpeBRepBuild_ShapeListOfShape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "List", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc ChangeList*(this: var TopOpeBRepBuild_ShapeListOfShape): var TopTools_ListOfShape {.
    importcpp: "ChangeList", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc Shape*(this: TopOpeBRepBuild_ShapeListOfShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}
proc ChangeShape*(this: var TopOpeBRepBuild_ShapeListOfShape): var TopoDS_Shape {.
    importcpp: "ChangeShape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx".}