##  Created on: 2006-08-07
##  Created by: Galina KULIKOVA
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ShapeUpgrade_SplitSurface, ../Standard/Standard_Boolean

discard "forward decl of ShapeUpgrade_SplitSurfaceArea"
discard "forward decl of ShapeUpgrade_SplitSurfaceArea"
type
  Handle_ShapeUpgrade_SplitSurfaceArea* = handle[ShapeUpgrade_SplitSurfaceArea]

## ! Split surface in the parametric space
## ! in according specified number of splits on the

type
  ShapeUpgrade_SplitSurfaceArea* {.importcpp: "ShapeUpgrade_SplitSurfaceArea",
                                  header: "ShapeUpgrade_SplitSurfaceArea.hxx",
                                  bycopy.} = object of ShapeUpgrade_SplitSurface ## !
                                                                            ## Empty
                                                                            ## constructor.


proc constructShapeUpgrade_SplitSurfaceArea*(): ShapeUpgrade_SplitSurfaceArea {.
    constructor, importcpp: "ShapeUpgrade_SplitSurfaceArea(@)",
    header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
proc NbParts*(this: var ShapeUpgrade_SplitSurfaceArea): var Standard_Integer {.
    importcpp: "NbParts", header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
proc Compute*(this: var ShapeUpgrade_SplitSurfaceArea;
             Segment: Standard_Boolean = Standard_True) {.importcpp: "Compute",
    header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
type
  ShapeUpgrade_SplitSurfaceAreabase_type* = ShapeUpgrade_SplitSurface

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_SplitSurfaceArea::get_type_name(@)",
                              header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_SplitSurfaceArea::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
proc DynamicType*(this: ShapeUpgrade_SplitSurfaceArea): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_SplitSurfaceArea.hxx".}