##  Created on: 1993-06-08
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  BRepSweepIterator* {.importcpp: "BRepSweep_Iterator",
                      header: "BRepSweep_Iterator.hxx", bycopy.} = object


proc `new`*(this: var BRepSweepIterator; theSize: csize_t): pointer {.
    importcpp: "BRepSweep_Iterator::operator new",
    header: "BRepSweep_Iterator.hxx".}
proc `delete`*(this: var BRepSweepIterator; theAddress: pointer) {.
    importcpp: "BRepSweep_Iterator::operator delete",
    header: "BRepSweep_Iterator.hxx".}
proc `new[]`*(this: var BRepSweepIterator; theSize: csize_t): pointer {.
    importcpp: "BRepSweep_Iterator::operator new[]",
    header: "BRepSweep_Iterator.hxx".}
proc `delete[]`*(this: var BRepSweepIterator; theAddress: pointer) {.
    importcpp: "BRepSweep_Iterator::operator delete[]",
    header: "BRepSweep_Iterator.hxx".}
proc `new`*(this: var BRepSweepIterator; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepSweep_Iterator::operator new",
    header: "BRepSweep_Iterator.hxx".}
proc `delete`*(this: var BRepSweepIterator; a2: pointer; a3: pointer) {.
    importcpp: "BRepSweep_Iterator::operator delete",
    header: "BRepSweep_Iterator.hxx".}
proc constructBRepSweepIterator*(): BRepSweepIterator {.constructor,
    importcpp: "BRepSweep_Iterator(@)", header: "BRepSweep_Iterator.hxx".}
proc init*(this: var BRepSweepIterator; aShape: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepSweep_Iterator.hxx".}
proc more*(this: BRepSweepIterator): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "BRepSweep_Iterator.hxx".}
proc next*(this: var BRepSweepIterator) {.importcpp: "Next",
                                      header: "BRepSweep_Iterator.hxx".}
proc value*(this: BRepSweepIterator): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "BRepSweep_Iterator.hxx".}
proc orientation*(this: BRepSweepIterator): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "BRepSweep_Iterator.hxx".}