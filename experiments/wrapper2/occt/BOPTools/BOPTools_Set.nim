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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../NCollection/NCollection_BaseAllocator,
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Integer,
  ../TopAbs/TopAbs_ShapeEnum, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shape"
type
  BOPTools_Set* {.importcpp: "BOPTools_Set", header: "BOPTools_Set.hxx", bycopy.} = object


proc constructBOPTools_Set*(): BOPTools_Set {.constructor,
    importcpp: "BOPTools_Set(@)", header: "BOPTools_Set.hxx".}
proc destroyBOPTools_Set*(this: var BOPTools_Set) {.importcpp: "#.~BOPTools_Set()",
    header: "BOPTools_Set.hxx".}
proc constructBOPTools_Set*(theAllocator: handle[NCollection_BaseAllocator]): BOPTools_Set {.
    constructor, importcpp: "BOPTools_Set(@)", header: "BOPTools_Set.hxx".}
proc constructBOPTools_Set*(theOther: BOPTools_Set): BOPTools_Set {.constructor,
    importcpp: "BOPTools_Set(@)", header: "BOPTools_Set.hxx".}
proc Assign*(this: var BOPTools_Set; Other: BOPTools_Set): var BOPTools_Set {.
    importcpp: "Assign", header: "BOPTools_Set.hxx".}
proc Shape*(this: BOPTools_Set): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BOPTools_Set.hxx".}
proc Add*(this: var BOPTools_Set; theS: TopoDS_Shape; theType: TopAbs_ShapeEnum) {.
    importcpp: "Add", header: "BOPTools_Set.hxx".}
proc NbShapes*(this: BOPTools_Set): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "BOPTools_Set.hxx".}
proc IsEqual*(this: BOPTools_Set; aOther: BOPTools_Set): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "BOPTools_Set.hxx".}
proc HashCode*(this: BOPTools_Set; theUpperBound: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "HashCode", header: "BOPTools_Set.hxx".}