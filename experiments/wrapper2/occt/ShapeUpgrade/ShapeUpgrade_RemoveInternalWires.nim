##  Created on: 2006-08-10
##  Created by: Galina KULIKOVA
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_SequenceOfShape, ../Standard/Standard_Integer,
  ShapeUpgrade_Tool, ../ShapeExtend/ShapeExtend_Status

##  resolve name collisions with X11 headers

when defined(Status):
  discard
discard "forward decl of ShapeUpgrade_RemoveInternalWires"
discard "forward decl of ShapeUpgrade_RemoveInternalWires"
type
  Handle_ShapeUpgrade_RemoveInternalWires* = handle[
      ShapeUpgrade_RemoveInternalWires]

## ! Removes all internal wires having area less than specified min area

type
  ShapeUpgrade_RemoveInternalWires* {.importcpp: "ShapeUpgrade_RemoveInternalWires", header: "ShapeUpgrade_RemoveInternalWires.hxx",
                                     bycopy.} = object of ShapeUpgrade_Tool ## ! Creates empty
                                                                       ## constructor.
                                                                       ## ! Clear all sequences and temporary map;
                                                                       ## ! Removes internal wires having area of contour less than specified MinArea


proc constructShapeUpgrade_RemoveInternalWires*(): ShapeUpgrade_RemoveInternalWires {.
    constructor, importcpp: "ShapeUpgrade_RemoveInternalWires(@)",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc constructShapeUpgrade_RemoveInternalWires*(theShape: TopoDS_Shape): ShapeUpgrade_RemoveInternalWires {.
    constructor, importcpp: "ShapeUpgrade_RemoveInternalWires(@)",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc Init*(this: var ShapeUpgrade_RemoveInternalWires; theShape: TopoDS_Shape) {.
    importcpp: "Init", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc Perform*(this: var ShapeUpgrade_RemoveInternalWires): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc Perform*(this: var ShapeUpgrade_RemoveInternalWires;
             theSeqShapes: TopTools_SequenceOfShape): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc GetResult*(this: ShapeUpgrade_RemoveInternalWires): TopoDS_Shape {.
    noSideEffect, importcpp: "GetResult",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc MinArea*(this: var ShapeUpgrade_RemoveInternalWires): var Standard_Real {.
    importcpp: "MinArea", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc RemoveFaceMode*(this: var ShapeUpgrade_RemoveInternalWires): var Standard_Boolean {.
    importcpp: "RemoveFaceMode", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc RemovedFaces*(this: ShapeUpgrade_RemoveInternalWires): TopTools_SequenceOfShape {.
    noSideEffect, importcpp: "RemovedFaces",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc RemovedWires*(this: ShapeUpgrade_RemoveInternalWires): TopTools_SequenceOfShape {.
    noSideEffect, importcpp: "RemovedWires",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc Status*(this: ShapeUpgrade_RemoveInternalWires; theStatus: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
type
  ShapeUpgrade_RemoveInternalWiresbase_type* = ShapeUpgrade_Tool

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_RemoveInternalWires::get_type_name(@)",
                              header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_RemoveInternalWires::get_type_descriptor(@)",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc DynamicType*(this: ShapeUpgrade_RemoveInternalWires): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}