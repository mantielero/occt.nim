##  Created on: 1993-03-05
##  Created by: Didier PIFFAULT
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

discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_MultiplyDefined"
discard "forward decl of Bnd_Box2d"
type
  BndBoundSortBox2d* {.importcpp: "Bnd_BoundSortBox2d",
                      header: "Bnd_BoundSortBox2d.hxx", bycopy.} = object ## ! Constructs an empty comparison algorithm for 2D bounding boxes.
                                                                     ## ! The bounding boxes are then defined using the Initialize function.
                                                                     ## ! Prepares
                                                                     ## BoundSortBox2d and sorts the rectangles of
                                                                     ## ! <SetOfBox> .


proc constructBndBoundSortBox2d*(): BndBoundSortBox2d {.constructor,
    importcpp: "Bnd_BoundSortBox2d(@)", header: "Bnd_BoundSortBox2d.hxx".}
proc initialize*(this: var BndBoundSortBox2d; completeBox: BndBox2d;
                setOfBox: Handle[BndHArray1OfBox2d]) {.importcpp: "Initialize",
    header: "Bnd_BoundSortBox2d.hxx".}
proc initialize*(this: var BndBoundSortBox2d; setOfBox: Handle[BndHArray1OfBox2d]) {.
    importcpp: "Initialize", header: "Bnd_BoundSortBox2d.hxx".}
proc initialize*(this: var BndBoundSortBox2d; completeBox: BndBox2d;
                nbComponents: cint) {.importcpp: "Initialize",
                                    header: "Bnd_BoundSortBox2d.hxx".}
proc add*(this: var BndBoundSortBox2d; theBox: BndBox2d; boxIndex: cint) {.
    importcpp: "Add", header: "Bnd_BoundSortBox2d.hxx".}
proc compare*(this: var BndBoundSortBox2d; theBox: BndBox2d): TColStdListOfInteger {.
    importcpp: "Compare", header: "Bnd_BoundSortBox2d.hxx".}
proc dump*(this: BndBoundSortBox2d) {.noSideEffect, importcpp: "Dump",
                                   header: "Bnd_BoundSortBox2d.hxx".}

























