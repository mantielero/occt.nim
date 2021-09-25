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

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeFix_SplitCommonVertex"
discard "forward decl of ShapeFix_SplitCommonVertex"
type
  HandleShapeFixSplitCommonVertex* = Handle[ShapeFixSplitCommonVertex]

## ! Two wires have common vertex - this case is valid in BRep model
## ! and isn't valid in STEP => before writing into STEP it is necessary
## ! to split this vertex (each wire must has one vertex)

type
  ShapeFixSplitCommonVertex* {.importcpp: "ShapeFix_SplitCommonVertex",
                              header: "ShapeFix_SplitCommonVertex.hxx", bycopy.} = object of ShapeFixRoot


proc constructShapeFixSplitCommonVertex*(): ShapeFixSplitCommonVertex {.
    constructor, importcpp: "ShapeFix_SplitCommonVertex(@)",
    header: "ShapeFix_SplitCommonVertex.hxx".}
proc init*(this: var ShapeFixSplitCommonVertex; s: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeFix_SplitCommonVertex.hxx".}
proc perform*(this: var ShapeFixSplitCommonVertex) {.importcpp: "Perform",
    header: "ShapeFix_SplitCommonVertex.hxx".}
proc shape*(this: var ShapeFixSplitCommonVertex): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_SplitCommonVertex.hxx".}
type
  ShapeFixSplitCommonVertexbaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_SplitCommonVertex::get_type_name(@)",
                            header: "ShapeFix_SplitCommonVertex.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_SplitCommonVertex::get_type_descriptor(@)",
    header: "ShapeFix_SplitCommonVertex.hxx".}
proc dynamicType*(this: ShapeFixSplitCommonVertex): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeFix_SplitCommonVertex.hxx".}
