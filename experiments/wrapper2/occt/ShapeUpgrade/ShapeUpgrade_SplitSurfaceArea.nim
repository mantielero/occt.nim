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

discard "forward decl of ShapeUpgrade_SplitSurfaceArea"
discard "forward decl of ShapeUpgrade_SplitSurfaceArea"
type
  HandleShapeUpgradeSplitSurfaceArea* = Handle[ShapeUpgradeSplitSurfaceArea]

## ! Split surface in the parametric space
## ! in according specified number of splits on the

type
  ShapeUpgradeSplitSurfaceArea* {.importcpp: "ShapeUpgrade_SplitSurfaceArea",
                                 header: "ShapeUpgrade_SplitSurfaceArea.hxx",
                                 bycopy.} = object of ShapeUpgradeSplitSurface ## ! Empty
                                                                          ## constructor.


proc constructShapeUpgradeSplitSurfaceArea*(): ShapeUpgradeSplitSurfaceArea {.
    constructor, importcpp: "ShapeUpgrade_SplitSurfaceArea(@)",
    header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
proc nbParts*(this: var ShapeUpgradeSplitSurfaceArea): var int {.importcpp: "NbParts",
    header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
proc compute*(this: var ShapeUpgradeSplitSurfaceArea; segment: bool = true) {.
    importcpp: "Compute", header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
type
  ShapeUpgradeSplitSurfaceAreabaseType* = ShapeUpgradeSplitSurface

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_SplitSurfaceArea::get_type_name(@)",
                            header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_SplitSurfaceArea::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
proc dynamicType*(this: ShapeUpgradeSplitSurfaceArea): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_SplitSurfaceArea.hxx".}
