##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../BRepTools/BRepTools_ReShape,
  ../TopAbs/TopAbs_ShapeEnum, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../ShapeExtend/ShapeExtend_Status

discard "forward decl of TopoDS_Shape"
when defined(Status):
  discard
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeBuild_ReShape"
type
  Handle_ShapeBuild_ReShape* = handle[ShapeBuild_ReShape]

## ! Rebuilds a Shape by making pre-defined substitutions on some
## ! of its components
## !
## ! In a first phase, it records requests to replace or remove
## ! some individual shapes
## ! For each shape, the last given request is recorded
## ! Requests may be applied "Oriented" (i.e. only to an item with
## ! the SAME orientation) or not (the orientation of replacing
## ! shape is respectful of that of the original one)
## !
## ! Then, these requests may be applied to any shape which may
## ! contain one or more of these individual shapes

type
  ShapeBuild_ReShape* {.importcpp: "ShapeBuild_ReShape",
                       header: "ShapeBuild_ReShape.hxx", bycopy.} = object of BRepTools_ReShape ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## Reshape


proc constructShapeBuild_ReShape*(): ShapeBuild_ReShape {.constructor,
    importcpp: "ShapeBuild_ReShape(@)", header: "ShapeBuild_ReShape.hxx".}
proc Apply*(this: var ShapeBuild_ReShape; shape: TopoDS_Shape;
           until: TopAbs_ShapeEnum; buildmode: Standard_Integer): TopoDS_Shape {.
    importcpp: "Apply", header: "ShapeBuild_ReShape.hxx".}
proc Apply*(this: var ShapeBuild_ReShape; shape: TopoDS_Shape;
           until: TopAbs_ShapeEnum = TopAbs_SHAPE): TopoDS_Shape {.
    importcpp: "Apply", header: "ShapeBuild_ReShape.hxx".}
proc Status*(this: var ShapeBuild_ReShape; shape: TopoDS_Shape;
            newsh: var TopoDS_Shape; last: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "Status", header: "ShapeBuild_ReShape.hxx".}
proc Status*(this: ShapeBuild_ReShape; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeBuild_ReShape.hxx".}
type
  ShapeBuild_ReShapebase_type* = BRepTools_ReShape

proc get_type_name*(): cstring {.importcpp: "ShapeBuild_ReShape::get_type_name(@)",
                              header: "ShapeBuild_ReShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeBuild_ReShape::get_type_descriptor(@)",
    header: "ShapeBuild_ReShape.hxx".}
proc DynamicType*(this: ShapeBuild_ReShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeBuild_ReShape.hxx".}