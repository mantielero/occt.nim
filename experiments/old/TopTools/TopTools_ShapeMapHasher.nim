##  Created on: 1993-01-14
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  TopToolsShapeMapHasher* {.importcpp: "TopTools_ShapeMapHasher",
                           header: "TopTools_ShapeMapHasher.hxx", bycopy.} = object


proc `new`*(this: var TopToolsShapeMapHasher; theSize: csize_t): pointer {.
    importcpp: "TopTools_ShapeMapHasher::operator new",
    header: "TopTools_ShapeMapHasher.hxx".}
proc `delete`*(this: var TopToolsShapeMapHasher; theAddress: pointer) {.
    importcpp: "TopTools_ShapeMapHasher::operator delete",
    header: "TopTools_ShapeMapHasher.hxx".}
proc `new[]`*(this: var TopToolsShapeMapHasher; theSize: csize_t): pointer {.
    importcpp: "TopTools_ShapeMapHasher::operator new[]",
    header: "TopTools_ShapeMapHasher.hxx".}
proc `delete[]`*(this: var TopToolsShapeMapHasher; theAddress: pointer) {.
    importcpp: "TopTools_ShapeMapHasher::operator delete[]",
    header: "TopTools_ShapeMapHasher.hxx".}
proc `new`*(this: var TopToolsShapeMapHasher; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopTools_ShapeMapHasher::operator new",
    header: "TopTools_ShapeMapHasher.hxx".}
proc `delete`*(this: var TopToolsShapeMapHasher; a2: pointer; a3: pointer) {.
    importcpp: "TopTools_ShapeMapHasher::operator delete",
    header: "TopTools_ShapeMapHasher.hxx".}
proc hashCode*(theShape: TopoDS_Shape; theUpperBound: int): int {.
    importcpp: "TopTools_ShapeMapHasher::HashCode(@)",
    header: "TopTools_ShapeMapHasher.hxx".}
proc isEqual*(s1: TopoDS_Shape; s2: TopoDS_Shape): StandardBoolean {.
    importcpp: "TopTools_ShapeMapHasher::IsEqual(@)",
    header: "TopTools_ShapeMapHasher.hxx".}