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

discard "forward decl of TopoDS_Shape"
# when defined(Status):
#   discard
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeBuild_ReShape"
type
  HandleShapeBuildReShape* = Handle[ShapeBuildReShape]

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
  ShapeBuildReShape* {.importcpp: "ShapeBuild_ReShape",
                      header: "ShapeBuild_ReShape.hxx", bycopy.} = object of BRepToolsReShape ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## an
                                                                                       ## empty
                                                                                       ## Reshape


proc constructShapeBuildReShape*(): ShapeBuildReShape {.constructor,
    importcpp: "ShapeBuild_ReShape(@)", header: "ShapeBuild_ReShape.hxx".}
proc apply*(this: var ShapeBuildReShape; shape: TopoDS_Shape; until: TopAbsShapeEnum;
           buildmode: StandardInteger): TopoDS_Shape {.importcpp: "Apply",
    header: "ShapeBuild_ReShape.hxx".}
proc apply*(this: var ShapeBuildReShape; shape: TopoDS_Shape;
           until: TopAbsShapeEnum = topAbsSHAPE): TopoDS_Shape {.importcpp: "Apply",
    header: "ShapeBuild_ReShape.hxx".}
proc status*(this: var ShapeBuildReShape; shape: TopoDS_Shape;
            newsh: var TopoDS_Shape; last: StandardBoolean = standardFalse): StandardInteger {.
    importcpp: "Status", header: "ShapeBuild_ReShape.hxx".}
proc status*(this: ShapeBuildReShape; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "Status", header: "ShapeBuild_ReShape.hxx".}
type
  ShapeBuildReShapebaseType* = BRepToolsReShape

proc getTypeName*(): cstring {.importcpp: "ShapeBuild_ReShape::get_type_name(@)",
                            header: "ShapeBuild_ReShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeBuild_ReShape::get_type_descriptor(@)",
    header: "ShapeBuild_ReShape.hxx".}
proc dynamicType*(this: ShapeBuildReShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeBuild_ReShape.hxx".}

