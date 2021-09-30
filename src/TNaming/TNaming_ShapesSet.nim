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

discard "forward decl of TopoDS_Shape"
type
  TNamingShapesSet* {.importcpp: "TNaming_ShapesSet",
                     header: "TNaming_ShapesSet.hxx", bycopy.} = object


proc constructTNamingShapesSet*(): TNamingShapesSet {.constructor,
    importcpp: "TNaming_ShapesSet(@)", header: "TNaming_ShapesSet.hxx".}
proc constructTNamingShapesSet*(s: TopoDS_Shape;
                               `type`: TopAbsShapeEnum = topAbsSHAPE): TNamingShapesSet {.
    constructor, importcpp: "TNaming_ShapesSet(@)", header: "TNaming_ShapesSet.hxx".}
proc clear*(this: var TNamingShapesSet) {.importcpp: "Clear",
                                      header: "TNaming_ShapesSet.hxx".}
proc add*(this: var TNamingShapesSet; s: TopoDS_Shape): bool {.importcpp: "Add",
    header: "TNaming_ShapesSet.hxx".}
proc contains*(this: TNamingShapesSet; s: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "Contains", header: "TNaming_ShapesSet.hxx".}
proc remove*(this: var TNamingShapesSet; s: TopoDS_Shape): bool {.importcpp: "Remove",
    header: "TNaming_ShapesSet.hxx".}
proc add*(this: var TNamingShapesSet; shapes: TNamingShapesSet) {.importcpp: "Add",
    header: "TNaming_ShapesSet.hxx".}
proc filter*(this: var TNamingShapesSet; shapes: TNamingShapesSet) {.
    importcpp: "Filter", header: "TNaming_ShapesSet.hxx".}
proc remove*(this: var TNamingShapesSet; shapes: TNamingShapesSet) {.
    importcpp: "Remove", header: "TNaming_ShapesSet.hxx".}
proc isEmpty*(this: TNamingShapesSet): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "TNaming_ShapesSet.hxx".}
proc nbShapes*(this: TNamingShapesSet): cint {.noSideEffect, importcpp: "NbShapes",
    header: "TNaming_ShapesSet.hxx".}
proc changeMap*(this: var TNamingShapesSet): var TopToolsMapOfShape {.
    importcpp: "ChangeMap", header: "TNaming_ShapesSet.hxx".}
proc map*(this: TNamingShapesSet): TopToolsMapOfShape {.noSideEffect,
    importcpp: "Map", header: "TNaming_ShapesSet.hxx".}

























