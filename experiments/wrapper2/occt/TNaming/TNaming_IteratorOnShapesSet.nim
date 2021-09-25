##  Created on: 1997-05-06
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

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TNaming_ShapesSet"
discard "forward decl of TopoDS_Shape"
type
  TNamingIteratorOnShapesSet* {.importcpp: "TNaming_IteratorOnShapesSet",
                               header: "TNaming_IteratorOnShapesSet.hxx", bycopy.} = object


proc constructTNamingIteratorOnShapesSet*(): TNamingIteratorOnShapesSet {.
    constructor, importcpp: "TNaming_IteratorOnShapesSet(@)",
    header: "TNaming_IteratorOnShapesSet.hxx".}
proc constructTNamingIteratorOnShapesSet*(s: TNamingShapesSet): TNamingIteratorOnShapesSet {.
    constructor, importcpp: "TNaming_IteratorOnShapesSet(@)",
    header: "TNaming_IteratorOnShapesSet.hxx".}
proc init*(this: var TNamingIteratorOnShapesSet; s: TNamingShapesSet) {.
    importcpp: "Init", header: "TNaming_IteratorOnShapesSet.hxx".}
proc more*(this: TNamingIteratorOnShapesSet): bool {.noSideEffect, importcpp: "More",
    header: "TNaming_IteratorOnShapesSet.hxx".}
proc next*(this: var TNamingIteratorOnShapesSet) {.importcpp: "Next",
    header: "TNaming_IteratorOnShapesSet.hxx".}
proc value*(this: TNamingIteratorOnShapesSet): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "TNaming_IteratorOnShapesSet.hxx".}
