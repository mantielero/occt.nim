##  Created on: 1997-01-09
##  Created by: Yves FRICAUD
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_MapOfShape,
  ../TopAbs/TopAbs_ShapeEnum, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
type
  TNaming_ShapesSet* {.importcpp: "TNaming_ShapesSet",
                      header: "TNaming_ShapesSet.hxx", bycopy.} = object


proc constructTNaming_ShapesSet*(): TNaming_ShapesSet {.constructor,
    importcpp: "TNaming_ShapesSet(@)", header: "TNaming_ShapesSet.hxx".}
proc constructTNaming_ShapesSet*(S: TopoDS_Shape;
                                Type: TopAbs_ShapeEnum = TopAbs_SHAPE): TNaming_ShapesSet {.
    constructor, importcpp: "TNaming_ShapesSet(@)", header: "TNaming_ShapesSet.hxx".}
proc Clear*(this: var TNaming_ShapesSet) {.importcpp: "Clear",
                                       header: "TNaming_ShapesSet.hxx".}
proc Add*(this: var TNaming_ShapesSet; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "Add", header: "TNaming_ShapesSet.hxx".}
proc Contains*(this: TNaming_ShapesSet; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "TNaming_ShapesSet.hxx".}
proc Remove*(this: var TNaming_ShapesSet; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "Remove", header: "TNaming_ShapesSet.hxx".}
proc Add*(this: var TNaming_ShapesSet; Shapes: TNaming_ShapesSet) {.importcpp: "Add",
    header: "TNaming_ShapesSet.hxx".}
proc Filter*(this: var TNaming_ShapesSet; Shapes: TNaming_ShapesSet) {.
    importcpp: "Filter", header: "TNaming_ShapesSet.hxx".}
proc Remove*(this: var TNaming_ShapesSet; Shapes: TNaming_ShapesSet) {.
    importcpp: "Remove", header: "TNaming_ShapesSet.hxx".}
proc IsEmpty*(this: TNaming_ShapesSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TNaming_ShapesSet.hxx".}
proc NbShapes*(this: TNaming_ShapesSet): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "TNaming_ShapesSet.hxx".}
proc ChangeMap*(this: var TNaming_ShapesSet): var TopTools_MapOfShape {.
    importcpp: "ChangeMap", header: "TNaming_ShapesSet.hxx".}
proc Map*(this: TNaming_ShapesSet): TopTools_MapOfShape {.noSideEffect,
    importcpp: "Map", header: "TNaming_ShapesSet.hxx".}