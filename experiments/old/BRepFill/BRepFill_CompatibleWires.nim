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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Edge"
type
  BRepFillCompatibleWires* {.importcpp: "BRepFill_CompatibleWires",
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


proc `new`*(this: var BRepFillCompatibleWires; theSize: csize_t): pointer {.
    importcpp: "BRepFill_CompatibleWires::operator new",
    header: "BRepFill_CompatibleWires.hxx".}
proc `delete`*(this: var BRepFillCompatibleWires; theAddress: pointer) {.
    importcpp: "BRepFill_CompatibleWires::operator delete",
    header: "BRepFill_CompatibleWires.hxx".}
proc `new[]`*(this: var BRepFillCompatibleWires; theSize: csize_t): pointer {.
    importcpp: "BRepFill_CompatibleWires::operator new[]",
    header: "BRepFill_CompatibleWires.hxx".}
proc `delete[]`*(this: var BRepFillCompatibleWires; theAddress: pointer) {.
    importcpp: "BRepFill_CompatibleWires::operator delete[]",
    header: "BRepFill_CompatibleWires.hxx".}
proc `new`*(this: var BRepFillCompatibleWires; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFill_CompatibleWires::operator new",
    header: "BRepFill_CompatibleWires.hxx".}
proc `delete`*(this: var BRepFillCompatibleWires; a2: pointer; a3: pointer) {.
    importcpp: "BRepFill_CompatibleWires::operator delete",
    header: "BRepFill_CompatibleWires.hxx".}
proc constructBRepFillCompatibleWires*(): BRepFillCompatibleWires {.constructor,
    importcpp: "BRepFill_CompatibleWires(@)",
    header: "BRepFill_CompatibleWires.hxx".}
proc constructBRepFillCompatibleWires*(sections: TopToolsSequenceOfShape): BRepFillCompatibleWires {.
    constructor, importcpp: "BRepFill_CompatibleWires(@)",
    header: "BRepFill_CompatibleWires.hxx".}
proc init*(this: var BRepFillCompatibleWires; sections: TopToolsSequenceOfShape) {.
    importcpp: "Init", header: "BRepFill_CompatibleWires.hxx".}
proc setPercent*(this: var BRepFillCompatibleWires; percent: StandardReal = 0.01) {.
    importcpp: "SetPercent", header: "BRepFill_CompatibleWires.hxx".}
proc perform*(this: var BRepFillCompatibleWires;
             withRotation: StandardBoolean = true) {.importcpp: "Perform",
    header: "BRepFill_CompatibleWires.hxx".}
proc isDone*(this: BRepFillCompatibleWires): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_CompatibleWires.hxx".}
proc shape*(this: BRepFillCompatibleWires): TopToolsSequenceOfShape {.noSideEffect,
    importcpp: "Shape", header: "BRepFill_CompatibleWires.hxx".}
proc generatedShapes*(this: BRepFillCompatibleWires; subSection: TopoDS_Edge): TopToolsListOfShape {.
    noSideEffect, importcpp: "GeneratedShapes",
    header: "BRepFill_CompatibleWires.hxx".}
proc generated*(this: BRepFillCompatibleWires): TopToolsDataMapOfShapeListOfShape {.
    noSideEffect, importcpp: "Generated", header: "BRepFill_CompatibleWires.hxx".}
proc isDegeneratedFirstSection*(this: BRepFillCompatibleWires): StandardBoolean {.
    noSideEffect, importcpp: "IsDegeneratedFirstSection",
    header: "BRepFill_CompatibleWires.hxx".}
proc isDegeneratedLastSection*(this: BRepFillCompatibleWires): StandardBoolean {.
    noSideEffect, importcpp: "IsDegeneratedLastSection",
    header: "BRepFill_CompatibleWires.hxx".}