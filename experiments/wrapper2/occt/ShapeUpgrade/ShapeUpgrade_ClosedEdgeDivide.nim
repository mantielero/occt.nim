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

import
  ../Standard/Standard, ../Standard/Standard_Type, ShapeUpgrade_EdgeDivide,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Edge"
discard "forward decl of ShapeUpgrade_ClosedEdgeDivide"
discard "forward decl of ShapeUpgrade_ClosedEdgeDivide"
type
  Handle_ShapeUpgrade_ClosedEdgeDivide* = handle[ShapeUpgrade_ClosedEdgeDivide]
  ShapeUpgrade_ClosedEdgeDivide* {.importcpp: "ShapeUpgrade_ClosedEdgeDivide",
                                  header: "ShapeUpgrade_ClosedEdgeDivide.hxx",
                                  bycopy.} = object of ShapeUpgrade_EdgeDivide ## ! Empty
                                                                          ## constructor.


proc constructShapeUpgrade_ClosedEdgeDivide*(): ShapeUpgrade_ClosedEdgeDivide {.
    constructor, importcpp: "ShapeUpgrade_ClosedEdgeDivide(@)",
    header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}
proc Compute*(this: var ShapeUpgrade_ClosedEdgeDivide; anEdge: TopoDS_Edge): Standard_Boolean {.
    importcpp: "Compute", header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}
type
  ShapeUpgrade_ClosedEdgeDividebase_type* = ShapeUpgrade_EdgeDivide

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_ClosedEdgeDivide::get_type_name(@)",
                              header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_ClosedEdgeDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}
proc DynamicType*(this: ShapeUpgrade_ClosedEdgeDivide): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_ClosedEdgeDivide.hxx".}