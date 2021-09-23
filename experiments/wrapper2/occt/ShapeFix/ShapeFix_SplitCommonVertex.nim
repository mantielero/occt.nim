##  Created on: 2004-02-04
##  Created by: Sergey KUUL
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Integer, ShapeFix_Root

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeFix_SplitCommonVertex"
discard "forward decl of ShapeFix_SplitCommonVertex"
type
  Handle_ShapeFix_SplitCommonVertex* = handle[ShapeFix_SplitCommonVertex]

## ! Two wires have common vertex - this case is valid in BRep model
## ! and isn't valid in STEP => before writing into STEP it is necessary
## ! to split this vertex (each wire must has one vertex)

type
  ShapeFix_SplitCommonVertex* {.importcpp: "ShapeFix_SplitCommonVertex",
                               header: "ShapeFix_SplitCommonVertex.hxx", bycopy.} = object of ShapeFix_Root


proc constructShapeFix_SplitCommonVertex*(): ShapeFix_SplitCommonVertex {.
    constructor, importcpp: "ShapeFix_SplitCommonVertex(@)",
    header: "ShapeFix_SplitCommonVertex.hxx".}
proc Init*(this: var ShapeFix_SplitCommonVertex; S: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeFix_SplitCommonVertex.hxx".}
proc Perform*(this: var ShapeFix_SplitCommonVertex) {.importcpp: "Perform",
    header: "ShapeFix_SplitCommonVertex.hxx".}
proc Shape*(this: var ShapeFix_SplitCommonVertex): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_SplitCommonVertex.hxx".}
type
  ShapeFix_SplitCommonVertexbase_type* = ShapeFix_Root

proc get_type_name*(): cstring {.importcpp: "ShapeFix_SplitCommonVertex::get_type_name(@)",
                              header: "ShapeFix_SplitCommonVertex.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_SplitCommonVertex::get_type_descriptor(@)",
    header: "ShapeFix_SplitCommonVertex.hxx".}
proc DynamicType*(this: ShapeFix_SplitCommonVertex): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeFix_SplitCommonVertex.hxx".}