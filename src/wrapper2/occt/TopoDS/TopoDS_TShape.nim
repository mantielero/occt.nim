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

import
  ../Standard/Standard_Type, ../TopAbs/TopAbs, ../TopAbs/TopAbs_ShapeEnum,
  TopoDS_ListOfShape

discard "forward decl of TopoDS_Iterator"
discard "forward decl of TopoDS_Builder"
when defined(Convex):
  discard
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
  TopoDS_TShape* {.importcpp: "TopoDS_TShape", header: "TopoDS_TShape.hxx", bycopy.} = object of Standard_Transient ##
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


proc Free*(this: TopoDS_TShape): Standard_Boolean {.noSideEffect, importcpp: "Free",
    header: "TopoDS_TShape.hxx".}
proc Free*(this: var TopoDS_TShape; theIsFree: Standard_Boolean) {.importcpp: "Free",
    header: "TopoDS_TShape.hxx".}
proc Locked*(this: TopoDS_TShape): Standard_Boolean {.noSideEffect,
    importcpp: "Locked", header: "TopoDS_TShape.hxx".}
proc Locked*(this: var TopoDS_TShape; theIsLocked: Standard_Boolean) {.
    importcpp: "Locked", header: "TopoDS_TShape.hxx".}
proc Modified*(this: TopoDS_TShape): Standard_Boolean {.noSideEffect,
    importcpp: "Modified", header: "TopoDS_TShape.hxx".}
proc Modified*(this: var TopoDS_TShape; theIsModified: Standard_Boolean) {.
    importcpp: "Modified", header: "TopoDS_TShape.hxx".}
proc Checked*(this: TopoDS_TShape): Standard_Boolean {.noSideEffect,
    importcpp: "Checked", header: "TopoDS_TShape.hxx".}
proc Checked*(this: var TopoDS_TShape; theIsChecked: Standard_Boolean) {.
    importcpp: "Checked", header: "TopoDS_TShape.hxx".}
proc Orientable*(this: TopoDS_TShape): Standard_Boolean {.noSideEffect,
    importcpp: "Orientable", header: "TopoDS_TShape.hxx".}
proc Orientable*(this: var TopoDS_TShape; theIsOrientable: Standard_Boolean) {.
    importcpp: "Orientable", header: "TopoDS_TShape.hxx".}
proc Closed*(this: TopoDS_TShape): Standard_Boolean {.noSideEffect,
    importcpp: "Closed", header: "TopoDS_TShape.hxx".}
proc Closed*(this: var TopoDS_TShape; theIsClosed: Standard_Boolean) {.
    importcpp: "Closed", header: "TopoDS_TShape.hxx".}
proc Infinite*(this: TopoDS_TShape): Standard_Boolean {.noSideEffect,
    importcpp: "Infinite", header: "TopoDS_TShape.hxx".}
proc Infinite*(this: var TopoDS_TShape; theIsInfinite: Standard_Boolean) {.
    importcpp: "Infinite", header: "TopoDS_TShape.hxx".}
proc Convex*(this: TopoDS_TShape): Standard_Boolean {.noSideEffect,
    importcpp: "Convex", header: "TopoDS_TShape.hxx".}
proc Convex*(this: var TopoDS_TShape; theIsConvex: Standard_Boolean) {.
    importcpp: "Convex", header: "TopoDS_TShape.hxx".}
proc ShapeType*(this: TopoDS_TShape): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TopoDS_TShape.hxx".}
proc EmptyCopy*(this: TopoDS_TShape): handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "TopoDS_TShape.hxx".}
proc NbChildren*(this: TopoDS_TShape): Standard_Integer {.noSideEffect,
    importcpp: "NbChildren", header: "TopoDS_TShape.hxx".}
proc DumpJson*(this: TopoDS_TShape; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TopoDS_TShape.hxx".}
type
  TopoDS_TShapebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopoDS_TShape::get_type_name(@)",
                              header: "TopoDS_TShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopoDS_TShape::get_type_descriptor(@)",
    header: "TopoDS_TShape.hxx".}
proc DynamicType*(this: TopoDS_TShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_TShape.hxx".}
discard "forward decl of TopoDS_TShape"
type
  Handle_TopoDS_TShape* = handle[TopoDS_TShape]