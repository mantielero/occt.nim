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
  BRepTools_History, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_MapOfShape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
when defined(Status):
  discard
discard "forward decl of BRepTools_ReShape"
discard "forward decl of BRepTools_ReShape"
type
  Handle_BRepTools_ReShape* = handle[BRepTools_ReShape]

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
## !
## ! Supports the 'BRepTools_History' history by method 'History'.

type
  BRepTools_ReShape* {.importcpp: "BRepTools_ReShape",
                      header: "BRepTools_ReShape.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## Reshape
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## kinds
                                                                                        ## of
                                                                                        ## the
                                                                                        ## replacements.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## 'true'
                                                                                        ## if
                                                                                        ## the
                                                                                        ## kind
                                                                                        ## of
                                                                                        ## a
                                                                                        ## replacement
                                                                                        ## is
                                                                                        ## an
                                                                                        ## ordinary
                                                                                        ## merging.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Maps
                                                                                        ## each
                                                                                        ## shape
                                                                                        ## to
                                                                                        ## its
                                                                                        ## replacement.
                                                                                        ##
                                                                                        ## !
                                                                                        ## If
                                                                                        ## a
                                                                                        ## shape
                                                                                        ## is
                                                                                        ## not
                                                                                        ## bound
                                                                                        ## to
                                                                                        ## the
                                                                                        ## map
                                                                                        ## then
                                                                                        ## the
                                                                                        ## shape
                                                                                        ## is
                                                                                        ## replaced
                                                                                        ## by
                                                                                        ## itself.


proc constructBRepTools_ReShape*(): BRepTools_ReShape {.constructor,
    importcpp: "BRepTools_ReShape(@)", header: "BRepTools_ReShape.hxx".}
proc Clear*(this: var BRepTools_ReShape) {.importcpp: "Clear",
                                       header: "BRepTools_ReShape.hxx".}
proc Remove*(this: var BRepTools_ReShape; shape: TopoDS_Shape) {.importcpp: "Remove",
    header: "BRepTools_ReShape.hxx".}
proc Replace*(this: var BRepTools_ReShape; shape: TopoDS_Shape; newshape: TopoDS_Shape) {.
    importcpp: "Replace", header: "BRepTools_ReShape.hxx".}
proc Merge*[TCollection](this: var BRepTools_ReShape; theParts: TCollection;
                        theProduct: TopoDS_Shape) {.importcpp: "Merge",
    header: "BRepTools_ReShape.hxx".}
proc IsRecorded*(this: BRepTools_ReShape; shape: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsRecorded", header: "BRepTools_ReShape.hxx".}
proc Value*(this: BRepTools_ReShape; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Value", header: "BRepTools_ReShape.hxx".}
proc Status*(this: var BRepTools_ReShape; shape: TopoDS_Shape;
            newsh: var TopoDS_Shape; last: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "Status", header: "BRepTools_ReShape.hxx".}
proc Apply*(this: var BRepTools_ReShape; shape: TopoDS_Shape;
           until: TopAbs_ShapeEnum = TopAbs_SHAPE): TopoDS_Shape {.
    importcpp: "Apply", header: "BRepTools_ReShape.hxx".}
proc ModeConsiderLocation*(this: var BRepTools_ReShape): var Standard_Boolean {.
    importcpp: "ModeConsiderLocation", header: "BRepTools_ReShape.hxx".}
proc CopyVertex*(this: var BRepTools_ReShape; theV: TopoDS_Vertex;
                theTol: Standard_Real = -1.0): TopoDS_Vertex {.
    importcpp: "CopyVertex", header: "BRepTools_ReShape.hxx".}
proc CopyVertex*(this: var BRepTools_ReShape; theV: TopoDS_Vertex; theNewPos: gp_Pnt;
                aTol: Standard_Real): TopoDS_Vertex {.importcpp: "CopyVertex",
    header: "BRepTools_ReShape.hxx".}
proc IsNewShape*(this: BRepTools_ReShape; theShape: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsNewShape", header: "BRepTools_ReShape.hxx".}
proc History*(this: BRepTools_ReShape): handle[BRepTools_History] {.noSideEffect,
    importcpp: "History", header: "BRepTools_ReShape.hxx".}
type
  BRepTools_ReShapebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepTools_ReShape::get_type_name(@)",
                              header: "BRepTools_ReShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepTools_ReShape::get_type_descriptor(@)",
    header: "BRepTools_ReShape.hxx".}
proc DynamicType*(this: BRepTools_ReShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepTools_ReShape.hxx".}