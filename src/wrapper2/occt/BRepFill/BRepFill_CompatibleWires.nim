##  Created on: 1998-07-02
##  Created by: Joelle CHAUVET
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_SequenceOfShape,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Edge"
type
  BRepFill_CompatibleWires* {.importcpp: "BRepFill_CompatibleWires",
                             header: "BRepFill_CompatibleWires.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Insert
                                                                                  ## cutting
                                                                                  ## points
                                                                                  ## on
                                                                                  ## closed
                                                                                  ## wires
                                                                                  ## to
                                                                                  ## have
                                                                                  ## same
                                                                                  ##
                                                                                  ## !
                                                                                  ## number
                                                                                  ## of
                                                                                  ## edges.
                                                                                  ## The
                                                                                  ## sequence
                                                                                  ## of
                                                                                  ## shapes
                                                                                  ## must
                                                                                  ##
                                                                                  ## !
                                                                                  ## be
                                                                                  ## a
                                                                                  ## sequence
                                                                                  ## of
                                                                                  ## wires.


proc constructBRepFill_CompatibleWires*(): BRepFill_CompatibleWires {.constructor,
    importcpp: "BRepFill_CompatibleWires(@)",
    header: "BRepFill_CompatibleWires.hxx".}
proc constructBRepFill_CompatibleWires*(Sections: TopTools_SequenceOfShape): BRepFill_CompatibleWires {.
    constructor, importcpp: "BRepFill_CompatibleWires(@)",
    header: "BRepFill_CompatibleWires.hxx".}
proc Init*(this: var BRepFill_CompatibleWires; Sections: TopTools_SequenceOfShape) {.
    importcpp: "Init", header: "BRepFill_CompatibleWires.hxx".}
proc SetPercent*(this: var BRepFill_CompatibleWires; percent: Standard_Real = 0.01) {.
    importcpp: "SetPercent", header: "BRepFill_CompatibleWires.hxx".}
proc Perform*(this: var BRepFill_CompatibleWires;
             WithRotation: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "BRepFill_CompatibleWires.hxx".}
proc IsDone*(this: BRepFill_CompatibleWires): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_CompatibleWires.hxx".}
proc Shape*(this: BRepFill_CompatibleWires): TopTools_SequenceOfShape {.
    noSideEffect, importcpp: "Shape", header: "BRepFill_CompatibleWires.hxx".}
proc GeneratedShapes*(this: BRepFill_CompatibleWires; SubSection: TopoDS_Edge): TopTools_ListOfShape {.
    noSideEffect, importcpp: "GeneratedShapes",
    header: "BRepFill_CompatibleWires.hxx".}
proc Generated*(this: BRepFill_CompatibleWires): TopTools_DataMapOfShapeListOfShape {.
    noSideEffect, importcpp: "Generated", header: "BRepFill_CompatibleWires.hxx".}
proc IsDegeneratedFirstSection*(this: BRepFill_CompatibleWires): Standard_Boolean {.
    noSideEffect, importcpp: "IsDegeneratedFirstSection",
    header: "BRepFill_CompatibleWires.hxx".}
proc IsDegeneratedLastSection*(this: BRepFill_CompatibleWires): Standard_Boolean {.
    noSideEffect, importcpp: "IsDegeneratedLastSection",
    header: "BRepFill_CompatibleWires.hxx".}