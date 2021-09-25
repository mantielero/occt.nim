##  Created by: Peter KURNEV
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
  BOPToolsSet* {.importcpp: "BOPTools_Set", header: "BOPTools_Set.hxx", bycopy.} = object


proc constructBOPToolsSet*(): BOPToolsSet {.constructor,
    importcpp: "BOPTools_Set(@)", header: "BOPTools_Set.hxx".}
proc destroyBOPToolsSet*(this: var BOPToolsSet) {.importcpp: "#.~BOPTools_Set()",
    header: "BOPTools_Set.hxx".}
proc constructBOPToolsSet*(theAllocator: Handle[NCollectionBaseAllocator]): BOPToolsSet {.
    constructor, importcpp: "BOPTools_Set(@)", header: "BOPTools_Set.hxx".}
proc constructBOPToolsSet*(theOther: BOPToolsSet): BOPToolsSet {.constructor,
    importcpp: "BOPTools_Set(@)", header: "BOPTools_Set.hxx".}
proc assign*(this: var BOPToolsSet; other: BOPToolsSet): var BOPToolsSet {.
    importcpp: "Assign", header: "BOPTools_Set.hxx".}
proc shape*(this: BOPToolsSet): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BOPTools_Set.hxx".}
proc add*(this: var BOPToolsSet; theS: TopoDS_Shape; theType: TopAbsShapeEnum) {.
    importcpp: "Add", header: "BOPTools_Set.hxx".}
proc nbShapes*(this: BOPToolsSet): int {.noSideEffect, importcpp: "NbShapes",
                                     header: "BOPTools_Set.hxx".}
proc isEqual*(this: BOPToolsSet; aOther: BOPToolsSet): bool {.noSideEffect,
    importcpp: "IsEqual", header: "BOPTools_Set.hxx".}
proc hashCode*(this: BOPToolsSet; theUpperBound: int): int {.noSideEffect,
    importcpp: "HashCode", header: "BOPTools_Set.hxx".}
