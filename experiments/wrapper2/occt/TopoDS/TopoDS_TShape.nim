##  Created on: 1990-12-13
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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

discard "forward decl of TopoDS_Iterator"
discard "forward decl of TopoDS_Builder"
# when defined(Convex):
#   discard
## ! A TShape  is a topological  structure describing a
## ! set of points in a 2D or 3D space.
## !
## ! A topological shape is a structure made from other
## ! shapes.  This is a deferred class  used to support
## ! topological objects.
## !
## ! TShapes are   defined   by  their  optional domain
## ! (geometry)  and  their  components  (other TShapes
## ! with  Locations and Orientations).  The components
## ! are stored in a List of Shapes.
## !
## ! A   TShape contains  the   following boolean flags :
## !
## ! - Free       : Free or Frozen.
## ! - Modified   : Has been modified.
## ! - Checked    : Has been checked.
## ! - Orientable : Can be oriented.
## ! - Closed     : Is closed (note that only Wires and Shells may be closed).
## ! - Infinite   : Is infinite.
## ! - Convex     : Is convex.
## !
## ! Users have no direct access to the classes derived
## ! from TShape.  They  handle them with   the classes
## ! derived from Shape.

type
  TopoDS_TShape* {.importcpp: "TopoDS_TShape", header: "TopoDS_TShape.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## the
                                                                                                         ## free
                                                                                                         ## flag.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## TShape.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Free
                                                                                                         ## :
                                                                                                         ## True
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Modified
                                                                                                         ## :
                                                                                                         ## True
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Checked
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Orientable
                                                                                                         ## :
                                                                                                         ## True
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Closed
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Infinite
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Convex
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## Defined
                                                                                                         ## mask
                                                                                                         ## values


proc free*(this: TopoDS_TShape): bool {.noSideEffect, importcpp: "Free",
                                    header: "TopoDS_TShape.hxx".}
proc free*(this: var TopoDS_TShape; theIsFree: bool) {.importcpp: "Free",
    header: "TopoDS_TShape.hxx".}
proc locked*(this: TopoDS_TShape): bool {.noSideEffect, importcpp: "Locked",
                                      header: "TopoDS_TShape.hxx".}
proc locked*(this: var TopoDS_TShape; theIsLocked: bool) {.importcpp: "Locked",
    header: "TopoDS_TShape.hxx".}
proc modified*(this: TopoDS_TShape): bool {.noSideEffect, importcpp: "Modified",
                                        header: "TopoDS_TShape.hxx".}
proc modified*(this: var TopoDS_TShape; theIsModified: bool) {.importcpp: "Modified",
    header: "TopoDS_TShape.hxx".}
proc checked*(this: TopoDS_TShape): bool {.noSideEffect, importcpp: "Checked",
                                       header: "TopoDS_TShape.hxx".}
proc checked*(this: var TopoDS_TShape; theIsChecked: bool) {.importcpp: "Checked",
    header: "TopoDS_TShape.hxx".}
proc orientable*(this: TopoDS_TShape): bool {.noSideEffect, importcpp: "Orientable",
    header: "TopoDS_TShape.hxx".}
proc orientable*(this: var TopoDS_TShape; theIsOrientable: bool) {.
    importcpp: "Orientable", header: "TopoDS_TShape.hxx".}
proc closed*(this: TopoDS_TShape): bool {.noSideEffect, importcpp: "Closed",
                                      header: "TopoDS_TShape.hxx".}
proc closed*(this: var TopoDS_TShape; theIsClosed: bool) {.importcpp: "Closed",
    header: "TopoDS_TShape.hxx".}
proc infinite*(this: TopoDS_TShape): bool {.noSideEffect, importcpp: "Infinite",
                                        header: "TopoDS_TShape.hxx".}
proc infinite*(this: var TopoDS_TShape; theIsInfinite: bool) {.importcpp: "Infinite",
    header: "TopoDS_TShape.hxx".}
proc convex*(this: TopoDS_TShape): bool {.noSideEffect, importcpp: "Convex",
                                      header: "TopoDS_TShape.hxx".}
proc convex*(this: var TopoDS_TShape; theIsConvex: bool) {.importcpp: "Convex",
    header: "TopoDS_TShape.hxx".}
proc shapeType*(this: TopoDS_TShape): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TopoDS_TShape.hxx".}
proc emptyCopy*(this: TopoDS_TShape): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "TopoDS_TShape.hxx".}
proc nbChildren*(this: TopoDS_TShape): int {.noSideEffect, importcpp: "NbChildren",
    header: "TopoDS_TShape.hxx".}
proc dumpJson*(this: TopoDS_TShape; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TopoDS_TShape.hxx".}
type
  TopoDS_TShapebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopoDS_TShape::get_type_name(@)",
                            header: "TopoDS_TShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TShape::get_type_descriptor(@)",
    header: "TopoDS_TShape.hxx".}
proc dynamicType*(this: TopoDS_TShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_TShape.hxx".}
discard "forward decl of TopoDS_TShape"
type
  HandleTopoDS_TShape* = Handle[TopoDS_TShape]

