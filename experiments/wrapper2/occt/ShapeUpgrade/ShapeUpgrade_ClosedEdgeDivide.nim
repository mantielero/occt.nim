##  Created on: 2000-05-25
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of ShapeUpgrade_ClosedEdgeDivide"
discard "forward decl of ShapeUpgrade_ClosedEdgeDivide"
type
  HandleShapeUpgradeClosedEdgeDivide* = Handle[ShapeUpgradeClosedEdgeDivide]
  ShapeUpgradeClosedEdgeDivide* {.importcpp: "ShapeUpgrade_ClosedEdgeDivide",
                                 header: "ShapeUpgrade_ClosedEdgeDivide.hxx",
                                 bycopy.} = object of ShapeUpgradeEdgeDivide ## ! Empty
                                                                        ## constructor.


proc constructShapeUpgradeClosedEdgeDivide*(): ShapeUpgradeClosedEdgeDivide {.
    constructor, importcpp: "ShapeUpgrade_ClosedEdgeDivide(@)",
    header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}
proc compute*(this: var ShapeUpgradeClosedEdgeDivide; anEdge: TopoDS_Edge): bool {.
    importcpp: "Compute", header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}
type
  ShapeUpgradeClosedEdgeDividebaseType* = ShapeUpgradeEdgeDivide

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_ClosedEdgeDivide::get_type_name(@)",
                            header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_ClosedEdgeDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}
proc dynamicType*(this: ShapeUpgradeClosedEdgeDivide): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}
