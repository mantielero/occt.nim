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
discard "forward decl of TopoDS_Vertex"
# when defined(Status):
#   discard
discard "forward decl of BRepTools_ReShape"
discard "forward decl of BRepTools_ReShape"
type
  HandleBRepToolsReShape* = Handle[BRepToolsReShape]

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
  BRepToolsReShape* {.importcpp: "BRepTools_ReShape",
                     header: "BRepTools_ReShape.hxx", bycopy.} = object of StandardTransient ##
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


proc constructBRepToolsReShape*(): BRepToolsReShape {.constructor,
    importcpp: "BRepTools_ReShape(@)", header: "BRepTools_ReShape.hxx".}
proc clear*(this: var BRepToolsReShape) {.importcpp: "Clear",
                                      header: "BRepTools_ReShape.hxx".}
proc remove*(this: var BRepToolsReShape; shape: TopoDS_Shape) {.importcpp: "Remove",
    header: "BRepTools_ReShape.hxx".}
proc replace*(this: var BRepToolsReShape; shape: TopoDS_Shape; newshape: TopoDS_Shape) {.
    importcpp: "Replace", header: "BRepTools_ReShape.hxx".}
proc merge*[TCollection](this: var BRepToolsReShape; theParts: TCollection;
                        theProduct: TopoDS_Shape) {.importcpp: "Merge",
    header: "BRepTools_ReShape.hxx".}
proc isRecorded*(this: BRepToolsReShape; shape: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "IsRecorded", header: "BRepTools_ReShape.hxx".}
proc value*(this: BRepToolsReShape; shape: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "BRepTools_ReShape.hxx".}
proc status*(this: var BRepToolsReShape; shape: TopoDS_Shape; newsh: var TopoDS_Shape;
            last: bool = false): int {.importcpp: "Status",
                                  header: "BRepTools_ReShape.hxx".}
proc apply*(this: var BRepToolsReShape; shape: TopoDS_Shape;
           until: TopAbsShapeEnum = topAbsSHAPE): TopoDS_Shape {.importcpp: "Apply",
    header: "BRepTools_ReShape.hxx".}
proc modeConsiderLocation*(this: var BRepToolsReShape): var bool {.
    importcpp: "ModeConsiderLocation", header: "BRepTools_ReShape.hxx".}
proc copyVertex*(this: var BRepToolsReShape; theV: TopoDS_Vertex;
                theTol: float = -1.0): TopoDS_Vertex {.importcpp: "CopyVertex",
    header: "BRepTools_ReShape.hxx".}
proc copyVertex*(this: var BRepToolsReShape; theV: TopoDS_Vertex; theNewPos: Pnt;
                aTol: float): TopoDS_Vertex {.importcpp: "CopyVertex",
    header: "BRepTools_ReShape.hxx".}
proc isNewShape*(this: BRepToolsReShape; theShape: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "IsNewShape", header: "BRepTools_ReShape.hxx".}
proc history*(this: BRepToolsReShape): Handle[BRepToolsHistory] {.noSideEffect,
    importcpp: "History", header: "BRepTools_ReShape.hxx".}
type
  BRepToolsReShapebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepTools_ReShape::get_type_name(@)",
                            header: "BRepTools_ReShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepTools_ReShape::get_type_descriptor(@)",
    header: "BRepTools_ReShape.hxx".}
proc dynamicType*(this: BRepToolsReShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepTools_ReShape.hxx".}
